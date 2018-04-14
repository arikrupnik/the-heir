# The Heir

## Inheriting a storage unit full of family heirlooms forces an estranged son to confront his place in the family.

*The Heir* is an independent feature film in active development in 2018.
In addition to what we hope is a compelling story, the project is an experiment in applying collaborative, agile methodologies to film.

You can read about the [story](https://github.com/arikrupnik/the-heir/wiki/Plot-Outline), [characters](https://github.com/arikrupnik/the-heir/wiki/Characters-and-Cast) and [process](https://github.com/arikrupnik/the-heir/wiki/Process) on our Wiki site: <https://github.com/arikrupnik/the-heir/wiki>

This page describes the technical aspects of contributing to the project.

### Installation on Windows

If you already have a Git environment on your Windows machine, you can skip this section.
Clone our repository to your local drive, install [Pandoc](http://pandoc.org/) and [Weasyprint](http://weasyprint.org/) you're ready to go.

If you've not worked with Git before, we recommend using Cygwin as your environment on Windows.
In our experience, it is much easier to install the necessary utilities in Cygwin than alternatives.

1. Download and install <https://www.cygwin.com/>. During installation, select the following optional packages:
   * git
   * make
   * aspell
   * aspell-en
   * python2
   * python2-pip
   * libxml2
   * libxslt
   * libgtk2.0-devel
   * wget
   * zip
2. In the new Cygwin shell, run the following commands:
   * `git clone https://github.com/arikrupnik/the-heir.git`
   * `git submodule init`
   * `git submodule update`
   * `pip2 install markdown`
   * `pip2 install weasyprint`
   * `wget https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-windows.zip`
   * `unzip -j -d /bin pandoc-2.1.3-windows.zip pandoc-2.1.3/pandoc.exe`
3. If everything succeeded, you now have the source files and all the necessary software on your local drive.
