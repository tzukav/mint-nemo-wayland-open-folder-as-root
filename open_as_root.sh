#!/bin/bash
    if [[ $1 =~ ^([^\:]*)://(.*?)$ ]]; then
        case "${BASH_REMATCH[1]}" in 
            file|admin)
                pkexec nemo "${BASH_REMATCH[2]}"
                exit 0
                ;;
        esac
        zenity --error --text="This action cannot be used on ${BASH_REMATCH[1]} locations."
        exit 1
    fi