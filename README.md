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

Antes de empezar a configurar los sevices, plataforma e integraciones. Primero necesitamos crear nuestra cuenta de Helium y posteriormente crear un device.

<img src="https://i.ibb.co/mvxQH4f/image-2.png">

En el menu de devices tendras que crear un device nuevo.

<img src="https://i.ibb.co/QkZDfBG/image-3.png">





# Wio Terminal Setup:

# Lora E5 mini Setup:

Como parte de este proyecto se decidio agregar otro tipo de placa LoRa de la familia WIO para mostrar el que entre todas y segun las necesidades es posible crear un ecosistema de sensores.

https://wiki.seeedstudio.com/LoRa_E5_mini/

<img src="https://i.ibb.co/XXCZFfF/image.png">

Primero que nada esta placa es parte de la familia de chips STM32 requiere del programador ST-LINK/V2 Programmer, por suerte  este tipo de programadores ya vienen embebidos en muchas otras placas y es posible usarlos para programarlas, en nuestro caso teniamos ya una placa B-L072Z-LRWAN la cual ya tiene integrado el ST-LINK/V2 Programmer.

<img src="https://i.ibb.co/4Mkvh7L/image.png">

Para programar nuestra placa tenemos que conectar los pines de programacion de la siguiente forma.

<img src="https://i.ibb.co/ScZZzZy/Untitled-Sketch.png">

Esa placa puede ser programada mediante Arduino IDE y STM32CubeIDE, en nuestro caso ya que SeeedStudio nos provee un ejemplo de como configurar las credenciales LoRa desde STM32CubeIDE, decidimos que seria mejor usar el software propio de ST.

<img src="https://i.ibb.co/FndpCJC/image.png">

# Create your Dashboard



# 5. Connect to Helium

First we need to create our account on the Helium console to get the previously needed credentials:
https://console.helium.com/
Go to the Devices tab to get the credentials. And create a Device to get them.

caption (optional)
And save these values as they are your credentials!
Set up your Kit.
----docu pending

## Helium - AWS IoT Integration:

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

<img src="https://i.ibb.co/mhSRWRy/console1.gif">

### AWS Amplify:

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

