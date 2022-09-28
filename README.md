# AgroLoRa

<img src="https://i.ibb.co/h1XmwsY/agrolora.png" width="400">

Sustainable platform of sensing and irrigation automation based around the SenseCAP K1100 with predictive analysis via the Helium Network.

# Materials:

## Hardware:

1. Wio Terminal: ATSAMD51 Core with Realtek RTL8720DN - [Product Link](https://www.seeedstudio.com/Wio-Terminal-p-4509.html)
2. Wio-E5 mini (STM32WLE5JC) - [Product Link](https://www.seeedstudio.com/LoRa-E5-mini-STM32WLE5JC-p-4869.html)
3. ST-LINK/V2 Programmer - [Product Link](https://www.st.com/en/development-tools/st-link-v2.html)
4. ESP32 - [Product Link](https://www.adafruit.com/product/3405)
5. Capacitive Soil Moisture Sensor - [Product Link](https://www.amazon.com/Gikfun-Capacitive-Corrosion-Resistant-Detection/dp/B07H3P1NRM)
6. DHT22 - [Product Link](https://www.amazon.com/HiLetgo-Digital-Temperature-Humidity-Replace/dp/B01DA3C452)

## Software:

1. Arduino IDE - [Program Link](https://www.arduino.cc/en/software)
2. STM32CubeIDE - [Library Link](https://www.st.com/en/development-tools/stm32cubeide.html)

## Cloud Services:

1. IoT Core - [Service Link](https://aws.amazon.com/iot-core/)
2. Amplify - [Service Link](https://aws.amazon.com/amplify/)
3. Helium Account - [Service Link](https://console.helium.com/)

# Connection Diagram:

## Hardware Diagram:

### Lora E5 Mini:

<img src="https://i.ibb.co/2YRM86T/Untitled-Sketch-bb.png">

## System Diagram:

<img src="https://i.ibb.co/rF88mY1/scheme-drawio.png">

# Helium Account and Credentials.

Before starting to configure the services, platform and integrations. First we need to create our Helium account and then create a device.

<img src="https://i.ibb.co/mvxQH4f/image-2.png">

In the devices menu you will have to create a new device.

<img src="https://i.ibb.co/thn3wyh/image-4.png">

Immediately the platform will give us the 3 necessary credentials for our device to send data to Helium.

<img src="https://i.ibb.co/44hzpYv/image-5.png">

Now if we can move on to making our devices.

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

# Final Product:

LoRa E5 Mini:
<img src="https://i.ibb.co/C83ghHq/20220927-112329.png">
<img src="https://i.ibb.co/jDBfByZ/20220927-111909.png">

Wio Terminal:

# EPIC DEMO:

# Conclusion:

