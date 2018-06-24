# The Heir

## Inheriting a storage unit full of family heirlooms forces an estranged son to confront his place in the family.

*The Heir* is an independent feature film in active development in 2018.
In addition to what we hope is a compelling story, the project is an experiment in applying collaborative, agile methodologies to film.

You can read about the [story](https://github.com/arikrupnik/the-heir/wiki/Plot-Outline), [characters](https://github.com/arikrupnik/the-heir/wiki/Characters), [cast](https://github.com/arikrupnik/the-heir/wiki/Cast) and [process](https://github.com/arikrupnik/the-heir/wiki/Process) on our Wiki site: <https://github.com/arikrupnik/the-heir/wiki>

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
   * `pip2 install markdown`
   * `pip2 install weasyprint`
   * `wget https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-windows.zip`
   * `unzip -j -d /bin pandoc-2.1.3-windows.zip pandoc-2.1.3/pandoc.exe`

### Installation on MacOS

1. Download and install <https://www.macports.org>. Installation may require installing Apple's XCode or Xcode Command Line Tools. Follow MacPorts instructions for your version of MacOS.
2. In a terminal, run the following commands:
   * `port install git gmake aspell aspell-dict-en python27 py27-pip libxml2 libxslt gtk2`
   * `pip27 install markdown`
   * `pip27 install weasyprint`
   * `echo 'export PATH=$PATH:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin' >> ~/.profile`
3. Download and install <https://github.com/jgm/pandoc/releases/download/2.1.3/pandoc-2.1.3-macOS.pkg>

### Installation on Linux

We assume that you already have git and friends on your system. Please note that we use Python 2.7 and Gnu make. You need `ibxml2` and `libxslt`; consult your package manager for specific installation commands. You need two Python libraries: `pip install markdown weasyprint`.

### On all OSs

In a terminal, run the following commands:
* `git clone https://github.com/arikrupnik/the-heir.git`
* `cd the-heir`
* `git submodule init`
* `git submodule update`
* `make`

If everything succeded, you'll find `the-heir.pdf` and `the-heir_treatment.pdf` in the current directory.
