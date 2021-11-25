#!/bin/bash

function INSTALAR {


    clear
    echo "" ; echo ""
    read -p "Desea Instalar la Personalizacion el el Usiario o en el Sistema? (U/S)>  " respuesta
    clear
    echo "" ; echo ""


    case $respuesta in
        's' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'S' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        "Sistema" )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        "sistema" )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'SISTEMA' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'sISTEMA' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'u' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'usuario' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'Usuario' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'USUARIO' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'uSUARIO' )   RUTA_ICONOS='/usr/share/icons' ; RUTA_TEMAS='/usr/share/themes'  ;;
        'U' )   RUTA_ICONOS='~/.icons' ; RUTA_TEMAS='~/.themes'  ;;
        * )     clear; echo "" ; echo "" ; echo "SE HA INGRESADO UNA RESPUESTA ERRONEA. INTENTE NUEVAMENTE" ; sleep 3 ; INSTALAR ;; 
    esac
 
     cp -r Recursos/ICONOS/* $RUTA_ICONOS
     cp -r Recursos/TEMAS/* $RUTA_TEMAS
     echo "           Se ha instalado Correctamente la Personalizacion de XCFE."
     echo "           Seleccione los Temas en la Configuracion. Terminando el Instalador..."
 
}


function MENU {

    clear
    
    for number in {0..10}; do
        echo ""
    done
    
    echo "" ; echo ""
    read -p "Desea Instalar Mi Configuracion de VIM? (S/N)>  " respuesta
    clear
    echo "" ; echo ""

    case $respuesta in
        's' )   INSTALAR  ;;
        'si' )  INSTALAR  ;;
        'Si' )  INSTALAR  ;;
        'sI' )  INSTALAR  ;;
        'SI' )  INSTALAR  ;;
        'y' )   INSTALAR  ;;
        'yes' ) INSTALAR  ;;
        'YES' ) INSTALAR  ;;
        '1' )   INSTALAR  ;;
        'S' )   INSTALAR  ;;
        * )     echo "           Se ha elegido que NO. Se saldrá del Instalador." ;;
    esac
    
    echo "" ; echo ""

}

MENU
exit