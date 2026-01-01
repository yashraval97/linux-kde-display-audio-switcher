# linux-kde-display-audio-switcher

I created these scripts for a very simple yet weird usecase for my Arch Linux KDE Plasma gaming build.
My configuration is something like this:

Main desk setup (in study room):
1. 1440p horizontal monitor (via DP)
2. 1080p vertical monitor (via DP)
3. Desktop speakers (digital 2.0 config)
4. Wired headphones (analog 2.0 config)

TV Gaming setup (in living room):

1. 2160p LG C2 TV (40 feet of HDMI cable XD )
2. eARC sound bar via TV ( digital 5.1 surround)
3. (I also wanted this to launch in steam bigpicture mode)

Now my usecase is have BASH scripts that uses [kscreen-doctor](https://linuxcommandlibrary.com/man/kscreen-doctor) (for display) and [pactl](https://man.archlinux.org/man/pactl.1) (for audio) to have a one click solution to switch between either my Main Desk setup or TV gaming setup. (Displays of the other setup shouldn't be active)

Hence I have 2 BASH scripts.

Another thing I was interested in was to have a truly seemless experience, basically not needing to use a wireless keyboard either to change settings or to move back to desk mode once I am done with my gaming sesh.
This lead to solving 2 problems:

1. Macro/shortcut on main desk keyboard that will quit steam big picture, switch displays and audio:

   For this I used script shortcuts available in kde plasma settings:
   <img width="1491" height="952" alt="image" src="https://github.com/user-attachments/assets/88e5a026-0f06-4058-9007-91c596b5ebb3" />

2. The digital 5.1 surround sound of TV/soundbar was only recognisied by **pactl** only after few seconds of switching displays (I am not entirely sure why):

   In order to solve this I just used a 5 second sleep command in BASH to let display switch happen before audio switch.

   
