# 🐧 My Dotfiles | Personal Desktop Setup

Este repositorio contiene mis configuraciones personales para un entorno Linux productivo y estético. El setup es híbrido, con soporte para **X11 (BSPWM)** y **Wayland (Hyprland)**.

---

## 📦 Software y Dependencias

Para que todo funcione como se espera, asegúrate de tener instalados los siguientes paquetes:

### 🖥️ Window Managers & Compositors
* **BSPWM**: Window manager basado en tiling (X11).
* **sxhkd**: Demonio de atajos de teclado para bspwm.
* **Hyprland**: Window manager dinámico basado en Wayland.
* **Picom**: Compositor para transparencias y sombras en X11.

### ⌨️ Terminal & Shell
* **Alacritty**: Emulador de terminal acelerado por GPU.
* **Fish Shell**: Shell interactiva y amigable.
* **PowerShell**: Para scripts multiplataforma.

### 🎨 Interfaz y Estética
* **Barras**: `Polybar` (X11) y `Waybar` (Wayland).
* **Lanzadores**: `Rofi` (X11) y `Wofi` (Wayland).
* **Temas**: `qt6ct` y `GTK-3.0` para uniformidad visual.
* **Música**: `Spicetify` para personalizar Spotify.

### 📂 Utilidades
* **Editores**: `Neovim` (configuración base y AstroNvim).
* **File Managers**: `Thunar`, `Nautilus` y `Catfish` (búsqueda).
* **Notas**: `Cherrytree`.

---

## 🚀 Instalación Rápida

1. **Clona el repositorio:**
   ```bash
   git clone [https://github.com/tu-usuario/mis-dotfiles.git](https://github.com/tu-usuario/mis-dotfiles.git) ~/mis-dotfiles```
2. **Clona las fuentes**
   ```bash
   mkdir -p ~/.local/share/fonts && cp -r fonts/* ~/.local/share/fonts && fc-cache -fv

## 🚀 Dependencias 
* **Arch**
   ```bash
      sudo pacman -Syu bspwm sxhkd hyprland alacritty fish neovim polybar waybar rofi wofi picom thunar nautilus catfish cherrytree qt6ct spicetify-cli brightnessctl playerctl pavucontrol xfce4-settings xdg-user-dirs
   ```
* **Debian**
   ```bash
      sudo apt update && sudo apt install -y bspwm sxhkd alacritty fish neovim polybar waybar rofi wofi picom thunar nautilus catfish cherrytree qt6ct xfce4-settings xdg-user-dirs pavucontrol brightnessctl playerctl
   ```
## 😈Imágenes
* **BSPWM + Polybar + Kitty**
   <img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/d54e609e-d00a-4405-9445-620a5ccadee0" />

