###  Enigma
## Table of contents
* [General info](#general-info)
* [Screenshots](#screenshots)
* [Learning Goals](#learning-goals)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Future Enhancements](#future-enhancements)
* [Self Evaluation](#self-evaluation)
* [Contact](#contact)
## General info
This project is  a program dedicated to encrypting and decrypting messages using the Ceaser Cipher. It allows a user to type a message in, use a key and a date, and encrypt or decrypt a message to a new text file.
## Screenshots
![Picture](https://user-images.githubusercontent.com/82777170/128753621-3dacc39a-d344-488c-bb0f-4ae768b459dd.png)
## Learning Goals
* Practice breaking a program into logical components
* Build classes that demonstrate single responsibilities
* Test drive a well-designed Object Oriented solution
* Work with file i/o
## Technologies
Project is created with:
* Ruby version: 2.7.2
## Setup
To run this program, save a copy of this repository locally. In the MacOS
application 'Terminal,' navigate into the _futbol_ directory.
Then, run it using ruby (note: '$' is not typed).
1. Clone the repo using the web url:
   ```
   $ git clone https://github.com/kevinmugele/enigma
   ```
   or with a password-protected SSH key:
   ```
   $ git clone git@github.com:kevinmugele/enigma.git
   ```
2. Change into the directory:
   ```
   $ cd ../enigma
   ```
3. Run the encrypt file. It will return a statement regarding the encryption. Next, you can run the decrypt file. *NOTE* Please replace the 82648 and 240818 with the appropriate key and date from the previous file.
   ```
   $ ruby ./lib/encrypt.rb message.txt encrypted.txt
   $ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818
   ```
## Features
List of features ready and TODOs for future development
* Able to encrypt a message with a key or date
* Able to generate a random key
* Able to use today's date if no date is provided
* Able to decrypt a message with a known key
* Able to decrypt a message using a known date or today's date
## Future Enhancements:
* Crack the key for a message if the key is not known
## Self Evaluation
* 
## Contact
Created by
* [@kevinmugele](https://github.com/KevinMugele)

~ feel free to contact us! ~
~ enjoy! ~
