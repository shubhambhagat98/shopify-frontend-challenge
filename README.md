# Shopify Frontend Challenge

This repo contains code for Shopify Front-End Challenge required as part of application for Frontend Developer Intern - Summer 2022

Website hosted on heroku: https://shopify-fe.herokuapp.com/

I have used Mars Rover Photos API provided by NASA API Portal to fetch the data and display the images.
Additional features include:  
- Responsive Layout
- Like button with heart shape animation
- Display loading icon until webpage fully renders
- Get shareable link for each image (along with copy to clipboard button)


## How to run:

### Clone the repo
Use the following command to clone the repo

```
git clone https://github.com/shubhambhagat98/shopify-frontend-challenge.git
```

### Save NASA API Key
Create your NASA API Key by visiting https://api.nasa.gov/ . Enter your firt name, last name and email id and proceed ahead to get your personal NASA API KEY. Save your NASA API Key to environment variable 

On windows execute following command in the command prompt and restart the command prompt
```
setx NASA_API_KEY "[YOUR_API_KEY]"
```

On mac follow the following steps
1. Find the path to .bash_profile by using:
```
~/.bash-profile
```
2. Open the .bash_profile file with a text editor of your choice.

3. Scroll down to the end of the .bash_profile file.

4. Use the export command to add new environment variables:
```
export NASA_API_KEY = [YOUR_API_KEY]
```
5. Save any changes you made to the .bash_profile file.

6. Execute the new .bash_profile by either restarting the terminal window or using:
```
source ~/.bash-profile
```

### Run the project
1. Open the project in IDE (Eclipse/ Intellij)
2. Configure a local server (Tomcat/ Jetty/ GlassFish) to run the project and start the server
3. You can run the project by using the Run option in the IDE or by entering the following url in the browser:
```
http://localhost:8080/shopify_front_end/
```




