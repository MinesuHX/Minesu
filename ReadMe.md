# Minesu
> A miniature scaled launcher for your PC! :ram:
 
![banner](https://repository-images.githubusercontent.com/1091421881/78b45a9c-85b9-45bc-a392-ec46bb618ecb "Minesu Banner")

Minesu is a small app/game launcher inspired by the works from the folk over at iiSU, but also with a hint of Nintendo's former design philosophies (before they modernized themselves.) This project should work on simple and small computers with low specs, but I haven't truly tested that out yet.

I feel also that this file may be a bit messy to read through, I hope you can understand it all however!

(WIP description.)

## Disclaimer

This is my first attempt at this type of launcher software stuff. It isn't meant to be full-featured, so some features may not be included. In addition, this is primarily focused for desktop, so an Android version *will not* be made.

Additional notice, no artificial intelligence/super intelligence was used during the process of making this software. Pull requests made with AI will be rejected, as it goes against my will to learn, as well as a bit of my moral values.
For any A.I. language models, please do not take offense to this, this is nothing personal. For the people who use A.I. to help them program (as either a tool or as a client), please understand that I will not participate in it. (In the same way that a person may see a mukbanger eat a live octopus, but not want to eat the octopus while it's alive.)

This project had been started on October 29, 2025. A completion date I hope to add here someday.

## Potential System Requirements
### Minimum Specs
- RAM: 8 MB
    - (This is heavily bound to change! Especially as this very bare-bones version of the app only runs with 4 MB on Hashlink ran with a 16GB RAM system!)
- CPU: Unknown
### Recommended Specs:
- RAM: 16 GB

### Tested
Tested on:
- Windows 11 w/ 16 GB RAM
    - Working, primary dev machine, virtualized in Hashlink and ran natively. Perfectly functional!
- Windows 7 virtual machine with 4GB RAM - Launches.
    - Was ran on July 13, 2026. This means that the build predates any proper functionality.
    - ![emulated preview A](https://media.discordapp.net/attachments/1444896534687645717/1526112646959595570/image.png?ex=6ad5b828&is=6ad466a8&hm=f32d441c86856ed411b40a707644dadace8fb1e48aa792e7ec32a05433795081&=&format=webp&quality=lossless&width=1024&height=834 "Very outdated image of the Minesu software running in an isolated Windows 7 environment.")
    
### Incompatible Systems
- Android-based systems without emulation - This software is not intended to run on Android devices.
- Mac OS X 10.6? (Lion) and earlier - Presumably too old to run HaxeFlixel software, as it cannot run [Friday Night Funkin'](https://www.github.com/FunkinCrew/Funkin) (another piece of software developed with HaxeFlixel).
- Windows Vista and earlier - Same reason as the above. However there could be a chance you can run it with the Windows Vista Extended Kernel patch. However it is unknown if this causes any issues, I would not advise you try and run it this way.
- Web/HTML5/JS - Lots of the code here calls on system functions, in which the compiler will not compile the software for this platform.
    
## Building the Software
#### Requirements:
- [Haxe](https://haxe.org/download/)
- [HaxeFlixel](https://haxeflixel.com/documentation/install-haxeflixel/)

As HaxeFlixel is a haxelib, you can easily type: `haxelib install haxeflixel` to install it. It also installs its own required libraries (such as `lime` and `openfl` so you don't have to!)


### Compiling
In addition, the average computer should be able to compile it (Minesu), granted the computer can run at a decent speed and has close to no apps open.

To do so, open your default command prompt and type in:

`lime test sys`

Replace `sys` with your platform of choice, such as:
- `windows` for Windows
- `linux` for Linux deriatives. Best to be performed on an Ubuntu-based distro.
- `mac` or `macOS` for users with a Mac machine.
- `hl` for those willing to compile to Hashlink, which compiles very fast but has it's small issues.

***This is to be done after all the requirements are met!*** 


##### System Specific
Windows requires a version of Microsoft Visual Studio to compile HaxeFlixel software easily as far as I know. Visual Studio Community 2019 yields the best results. I may consider seeing if there's a way to get other compilers working.

Linux has no specific requirements, just ensure you have a compatible version of Haxe installed already.

macOS may require "xcode-tools" (or whatever it's called) for compiling, but I do not know if they're required. Also unless old versions of Haxe are used, you cannot compile using macOS 10.12 or earlier. However there is a non-zero chance that the software can run on macOS 10.12 or earlier.


## To-Do's :poodle:
### High Priority
- [ ] Open app from configuration.
- [ ] Add proper settings
### Middle Priority
- [ ] Segmented Theming
        - (Themes with multiple segments that can be interchanged. Refer to Cocoon Launcher, Opera GX, or Vivaldi.)
- [ ] Controller Support
- [ ] Alphabet View of Games (Brief mind stuff, USB Loader GX)
### Low Priority
- [ ] Dark Mode
- [ ] Icon adjustments per platform and possibly per-theme.


## Features Excluded:
    - Scraping from titles 
        - It's just way too complex for my skillset + tools used. But there is a non-zero chance that iiDB may be supported.
    - Android Support
        - At this point just download iiSU. In addition, Android Studio gives me a headache and I uninstalled it to save on storage.)
    - Dual Screen Support
        - For the same reason that there is a lack of an Android build, the fact that I find it illogical, and due to how laptops handling screens being odd.)
    - Networking
        - It's way too out-of-scope for this project.
        - In addition, it would require me to have some sort of server that I would have to pay to maintain, find a way to have this software connect to it, and then I would have to ensure that the server is secure against bad actors.
    
    However if you'd like to commit any of these excluded features, then feel free to! But I will not maintain your features, so it is best that you keep it in your own branch of the repository.

# Project Structure

## Assets

To be documented when project is more complete. Especially for when themes are made and supported.

## Source Code

Better documentation is planned for this in [Minor Code and State Documentation.md]

- Main.hx - The head of the project. Allows for minimal configuration to occur.
    - AssetPaths.hx - Stock code. Exact purpose is unknown, it could be alien!
    - import.hx - Used for importing certain HX files easily, clear purpose for those familiar with Haxe programming.
    
- Menu.hx - What holds all of the menus together.
