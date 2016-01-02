# led-simulator

I ordered [these](https://www.adafruit.com/products/306) led lights because I wanted to put them under my counter.
Here's my current plan:
* **Arduino** - to control the LED light colors
  * **Ethernet shield** - Because I want to be able to control the light pattern from afar
* A web app that will let you create patterns and preview the light show
* A webservice that sits in front of the arduino and talks directly to the arduino






### Web Service
The service will need to expose the following apis (wrap the functions provided by
[this library](https://github.com/adafruit/LPD8806)):

* void setPixelColor(int pixel, uint8_t red, uint8_t green, uint8_t blue)
* void setPixelColor(int pixel, uint32_t color)
* void show() - updates the LED strip
* void updateLength(int length) - the number of LEDs
* uint32_t getPixelColor(int pixel)
* int getNumPixels() - returns the length of the LED strip


### web app
The web app will be used to simulate the led strip and let someone easily update the LED strip
