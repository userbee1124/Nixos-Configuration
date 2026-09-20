# Wayland
MangoWm with Noctalia shell (v5.1)
<img width="1920" height="1080" alt="screenshot_20260920_022436-region" src="https://github.com/user-attachments/assets/4fcc72cc-d89f-490b-8d9d-b6728c7fac8c" />


# Структука
```text
.
├── configuration.nix
├── desktop
│   ├── de
│   │   └── xfce.nix
│   ├── soft
│   │   ├── nixvim.nix
│   │   ├── pipewire.nix
│   │   └── pkgs.nix
│   └── wm
│       ├── mango.nix
│       └── niri.nix
├── flake.lock
├── flake.nix
├── hardware
│   ├── boot.nix
│   └── laptop.nix
├── hardware-configuration.nix
└── modules
    ├── conf.nix
    ├── net.nix
    ├── sddm.nix
    └── user.nix
```


# Описания
Большинство системных пакетов находяться в desktop/soft/pkg.nix.

modules/ папка, для системных настроек(юзер,интернет,sddm) а так же самоудаления старых версий никса в conf.nix -
период можно изменить, достаточно лишь поменять options = "--delete-older-than 14d";

hardware/ находяться laptop.nix - где, настроенный сообственно, софт для ноутбука
boot.nix - bootloader

в desktop/soft/ есть nixvim - декларативный подход к настройки neovim, весь nixvim.nix был сгенерен клаудом

и на конец в desktop есть, de и wm папки, в середине есть файлы, и в них тоже установленны некоторые пакеты

















СПАСИБО ЗА ПРОЧТЕНИЕ

<img width="754" height="900" alt="__beatrice_re_zero_kara_hajimeru_isekai_seikatsu_drawn_by_s_hdru2332__a343388c9253650d5196a47ee7e0f52c-1674070381" src="https://github.com/user-attachments/assets/88e89bfc-dbc9-4ea1-8208-803d3b2257fd" />
