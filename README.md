# FKouhai hyprland dot files

## What can you find in here

This repo contains all the config files for my hyprland rice, everything is under the [catppuccin mocha colorscheme](https://github.com/catppuccin/catppuccin/blob/main/assets/previews/mocha.webp) and my font of choice is [hack](https://archlinux.org/packages/extra/any/ttf-hack-nerd/) 

- [Improvements](#future-improvements) 
- [Specs](#system-specs) 
- [nvim](#nvim) 
- [hyprland](#hyprland) 
- [kitty](#kitty) 
- [wofi](#wofi) 
- [wlogout](#wlogout) 
- [btop](#btop) 


## Future improvements

- Creation of a shell script to deploy the config
- Replace any absolute path with a relative path

## System specs
| CPU    | RAM    | GPU    | OS    |
|---------------- | --------------- | --------------- | --------------- |
|  Ryzen 7 7700X   |  32GB DDR5   | NVidia RTX3060     | Endeavour OS   |

As a clarification it works in arch based distros


## nvim

Usage of lazyvim as my package manager,some of the plugins that are installed are the following:

- Telescope -> Fuzzy find within files, usage of <leader><leader> to go through old files, <leader>fg for live grep
- Mason + lunasnip -> Mason and lunasnip for my lsp and snippets
- cmp -> LSP client for auto completion
- oil -> nvim file manager that allows you to CRUD files and directories directly from neovim
- nvim-tmux-navigation -> Navigate through tmux pains from neovim using vim keys

## hyprland

[hyprland](https://github.com/hyprwm/Hyprland) is a wayland compositor that acts as a WM, these dotties have the cattpuccin theming, and my own keybindings, as well as the hyprpaper config for the wallpaper config

## kitty

Kitty is my terminal emulator of choice, GPU accelerated terminal emulators in general works extremely well under wayland unlike in X11 that after a GPU driver update you needed to reboot your system in order for the terminal to be spawned again

## wofi

Wofi is an application launcher like rofi

## wlogout

wlogout allows you to logout,power off, reboot, hibernate and lock from the swaybar
