🐧 # Shipping Challenge # 🐧
Wat heb je nodig

 1️⃣ Step 1 — make a clean virtual machine:
 
   - maak een vituwele machine met ubuntu of debian en geef 2 netwerk kaarten 1 op bridge en de andere op host-only
 
 2️⃣ Step 2 — configer netplan to conect- with putty:  

   👍 Ubuntu:
   - $ cd /etc/netplan
   - /etc/netplan$ cp 50*.yaml 99.yaml
   - /etc/netplan$ sudo nano 99.yaml
      voog een poort toe door de bestaan de regels te copyeren en de adaptor naam teveranderen (vb enp0s3 => enp0s8)
      
         network:
             ethernets:
                 enp0s3:
                     dhcp4: true
                 enp0s8:
                     dhcp4: true
          version: 2
       
   - /etc/netplan$ sudo netplan appely
   - $ ip a  (ipv4 adres zoeken om met te conecteren)
   
  💖 debian:(
  
       - $ cd /etc/network
       - /etc/network$ su root
       - root@user:~/etc/network$ nano interfaces
   vervang alles onder # The primary network interface 
   
         # The primary network interface
         allow-hotplug enp0s3
         auto enp0s3
         iface enp0s3 inet dhcp

         allow-hotplug enp0s8
         auto enp0s8
         iface enp0s8 inet dhcp
   zoek u ip addres op
   
        - root@user:~/etc/network$ exit
        - $ ip a   
   voor het eenvoudig gebruik van copy/paste verbind je nu best met putty of dergelijke via het ip adres van u hoste-only adapter
          
3️⃣ Step 3 — Installing Docker Compose:

   👍 Ubuntu:

         - $ sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
         - $ sudo chmod +x /usr/local/bin/docker-compose
         - $ sudo snap install docker 

   💖 debian:

         - $ su root
         - root@user:/home/user# apt-get install sudo
         - root@user:/home/user# adduser username sudo
         - root@user:/home/user# visudo
      -user toevoegen

           # User privilege specification
             username ALL=(ALL:ALL) ALL
      -exit naar gebruiker

         - root@user:/home/user# exit
      -docker

         - $ sudo apt-get update

         - $ sudo apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg2 \
        software-properties-common

         - $ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
         - $ sudo apt-key fingerprint 0EBFCD88

         - $ sudo add-apt-repository \
         "deb [arch=amd64] https://download.docker.com/linux/debian \
         $(lsb_release -cs) \
         stable

         - $ sudo apt-get update
         - $ sudo apt-get install docker-ce

         - $ sudo apt-get install snapd
         - $ sudo snap install docker 

4️⃣ Step 4 — Running a Container with Docker Compose (om te testen dat het werkt mag worden overgeslagen):
   👏 gebruik docker-compose

      - $ mkdir hello-world 
      - $ cd hello-world
      - hello-world$ sudo nano docker-compose.yml 

            version: "2"
               services:
                   my-test:
                       image: hello-world

      - $ sudo docker-compose up -d   (-d is om het op de achtergrond uitvoeren)
   😎 ore pull een image
   
      $ sudo docker run hello-world

5️⃣ Step 5 — Running Docker GIT file:

      - $ mkdir docker-hub 
      - $ cd docker-hub
      - docker-hub$ git clone https://github.com/benji19/shipchal.git
      - docker-hub$ cd shipchal      
   - onder de map dump vind je een sql file in deze file kan je u eigen sql statements plaatsen
   - en onder www vind je een index.php deze kan je zelf aanpassen
   - na persoonlijke aan passingen voor je het docker commando uit om de .yaml te activeren
  
    - docker-hub/shipchal$ sudo docker-compose up -d   (-d is om het op de achtergrond uitvoeren)
   
6️⃣ Step 6 — testing docker containers

      - $ docker ps       (laat alle lopende containers zien)
      - $ docker images   (laat gedownloade/gemaakte images zien)
   
7️⃣ Step 7 — surf in a browser

   🌐 surf naar je localhost/ip addres van je server met volgende poorten:
   
      - :8007  www            (voor het tonen van de website waar gegevens verwerkt worden)
      - :8008  phpmyadmin   [user: user]  [wachtwoord: R1234-56]  (voor de het beheren van de database)
      - :9009  portainer    [user: user]  [wachtwoord: R1234-56] (voor het manage van containers en images van docker)
