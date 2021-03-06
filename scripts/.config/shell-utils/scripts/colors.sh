#!/usr/bin/env bash

COLOR_UNDERLINE="$(tput sgr 0 1)"
COLOR_BOLD="$(tput bold)"
COLOR_RED="$(tput setaf 1)"
COLOR_GREEN="$(tput setaf 2)"
COLOR_YELLOW="$(tput setaf 3)"
COLOR_BLUE="$(tput setaf 4)"
COLOR_VIOLET="$(tput setaf 5)"
COLOR_AQUA="$(tput setaf 6)"
COLOR_WHITE="$(tput setaf 7)"
COLOR_RESET="$(tput sgr0)"
COLOR_BG_RED="$(tput setab 1)"
COLOR_BG_GREEN="$(tput setab 3)"
COLOR_BG_BLUE="$(tput setab 4)"

export COLOR_UNDERLINE
export COLOR_BOLD
export COLOR_RED
export COLOR_GREEN
export COLOR_YELLOW
export COLOR_BLUE
export COLOR_VIOLET
export COLOR_AQUA
export COLOR_WHITE
export COLOR_RESET
export COLOR_BG_RED
export COLOR_BG_GREEN
export COLOR_BG_BLUE

color_wrap() {
    local wrapper
    case "${1}" in
    'red')
        wrapper="${COLOR_RED}"
        ;;
    'green')
        wrapper="${COLOR_GREEN}"
        ;;
    'blue')
        wrapper="${COLOR_BLUE}"
        ;;
    'yellow')
        wrapper="${COLOR_YELLOW}"
        ;;
    'violet')
        wrapper="${COLOR_VIOLET}"
        ;;
    'aqua')
        wrapper="${COLOR_AQUA}"
        ;;
    'white')
        wrapper="${COLOR_WHITE}"
        ;;
    'bg_red')
        wrapper="${COLOR_BG_RED}"
        ;;
    'bg_green')
        wrapper="${COLOR_BG_GREEN}"
        ;;
    'bg_blue')
        wrapper="${COLOR_BG_BLUE}"
        ;;
    'bold')
        wrapper="${COLOR_BOLD}"
        ;;
    'underline')
        wrapper="${COLOR_UNDERLINE}"
        ;;
    'reset')
        wrapper="${COLOR_RESET}"
        ;;
    *)
        wrapper="${COLOR_RESET}"
        ;;
    esac
    echo "${wrapper}${2}${COLOR_RESET}"
}

underline() {
    local result
    result="$(color_wrap 'underline' "${1}")"
    echo "${result}"
}

bolden() {
    local result
    result="$(color_wrap 'bold' "${1}")"
    echo "${result}"
}
