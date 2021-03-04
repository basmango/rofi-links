## rofi-links
A simple script that allows you to instantly open IIITD class links.

### Installation
1. Install rofi. 
   * [Ubuntu](https://www.howtoinstall.me/ubuntu/18-04/rofi/)
   * [Arch](https://wiki.archlinux.org/index.php/Rofi#Installation) 
   * [Fedora](https://copr.fedorainfracloud.org/coprs/fusion809/Rofi/)
2. Clone this repository to your home directory.
3. Download the .tsv file from [here](https://docs.google.com/spreadsheets/d/1_IOixsuyqL90xsCE4b1FZG8VB7cVlzQAKlBJ43-tEwQ/edit?usp=sharing).
    * Go to the sheets link (only visible to IIITD accounts)
    * In sheets, go to ``File>Download>Tab-seperated values (.tsv)`` 
    * move this .tsv file to the repo directory from step 2 
4. Rename the .tsv file to links.tsv.
5. Add a keybinding of your choice to run the links.sh bash script.
 The keybinding should be mapped to:
 
 
``bash ~/rofi-links/links.sh``


### Modification
All you need to do is edit the .tsv file.
#### Adding new entries
You need to add/append two things, one is the name of whatever the link corresponds to like *IML Tutorial*.
Secondly, you need to add the corresponding link.
The name may contain spaces, but the name and link must be **tab-seperated** like all the other entries.
So, the format looks something like this:

`` <name of item>`` &nbsp;&nbsp;&nbsp; ``<link to item>``

#### Editing existing entries
To edit an existing entry, find the row corresponding to that entry in the .tsv file and replace/add the corresponding link.
The link is extracted using regex, so no need to clean the data.
