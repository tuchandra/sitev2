+++
title = "New computer setup"
date = 2020-03-05
draft = false
categories = ["general"]
+++

My work Macbook had to be sent in for repair, and the hard drive got wiped. I documented all the steps I took to set it up again. You can use this as a starting point for setting up a new machine, and so can I if I need to do this again soon!

## System preferences and settings
Went to System Preferences > Keyboard > Modifier Keys to switch Option and Command on the Dell USB keyboard that I use, since by default the key closer to the spacebar was option (unlike the native Mac keyboard).

Disabled Cisco AnyConnect on startup because it was annoying me ([source](https://apple.stackexchange.com/questions/202296/stop-cisco-anyconnect-secure-mobility-client-from-starting-up-automatically)).

Allowed any apps that I download to be run, since Catalina is very protective. The command was `sudo spctl --master-disable`, from [here](https://github.com/hashicorp/terraform/issues/23033).

Removed all the extra icons from my dock.

Deleted the company wallpaper by moving a different file into `/Library/Desktop Pictures/<filename>.jpg`. 

Changed the name of the computer (command `sudo scutil --set HostName <new name>`).

Signed into Google Chrome, then Slack (via Google). Reconfigured the color scheme and downloaded the desktop client.

Signed into Facebook Messenger and Android Messages.


## Software downloads and setup
Installed [Scroll Reverser](https://pilotmoon.com/scrollreverser/) so that my USB mouse scrolled the right way.

Installed [Ukelele](https://software.sil.org/ukelele/) to create a custom keyboard layout; I have underscore and hyphen swapped, so pressing that key gives an underscore. I also have most of my option + letter combinations mapped to Greek letters. I created the layout, saved it, and copied it to /Library/Keyboard Layouts ([source](https://superuser.com/questions/665494/how-to-make-a-custom-keyboard-layout-in-os-x)).

Installed [Hugo](https://github.com/gohugoio/hugo/releases) for my website.

Installed VS Code, plus the Python extension and SSH extension. I had to refer to [this SO post](https://stackoverflow.com/questions/58457958/visual-studio-code-cant-be-opened-because-apple-cannot-check-it-for-malicious) to stop my Mac from blocking the installation.

Installed Sublime Text 3. Symlinked `subl` command to open up Sublime Text using [these instructions](https://stackoverflow.com/a/19842659). Installed Package Control within Sublime, then downloaded and activated the Ayu theme.

Installed ITerm2 and my .zshrc (backed up from my old computer). Enabled ITerm2 > Preferences > Profiles > Keys > Load Preset > Natural Text Editing to let me use combinations like option+backspace in the terminal.

Installed [itermplot](https://github.com/daleroberts/itermplot) to plot inline in my terminal.

Installed [powerline-shell](https://github.com/b-ryan/powerline-shell), downloaded and installed a [patched font](https://gist.github.com/kevin-smets/8568070), and enabled it via ITerm2 > Preferences > Profiles > Text > Change Font. Changed the powerline-shell config, which I generated with [these instructions](https://github.com/b-ryan/powerline-shell#config-file), then removed my username and hostname from the default setup.


## Environment and code setup
Installed [Miniconda](https://docs.conda.io/en/latest/miniconda.html).

Cloned my project repo for work. Created a conda environment for the project.

Set up my SSH keys: ran `ssh-keygen`, added it to work Bitbucket, added it to personal Github, added it to our team's training box. To do this, I sent my public key to a different computer that had access, saved it to a file, then ran `cat that_key_file | ssh tushar@wherever "cat >> ~/.ssh/authorized_keys"` to put it on the machine. Added an alias to `~/.ssh/config`.

Cloned my [personal website](https://github.com/tuchandra/sitev2), cloned my [deployed website](https://github.com/tuchandra/tuchandra.github.io), moved the latter into the `site` directory of the former. Wrote this post as a test that everything works!

