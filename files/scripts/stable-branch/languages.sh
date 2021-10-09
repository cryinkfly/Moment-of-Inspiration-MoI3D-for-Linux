#!/bin/bash

##################################################################################################
# Name:         Moment of Inspiration (Mol3D) - Language file of the Installationsskript (Linux) #
# Description:  The different languages are loaded with this file!                               #
# Author:       Steve Zabka                                                                      #
# Author URI:   https://cryinkfly.com                                                            #
# License:      MIT                                                                              #
# Copyright (c) 2020-2021                                                                        #
# Time/Date:    17:00/14.09.2021                                                                 #
# Version:      1.0                                                                              #
##################################################################################################

##############################################################################
# DESCRIPTION
##############################################################################

# With the help of my script, you will be given a way to install Moment of Inspiration (Mol3D) in different languages. 

##############################################################################
# ALL FUNCTIONS ARE ARRANGED HERE:
##############################################################################

    function select-language {
        clear &&
        echo "In this step you need to choose a language for the Moment of Inspiration (Mol3D) installation!"
        echo -n "Choose one of these options: (English(en), German(de) or Quit(q)"
        read answer

        if [ "$answer" != "${answer#[en]}" ] ;then
          language-en_US
        elif [ "$answer" != "${answer#[de]}" ] ;then
          language-de_DE
        elif [ "$answer" != "${answer#[q]}" ] ;then
          exit;
        else
          exit;
        fi
        }

##############################################################################

# The English language packs are loaded.

    function language-en_US {
    export LC_ALL=en_US.UTF-8
    export LANG=en_US.UTF-8
    export LANGUAGE=en_US.UTF-8

    text_1="In this step the following packages package >dialog< and >wmctrl< are installed for the installation of Moment of Inspiration (Mol3D)!"
    text_1_1="Do you wish to install these packages (y/n)?"

    #select-your-os
    text_2="Installation of Moment of Inspiration (Mol3D) - Version $version_number"
    text_2_1="Select your Linux distribution!"
    text_2_2="Choose one of the following options:"

    #archlinux-1
    text_3="$text_2"
    text_3_1="If you have enabled multilib repository?"
    text_3_2="$text_2_2"
    text_3_3="Yes"
    text_3_4="No"

    #select-your-path
    text_4="$text_2"
    text_4_1="Choose setup type!"
    text_4_2="Choose the kind of setup that best suits your needs."
    text_4_3="Standard - Install Moment of Inspiration (Mol3D) into your home folder. (/home/YOUR-USERNAME/.wineprefixes/mol3d)"
    text_4_4="Custom - Install Moment of Inspiration (Mol3D) to another place."

    #select-your-path-custom
    text_5="$text_2"
    text_5_1="Description - Configure the installation location!"
    text_5_2="Now you have to determine where you want to install Moment of Inspiration (Mol3D) and then the .mol3d folder will be created for you automatically. For examlble you can install it on a external usb-drive: /run/media/user/usb-drive/wine/.mol3d or you install it into your home folder: /home/YOUR-USERNAME/.wineprefixes/mol3d)."
    text_5_3="Enter the installation path for Moment of Inspiration (Mol3D):"
    text_5_4="$text_2"

    #program-exit
    text_6="$text_2"
    text_6_1="Moment of Inspiration (Mol3D) is completed."
    text_6_2="The Moment of Inspiration (Mol3D) installation is complete and you can now use it for your projects."
}

##############################################################################

# The German language packs are loaded.

    function language-de_DE {
    export LC_ALL=de_DE.UTF-8
    export LANG=de_DE.UTF-8
    export LANGUAGE=de_DE.UTF-8

    text_1="In diesem Schritt werden die folgenden Pakete >dialog< und >wmctrl< für die Installation von Moment of Inspiration (Mol3D) installiert!"
    text_1_1="Möchten Sie diese Pakete installieren (j/n)?"

    
    #select-your-os
    text_2="Installation von Moment of Inspiration (Mol3D) - Version $version_number"
    text_2_1="Wählen Sie Ihre Linux-Distribution aus!"
    text_2_2="Wählen Sie eine der folgenden Optionen:"

    #archlinux-1
    text_3="$text_2"
    text_3_1="Haben Sie das Multilib-Repository aktiviert?"
    text_3_2="$text_2_2"
    text_3_3="Ja"
    text_3_4="Nein"

    #select-your-path
    text_4="$text_2"
    text_4_1="Wählen Sie den Setup-Typ aus!"
    text_4_2="Wählen Sie die Art der Einrichtung, die Ihren Anforderungen am besten entspricht."
    text_4_3="Standard – Installieren Sie Moment of Inspiration (Mol3D) in Ihrem Benutzerordner. (/home/IHR-BENUTZERNAME/.wineprefixes/mol3d)"
    text_4_4="Benutzerdefiniert – Installieren Sie Moment of Inspiration (Mol3D) an einem anderen Ort."

    #select-your-path-custom
    text_5="$text_2"
    text_5_1="Beschreibung - Konfigurieren Sie den Installationsort!"
    text_5_2="Jetzt müssen Sie festlegen, wohin Sie Moment of Inspiration (Mol3D) installieren möchten, und dann wird der Ordner .mol3d automatisch für Sie erstellt. Sie können es beispielsweise auf einem externen USB-Laufwerk installieren: /run/media/user/usb-drive/wine/.mol3d oder Sie installieren es in Ihrem Home-Ordner: /home/IHR-BENUTZERNAME/.wineprefixes/mol3d)."
    text_5_3="Geben Sie den Installationspfad für Moment of Inspiration (Mol3D) ein:"
    text_5_4="$text_2"

    #program-exit
    text_11="$text_1"
    text_11_1="Moment of Inspiration (Mol3D) ist abgeschlossen."
    text_11_2="Die Installation von Moment of Inspiration (Mol3D) ist abgeschlossen und Sie können es nun für Ihre Projekte verwenden."
}

version_number="0.1"
select-language
