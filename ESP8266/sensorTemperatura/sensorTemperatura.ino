#include <DHT.h>
#include <DHT_U.h>

#include <ESP8266WiFi.h>

#define DHTPIN D1
#define DHTTYPE DHT11

const char* ssid = "moche"; //nombre de wifi
const char* password = "97788122";
const char* host = "gorgojo232.000webhostapp.com";

DHT dht(DHTPIN, DHTTYPE); // inicializamos objeto de sensor de temperatura

void setup() {
  Serial.begin(115200);
  delay(100);
  dht.begin(); // iniciamos objeto

  ///////////// conectando WiFi (inicio)///////////////////
  Serial.println();
  Serial.println();
  Serial.println("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);
  
  while(WiFi.status() != WL_CONNECTED){ // Mientras no este conectado no salir del while
    delay(500);
    Serial.println(".");
  }
  ///////////// conectando WiFi (fin)///////////////////

  ///////////// Mostrar datos de WiFi (inicio) /////////////
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP adress: ");
  Serial.println(WiFi.localIP());
  Serial.print("Netmask: ");
  Serial.println(WiFi.subnetMask());
  Serial.print("Gateway: ");
  Serial.println(WiFi.gatewayIP());
  ///////////// Mostrar datos de WiFi (fin) ////////////////

}

void loop() {
  /////////// leer temperatura (inicio) //////////////////
  float h = dht.readHumidity();
  float t = dht.readTemperature();
  if(isnan(h) || isnan(t)){
    Serial.println("Fallo al leer desde DHT");
    return;
  }
  /////////// leer temperatura (fin) //////////////////

  /////////// conexion a Api Rest (inicio)////////////////////
  Serial.print("connecting to ");
  Serial.println(host);

  WiFiClient client;
  const int httpPort = 80;
  if(!client.connect(host, httpPort)){
    Serial.println("conexion fallo");
    return;
  }
  /////////// conexion a Api Rest (fin)////////////////////

  ////////// enviar dato a Api Rest (inicio)////////////////////
  String url = "/api_v2/weather/insert.php?temp=" + String(t) + "&hum="+ String(h);
  Serial.print("Requesting URL: ");
  Serial.println(url);

  client.print(String("GET ") + url + " HTTP/1.1\r\n" +
               "Host: " + host + "\r\n" + 
               "Connection: close\r\n\r\n"); // GET request
  delay(500);

  while(client.available()){
    String line = client.readStringUntil('\n'); // Obtener respuesta
    Serial.print(line);
  }

  Serial.println();
  Serial.println("Cerrando conexion");
  delay(3000); // esperar 30 segundos
  ////////// enviar dato a Api Rest (fin)////////////////////
}
