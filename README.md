# Total Commander App: Custom Command "Sync Date"

Copying files often corrupts the modification date of files. In case of photos, the files often contain the original date in the filename.
To keep the Photo Gallery clean on Phones, this Script can be used to restore the original creation date by using the date in the filename.

## Setup
To use it, you need to have [Total Commander]([asdf](https://play.google.com/store/apps/details?id=com.ghisler.android.TotalCommander)https://play.google.com/store/apps/details?id=com.ghisler.android.TotalCommander) installed on your smartphone.

* Press the last icon in the bottom row and find the `+` icon
* Change "Function Type" to "Send System Command"
* "Command" is `sh`
* "Parameter" is the script in this repo (just copy the text)
* Optional: Choose an icon
* Press "OK"

## Usage
To use the Custom Command, just select some images and press the icon in the bottom bar. If everything was successful, you'll see "Function succeeded". If not, you'll see all the failed files. Most of the time this is due to an unsupported date format.
