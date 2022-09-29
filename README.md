https://www.youtube.com/watch?v=z-katBlGzrI# AgroLoRa

<img src="https://i.ibb.co/h1XmwsY/agrolora.png" width="400">

Sustainable platform of sensing and irrigation automation based around the SenseCAP K1100 with predictive analysis via the Helium Network.

# Watch our demo video:

[![Demo](https://i.ibb.co/j3DCtPZ/image.png)](https://www.youtube.com/watch?v=z-katBlGzrI)

# Test the product:

## URL: https://main.d1xaout2n54w4m.amplifyapp.com/

# Materials:

## Hardware:

- SenseCAP K1100 - The Sensor Prototype Kit with LoRa® and AI - [Product Link](https://www.seeedstudio.com/Seeed-Studio-LoRaWAN-Dev-Kit-p-5370.html)
- Wio-E5 mini (STM32WLE5JC) - [Product Link](https://www.seeedstudio.com/LoRa-E5-mini-STM32WLE5JC-p-4869.html)
- ST-LINK/V2 Programmer - [Product Link](https://www.st.com/en/development-tools/st-link-v2.html)
- ESP32 - [Product Link](https://www.adafruit.com/product/3405)
- Capacitive Soil Moisture Sensor - [Product Link](https://www.amazon.com/Gikfun-Capacitive-Corrosion-Resistant-Detection/dp/B07H3P1NRM)
- DHT22 - [Product Link](https://www.amazon.com/HiLetgo-Digital-Temperature-Humidity-Replace/dp/B01DA3C452)

### Optional:

- Helium Hotspot (LoRaWAN) - [Product Link](https://www.seeedstudio.com/SenseCAP-M1-LoRaWAN-Indoor-Gateway-US915-p-5023.html)
- Fiberglass Antenna - [Product Link](https://www.seeedstudio.com/RF-Explorer-LoRa-Fiberglass-Antenna-Kit-902-930MHz-5-8dBi-800mm-p-5275.html)
- LiPo Rider Pro - [Product Link](https://www.seeedstudio.com/LiPo-Rider-Pro.html?queryID=d0095ea6028d15c88f3e8c41c3788caf&objectID=2249&indexName=bazaar_retailer_products)
- Solar Panel - [Product Link](https://www.seeedstudio.com/3W-Solar-Panel-138X160.html?queryID=4a70c7caa457d8904b7139b0bb0b0d14&objectID=1679&indexName=bazaar_retailer_products)
- Particle Photon - [Product Link](https://www.seeedstudio.com/Particle-Photon-SMALL-AND-POWERFUL-WI-FI-CONNECTED-MICROCONTROLLER-p-2527.html?queryID=1e9a1ac5b738fe6bc6429891181c1a6a&objectID=617&indexName=bazaar_retailer_products)
- 1N4007 - [Product Link](https://www.newark.com/w/search?st=18C8923&COM=ref_hackster&CMP=Hackster-NA-project-1c5452-Sep-22)
- Li-Ion Battery 1000mAh - [Product Link](https://www.newark.com/adafruit/258/1200mah-3-7v-li-poly-battery-with/dp/96Y0775?COM=ref_hackster)
- Resistor 2.21k ohm - [Product Link](https://www.newark.com/vishay/cmf502k2100fheb/metal-film-resistor-2-21kohm-250mw/dp/26R4020?COM=ref_hackster&CMP=Hackster-NA-project-1c5452-Sep-22)
- Resistor 4.75k ohm - [Product Link](https://www.newark.com/multicomp/mcmf0w4ff4751a50/metal-film-resistor-4-75kohm-250mw/dp/58K3862?COM=ref_hackster&CMP=Hackster-NA-project-1c5452-Sep-22)
- Resistor 1k ohm - [Product Link](https://www.newark.com/multicomp/mccfr0w4j0102a50/carbon-film-resistor-1kohm-250mw/dp/58K5001?COM=ref_hackster&CMP=Hackster-NA-project-1c5452-Sep-22)
- Solenoid Valve - [Product Link](https://www.newark.com/gems-sensors/mb202-vb30-l203/solenoid-valve/dp/45M6131?COM=ref_hackster&CMP=Hackster-NA-project-1c5452-Sep-22)

## Software:

- Arduino IDE - [Program Link](https://www.arduino.cc/en/software)
- STM32CubeIDE - [Library Link](https://www.st.com/en/development-tools/stm32cubeide.html)
- NodeJS - [Program Link](https://nodejs.org/en/)

## Cloud Services:

- IoT Core - [Service Link](https://aws.amazon.com/iot-core/)
- Amplify - [Service Link](https://aws.amazon.com/amplify/)
- Helium Account - [Service Link](https://console.helium.com/)

# Story: 

This will be the third iteration of two past projects;

The first one was Agrofox: https://www.hackster.io/107329/aggrofox-large-scale-and-urban-agriculture-iot-solution-8155fe

The second one is AgroHelium: https://www.hackster.io/Edoliver/agrohelium-urban-agriculture-aiot-solution-d8fbf4

We are also borrowing a lot from this one from Seeed:

https://youtu.be/NQt-XLcSIwA?list=PLpH_4mf13-A0MzOdPNITVfoVBMvf7Rg9g

Our intention this time is to get as close as possible to a functional prototype (the step before Mass-manufacturing), of course, with several upgrades along the way!

# Introduction:

In recent years Urban agriculture has made its mark in popular culture as an alternative to industrial farming. It offers several benefits and also helps to solve some of the most nefarious problems that we will have going forward regarding food supply, the growing population and the new trends favoring organic, naturally grown food. Despite all that it has been faced with a plethora of problems including its access to water, pollution concerns, and high maintenance costs. In addition to those most farming methods are very empirical in nature and it has been just a few years since the Internet of Things and other Industry 4.0 technologies have reached Agriculture. And among most of those, its degree of adoption is quite lackluster. Urban agriculture needs a cheap and readily available solution, for it to be sustainable.

Business Insider Singapore.

<img src="https://hackster.imgix.net/uploads/attachments/1500556/image_oICGQlCDSx.png?auto=compress%2Cformat&w=740&h=555&fit=max">

KImbal Musk (Elon's brother) is hyped about this.

<img src="https://hackster.imgix.net/uploads/attachments/1500557/image_v5DrlEKpJ6.png?auto=compress%2Cformat&w=740&h=555&fit=max">

# Problem:

IF we want to have the most impact with a project regarding sustainability, namely Water sustainability we have to focus on the industry that requires more of it, which is Agriculture.

<img src="https://hackster.imgix.net/uploads/attachments/1500558/image_qB4BGn0rdQ.png?auto=compress%2Cformat&w=740&h=555&fit=max">

And regarding that the main problem in agriculture is actually Water. Most countries have their periods of drought, but as years become even hotter because of climate change, drought greatly affects several regions. California is an example of this:

<img src="https://hackster.imgix.net/uploads/attachments/1500559/image_RQUnWDCS3m.png?auto=compress%2Cformat&w=740&h=555&fit=max">

So we get into a $42 Billion USD problem adding all the parameters. Industry 4.0 tools and automation are greatly needed to attack this.

**Here comes a new challenger!**

After COVID-19 hit most industries were shown a loss in revenue of almost 30%. The pandemic is impacting global food systems, disrupting regional agricultural value chains, and posing risks to household food security.

International Labour Organization.

<img src="https://hackster.imgix.net/uploads/attachments/1500560/image_hC6JGmMwOc.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Now we have to take much more seriously the fact that Urban Agriculture can provide us a "cushion" during all this problematic time.

**Now, my personal problem**

This is a photo of one of the Tomato fruits I have in my backyard which I cannot continuously check. Sometimes I am away or very busy, and I tend to neglect its care. Another thing is regarding collecting fruit at the proper moments because they may become uneatable at some point. The problem regarding water can be taken care of if I automate irrigation and some more things.

<img src="https://hackster.imgix.net/uploads/attachments/1500561/image_0fIBbF3HgW.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

# Solution:

Our solution to the problem will be to create a sustainable platform of sensing and irrigation automation with predictive analysis via the SenseCAP K1100 - The Sensor Prototype Kit with LoRa® and AI instead of relying entirely on cloud and we will be connecting everything through the Helium Network. With one objective in mind: SAVE WATER.

1. Using temperature with humidity, soil moisture and soil temperature sensors, we will obtain sensor data. LoRa technology has been chosen because the characteristics of long range and low power are excellent for remote areas and cities alike.

Then using the Openweathermap API and Node-RED we will create a Dashboard and notification capabilities.

2. We will connect to our nearest Lora Gateway via the Helium network and send sensor data to AWS.

3. Once we have the data at AWS, we will then send it to a web application hosted on a Virtual machine or locally. We made it possible to develop almost any application with the obtained data. Examples of these applications:

Generate databases of our crops and their conditions.
Do data analysis to obtain predictive models in the long term.
Water automation systems with the data obtained (as we will do in this project).
Crop yield analysis.
3.1- We then will make a Dashboard with the data obtained for the complete and simple visualization of the data. For the application, we will perform data crossing with the OpenWeatherMap API, to perform the control of an electrovalve connected to another microcontroller. The data crossing obtained is used to check if that day is going to rain, and thus not use irrigation water in crops. Also if the system detects that water is needed, in the field by the humidity sensors, the irrigation system is turned on. In turn once a day an email will be sent to the farmer with the general information of his field or he can check anytime on his dashboard. Also everytime the irrigation system is online, a notification will be sent.

# Connection Diagram:

## Hardware Diagram:

### Lora E5 Mini:

<img src="https://i.ibb.co/2YRM86T/Untitled-Sketch-bb.png">

## System Diagram:

<img src="https://i.ibb.co/rF88mY1/scheme-drawio.png">

# Why Helium Network:

One huge emphasis of this project is for it to also be used in Urban Agriculture and LoRa is the best choice for that one as we live in one of the biggest cities in the world (Mexico). And Sigfox which is perhaps your biggest competitor was found to be unreliable.

In the past (when we developed the past version of this project) we had no Helium Network in the country (BTW we put up the FIRST hotspot in the country, see image below). Nowadays it almost ubiqutuous in almost any urban setting around the world and seeing its growth has been incredible. We might take the next step now and even commerciallize a product.

And regarding scalability, LoRa is one of the best and easier networks to work it demanding low power and also performing as good as the components in your dvices and gateway are, for this application we can envision a manufacturing run of devices similar to this in every Urban Agriculture setting.

# Helium Account and Credentials.

Before starting to configure the services, platform and integrations. First we need to create our Helium account and then create a device.

<img src="https://i.ibb.co/mvxQH4f/image-2.png">

In the devices menu you will have to create a new device.

<img src="https://i.ibb.co/thn3wyh/image-4.png">

Immediately the platform will give us the 3 necessary credentials for our device to send data to Helium.

<img src="https://i.ibb.co/44hzpYv/image-5.png">

Now if we can move on to making our devices, lets go to Assemble the kit, circuits and connect the sensors:

# Valve Module:

Once the main circuit is completed, make the automated irrigation valve.

Bill of Materials:

- Photon Particle (or any other Wifi board).
- TIP120
- 12v Source.
- Solenoid Valve Nc 1/2.
- Diode 1N4007.
- 1 Resistances of 2.2kohm.
- Cable, Solder, Jump wire or similar.

<img src="https://hackster.imgix.net/uploads/attachments/1500563/image_juDNu9zjJb.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Real implementation:

<img src="https://hackster.imgix.net/uploads/attachments/1500564/image_U7Vx9z89Ko.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Refrain from uploading both the Photo code at this moment, because we will need certain credentials.

# Sensor and Screen via the SenseCAP K1100:

Take out your Wio terminal from its box and follow these instructions to setup Arduino IDE as we will be using that to set up everything:

https://wiki.seeedstudio.com/Wio-Terminal-Getting-Started/

Among all those inctructions these two next steps are CRITICAL:

- Open your Arduino IDE, click on File > Preferences, and copy below url to Additional Boards Manager URLs:

        https://files.seeedstudio.com/arduino/package_seeeduino_boards_index.json

    <img src="https://hackster.imgix.net/uploads/attachments/1502981/Boardurl.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- Click on Tools > Board > Board Manager and Search Wio Terminal in the Boards Manager.

    <img src="https://hackster.imgix.net/uploads/attachments/1502982/image_URx5MS0ZJN.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- By the way, just type Seeed Boards or Seeed SAMD Boards.

    <img src="https://hackster.imgix.net/uploads/attachments/1502985/image_PTgPiZbriU.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- Select WIO terminal and turn it on.

    <img src="https://hackster.imgix.net/uploads/attachments/1502987/image_dpwOQmQPHY.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- And select the port:

    <img src="https://hackster.imgix.net/uploads/attachments/1502988/image_oR8aGIqTNX.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Now you are setup you can download any program to it and follow through with all the libraries it has!

- Assembling the Sensors and LoRa channels:

Basically just take everything out of the box and then just plug it like so:

<img src="https://i.ibb.co/G0sthMW/image-0-F2n9bbe-DI.png">
<img src="https://i.ibb.co/yYTHRFD/image-7p-Cb-Z1zc4-F.png">

Notice the DHT11 conected to 5V. GND and A2.

**The Soil Moisture Sensor HAS to be conected there as A0 is there.**

The things we must do are three in essence:

- Read the Sensors
- Connect to our LoRa Helium Gateway
- Show sensor data on the Wio Terminal

Before proceeding we will need some libraries

The DHT11 library for our extra sensor:

<img src="https://hackster.imgix.net/uploads/attachments/1502995/image_EuQbTyNAvF.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

For the other two we do not need libraries per se.

Check and read this documentation on the LoRa Grove e5 module a bit and to connect to the Helium Network

https://wiki.seeedstudio.com/Connecting-to-Helium/

# Lora E5 mini Setup:

As part of this project, it was decided to add another type of LoRa board from the WIO family to show that among all of them and according to the needs, it is possible to create an ecosystem of sensors.

CODE: https://github.com/EddOliver/AgroLoRa/tree/main/FreeRTOS_LoRaWAN_AT

https://wiki.seeedstudio.com/LoRa_E5_mini/

<img src="https://i.ibb.co/XXCZFfF/image.png">

First of all, this board is part of the family of STM32 chips, it requires the ST-LINK/V2 Programmer, luckily this type of programmers are already embedded in many other boards and it is possible to use them to program them, in our case we already had a board B-L072Z-LRWAN which already has the ST-LINK/V2 Programmer integrated.

<img src="https://i.ibb.co/4Mkvh7L/image.png">

To program our board we have to connect the programming pins as follows.

<img src="https://i.ibb.co/ScZZzZy/Untitled-Sketch.png">

This board can be programmed through Arduino IDE and STM32CubeIDE, in our case since SeeedStudio provides us with an example of how to configure LoRa credentials from STM32CubeIDE, we decided that it would be better to use ST's own software.

<img src="https://i.ibb.co/FndpCJC/image.png">

The credentials that we obtained in [Helium Account and Credentials](#helium-account-and-credentials) are going to be configured in the file

https://github.com/EddOliver/AgroLoRa/blob/main/FreeRTOS_LoRaWAN_AT/LoRaWAN/App/se-identity.h

<img src="https://i.ibb.co/zbW5kmR/image.png">

Once this is done, we will only have to build the project and program it on our board.

<img src="https://i.ibb.co/pyrmd1x/image.png">

If all the previous process is well done, we can check on a serial monitor that the board responds to AT commands.

<img src="https://i.ibb.co/HBrn9ps/image.png">

Since we have our board working as a LoRa node, we can send data through it from any MCU through serial communication, in our case we use an ESP32 which will be in charge of reading the data from the sensors and sending them through the board to LoRa.

Code: https://github.com/EddOliver/AgroLoRa/tree/main/AgroLoRaESP

# Helium Console

All the data at this moment should already be arriving at the Helium console.

<img src="https://i.ibb.co/48WqNMW/image.png">

The data that we receive in helium will always be encoded in base64, so already in our dashboard we will have to perform some algorithm to transform it back into the original data.

<img src="https://i.ibb.co/GCF3rtY/image-6.png">

# Helium - AWS IoT Integration:

Since the messages arrive without problem to the network and Helium, we must integrate AWS IoT, for this we must go to the Integrations section and select AWS IoT Core.

<img src="https://i.ibb.co/t4bh1Qm/integration.png">

We will see that the credentials requested are IAM credentials to be able to perform operations in AWS without problem, for this and for security we must create an IAM credential which only has access to AWS IoT services.

## AWS IAM Creation:

We will create a user which should have programmatic access.

<img src="https://i.ibb.co/fX7HgLL/iam1.png">

We will add the policy to be able to perform actions in AWS IoT.

<img src="https://i.ibb.co/RpmgW1f/iam2.png">

Finally we will create the user.

<img src="https://i.ibb.co/P9q82Wt/iam3.png">

Lastly he will give us the credentials that we use for the Helium console.

<img src="https://i.ibb.co/jGJCpXv/iam4.png">

The configuration that I used in my console was the following.

<img src="https://i.ibb.co/V94phLW/awshelium.png">

Performing a system test.

<img src="https://i.ibb.co/9gv6Wy9/ezgif-com-gif-maker.gif">

# Dashboard:

For our dashboard we made a simple web page with ReactJS, we decided that the green color was the most representative of a sustainability challenge.

For the graphics page, we made a crop selector, where we can see the real-time data of each crop, the data in the graphics is sent directly from Helium, in our integration with AWS.

<img src="https://i.ibb.co/Gt9mnXX/image.png">

We also added a page, where we will see the location of our devices, in order to better track the weather.

<img src="https://i.ibb.co/b3v3WNq/image.png">

Here is an example of how the data arrives from AWS IoT to our page.

<img src="https://i.ibb.co/k4crJ8h/image.png">

## AWS Amplify:

We are going to use the Amplify service to make the deployment of our application, but this requires having a repository where we have our code to be able to carry out the CI / CD process, we can use any of the following Git repository hosting services.

<img src="https://i.ibb.co/vkQdd2D/image.png">

However, to maintain a better organization of the apps deployed on AWS, we will use Github with Private Repository.

<img src="https://i.ibb.co/s5nsks7/Screenshot-2022-09-26-215831.png">

We select the repository that we create with our code.

<img src="https://i.ibb.co/TKvJQ44/Screenshot-2022-09-26-215917.png">

Since it is a deployment with ReactJS the Build settings are configured automatically.

<img src="https://i.ibb.co/Hx6B546/Screenshot-2022-09-26-215932.png">

Once we finish creating the WebApp, all the steps of the Ci / CD cycle should appear and if everything went well they should look like this.

<img src="https://i.ibb.co/fxrC5NR/image.png">

The result will be a link similar to this one.

WebApp: https://main.d1xaout2n54w4m.amplifyapp.com/

# Irrigation system via Openweathermap Forecast and Particle Photon.

We have to explain first the why's before the know how's.

The use of tracking the forecast of the weather is the main purpose of the project itself, that is to optimize water usage.

What use there is of having a sensor that tracks that the soil is dry and activate an irrigation system with that info, but it is going to rain that same day?

We can save a lot of water simply by using the weather forecast systems available to notify our platform that it is going to rain and stop from using water that day.

And of course we want to automate everything.

Without further ado:

- Get to: https://openweathermap.org/ and Sign up.

- After that then simply go to Sign In and click on API Keys, then copy the API KEY.
  
<img src="https://hackster.imgix.net/uploads/attachments/1500565/image_q9pmS0RNXX.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- Go then to your Node-RED flow. Remember the openweathermap node? Drag it to the Node-RED dashboard and configure it like so:

<img src="https://hackster.imgix.net/uploads/attachments/1500566/image_6oqOjXY5xZ.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

- Remember to paste an "Inject" node before, a "function" node after and also a "debug" node if you wish to check what has been transfered.

<img src="https://hackster.imgix.net/uploads/attachments/1500567/image_i4p0qgPQhI.png?auto=compress%2Cformat&w=740&h=555&fit=max">

- Double click the function node and paste the following code:

        msg.payload= msg.payload[0].weather[0].main
        msg.count = msg.payload
        return msg;

What this does, is to seek the weather condition that we desire which is "Rain" and it puts it into the payload of the flow.

You can also grab a Text Dashboard node and connect it to this flow to get this info to the dashboard.

- Go to your particle IDE and paste the code for the Photon.

The main point of the code is understanding that it creates a function that can be accessed via the particle cloud. Whenever you input certain conditions to that functions externally you can do some previous programmed actions.

Flash it and go back to Node-RED. If you need aditional help with the Photon go directly to www.particle.io/start for a great place to begin.

- Now in Node-RED make a flow like so:

<img src="https://hackster.imgix.net/uploads/attachments/1500568/image_jRkLl6sX72.png?auto=compress%2Cformat&w=740&h=555&fit=max">

The Particle node is indeed the function node.

- Double click on the Particle node and click on the pencil on "Add new particle cloud". Then fill it like so:

<img src="https://hackster.imgix.net/uploads/attachments/1500569/image_5ulsMmrQh8.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Your access token is in your particle IDE, Devices section and clicking on the current device you are using. Update and in the next screen fill it with your device name that you can get on the Particle IDE and also on "CLoud Function" input "led".

- Now your Particle Photon node is configured to get an "on" or "off" payload and do the appropriate action with it.

- To configure properly the email node you have to log in to your gmail account and then go to: http://myaccount.google.com/u/1/lesssecureapps and turn it on, if you followed this guide accordingly, you set a password and username to your Node-RED so this procedure should be safe.

Then just fill the required fields.

- The most important step:

Finally, you have reached the end of this part of the tutorial so you have an idea of how to do the main parts of the project. Next is to do your own and use the concepts to get to a final product like the one presented here. There is also the main Flow that we did but we strongly suggest the reader to cultivate their own so you can have a great information harvest.

If you still want to have a complete solution in the "code section" there is the Node Red flow used in the project, which you should load into the Jetson Nano or any other computer (hint: that includes cloud services).

# Going Green: Solar Power:

This device has to have a solar panel to reduce the cost of infrastructure.

We recommend that you use at least a 2.5W Solar panel (I tried on a 2W panel and failed, it got very low power and lifetime) in tandem with a LiPo Battery like in the following circuit:

<img src="https://hackster.imgix.net/uploads/attachments/1503105/image_SihYHRhzMZ.png?auto=compress%2Cformat&w=740&h=555&fit=max">

The power segment of the circuit is intended to power the circuit via a Solar Power during the day and then charge the LiPo battery so it can continue working at night.

For this purpose you can see the Regulator in the image that is a connection module that regulates the LiPo battery charge and the Solar Panel feeding energy to the system.

<img src="https://hackster.imgix.net/uploads/attachments/1500571/image_h5j8edt4nF.png?auto=compress%2Cformat&w=740&h=555&fit=max">

The Sigfox version of the project, the same can be done with the Sensecap Kit.

As previously stated I tried with my small 2W panel, but we are in the rainy season where I live so we need a bigger panel. I urge someone who already has the bigger panel to try it. For the Demo I will be using a Battery. BE very wary when trying this setup, I would go to battery just to be sure and by the way it will be an external one, because for it to work with the AA it may, you have to destroy a resistance.

Here are some reccomended links to these components:

Sunny Buddy: https://www.sparkfun.com/products/12885

Lipo Rider pro: https://www.seeedstudio.com/LiPo-Rider-Pro-p-992.html

Solar panel: https://www.seeedstudio.com/2-5W-Solar-Panel-116X160.html

LiPo Battery: https://www.adafruit.com/product/258

Now its time to upload the code into your dev board! (If you have already input your credentials properly beforehand, if not go to the next step). Get everything into their cases (3D CAD models provided).

**At this point we have the two "Things" of our AIoT solution that sense and actuate**

# Get Cases:

I took the time to make some NEW cases for the project and the result is quite good as you can see:

<img src="https://hackster.imgix.net/uploads/attachments/1502873/image_lpdyj7sbdr.png?auto=compress%2Cformat&w=740&h=555&fit=max">
<img src="https://hackster.imgix.net/uploads/attachments/1502882/image_g3E4IhPRJ1.png?auto=compress%2Cformat&w=740&h=555&fit=max">

Video:

[![Demo](https://i.ibb.co/j3DCtPZ/image.png)](https://www.youtube.com/watch?v=o-x40sDlnao)

# Final Product:

Here is the final version of the complementary sensor:

LoRa E5 Mini:

<img src="https://hackster.imgix.net/uploads/attachments/1503205/image_2hLtqRxLPi.png?auto=compress%2Cformat&w=740&h=555&fit=max"  height="400px">

<img src="https://hackster.imgix.net/uploads/attachments/1503099/image_oe3FOQt0G4.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

<img src="https://hackster.imgix.net/uploads/attachments/1503098/image_WbAMADC22x.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

Testing the Valve:

<img src="https://i.ibb.co/0VLXcQt/plug-and-play.gif"  height="400px">

Installing the Valve:

<img src="https://i.ibb.co/mH2GFhn/valve.gif"  height="400px">

This is the case with everything inside while testing:

<img src="https://hackster.imgix.net/uploads/attachments/1503169/image_hI5DIQOr0u.png?auto=compress%2Cformat&w=740&h=555&fit=max"  height="400px">
<img src="https://hackster.imgix.net/uploads/attachments/1503170/image_MNzRaH3swp.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">
<img src="https://hackster.imgix.net/uploads/attachments/1503171/image_nUeDjvKW36.png?auto=compress%2Cformat&w=740&h=555&fit=max" height="400px">

And this is the result with an external battery:

<img src="https://hackster.imgix.net/uploads/attachments/1503235/image_JjsDfEXumg.png?auto=compress%2Cformat&w=740&h=555&fit=max"  height="400px">

# EPIC DEMO:

[![Demo](https://i.ibb.co/j3DCtPZ/image.png)](https://www.youtube.com/watch?v=z-katBlGzrI)

# Benefits and Sustainability:

As long as we can push initiatives like this forward we can get:

1. Reduction in Carbon emmisions The average meal has traveled 4, 200 miles just to get to your table. Urban agriculture helps consumers reduce their “foodprint” by providing them the opportunity to purchase food that was grown within their community.

2. Creating Jobs These farms create opportunities to involve the community. Urban farms create jobs (and volunteer) opportunities in big cities, where poverty and hunger are often persistent issues.

3.- Stimulates your local economy which also builds the community around. An increase in small businesses stimulates local economy and supports the community by creating jobs right where people live.

4. Healthcare.- Bringing nutritious food to local communities has many direct health benefits, including reducing the risk of harmful conditions like heart disease, obesity, diabetes, and more.

5. Food quality.-These farms preserve biodiversity by cultivating heirloom varieties or those with lower shelf-stability. The proximity and connectedness to market allows for fresh, nutritious produce to become available to communities that have never had access to this in the past.

6. Green spaces: This contributes to the health of city ecosystems in a variety of ways. Greenery adds aesthetic appeal, reduces runoff from precipitation, provides restful spaces for the community, and counters the heat island effect by fixing carbon.

<img src="https://hackster.imgix.net/uploads/attachments/1500573/image_rQrzzfocGW.png?auto=compress%2Cformat&w=740&h=555&fit=max">

# Commentary and Future Rollout:

Sustainable disruption is needed because current methods are insufficient for the rising demand, infrastructure is costly and most fields are in remote areas. Also despite what it promises urban agriculture needs a cheap and readily available solution, for it to be sustainable. And COVID-19 just came to aggravate this situation even more.

The current project offers an initial solution to these problems by starting with one of my own, but it is not difficult to see how one of these can expand. This offers a cheap and affordable solution that can serve the local, home or urban farmer as it can automate several of their processes and most important of all provide valuable information about their crops that they can use to make good decisions.

Thinking about the future of the project, of course I still like Helium after all these years. And despite some of the controversies that have been coming up since last year, as a builder first I can see the potential of the biggest LoRa Network in the world and now with their 5G and Cellular side pivot. Regarding the [SenseCAP K1100 - The Sensor Protytype Kit with LoRa® and AI](https://www.seeedstudio.com/seeed-studio-lorawan-dev-kit-p-5370.html), I think it offers a great solution for builders, makers and even home growers and tinkerers alike. With it we were able to pass less time on the bench soldering and getting everything together and more time designing the product and on its presentation and concept. Not to mention that the Wio Terminal is excellent to give your product a much more refined touch and further possibilities of commercialization.

# References:

- https://developer.helium.com/
- https://www.freightfarms.com/blog/urban-farming-benefits
- https://www.theecologycenter.org/10-ways-urban-farms-benefit-the-community/
- https://www.vox.com/2016/5/15/11660304/urban-farming-benefitshttps://www.hackster.io/107329/aggrofox-large-scale-and-urban-agriculture-iot-solution-8155fe
- https://www.hackster.io/contests/iotinthewil
