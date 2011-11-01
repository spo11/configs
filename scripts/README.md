# Scripts Folder
These are the scripts I use to start various sessions. I normally use [Console Display Manager](https://wiki.archlinux.org/index.php/CDM) as my display manager, so it is necessary to have these scripts to autostart whatever applications I may want to be started on login (e.g. nitrogen, xfce4-power-manager). 

## Usage
Usage of these scripts is pretty simple. Place them in /usr/bin/.

Then in /etc/cdmrc, find the following lines:

``` 
wmbinlist=(awesome openbox-session)
```

Delete those bin names and insert the names of the scripts:

```
wmbinlist=(startsubtle startob startdwm)
```

Make sure to change the WM display names so that they *correspond to the name of the window managers specificed in wmbinlist*!
```
wmdisplist=(Subtle Openbox DWM)
```
