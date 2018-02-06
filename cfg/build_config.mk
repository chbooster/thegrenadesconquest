##-----------------------------LICENSE NOTICE------------------------------------
##  This file is part of CPCtelera: An Amstrad CPC Game Engine 
##  Copyright (C) 2015 ronaldo / Fremos / Cheesetea / ByteRealms (@FranGallegoBR)
##
##  This program is free software: you can redistribute it and/or modify
##  it under the terms of the GNU Lesser General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU Lesser General Public License for more details.
##
##  You should have received a copy of the GNU Lesser General Public License
##  along with this program.  If not, see <http://www.gnu.org/licenses/>.
##------------------------------------------------------------------------------

###########################################################################
##                        CPCTELERA ENGINE                               ##
##                     Build configuration file                          ##
##-----------------------------------------------------------------------##
## This file is intendend for you to be able to config the way in which  ##
## you would like to build this example of use of the CPCtelera Engine.  ##
## Below you will find several configuration sections with the macros    ##
## available to configure the build, along with explanation comments to  ##
## help you understand what they do. Please, change everything you want. ##
###########################################################################

## CPCTELERA MAIN PATH
##   Sets CPCTelera main path for accessing tools and configuration. This 
##   variable must point to the folder where source and tools are contained.
##   Setup creates and environment variable that will be generally used.
##   However, when environment variable is not available, this variable 
##   should have the correct value for the project to compile.
##   If you change folder structure, CPCT_PATH should reflect this change.
##   This variable should always have the absolute path value.
##
#>> Uses environment variable $(CPCT_PATH)

####
## SECTION 1: Project configuration 
##
## This section establishes source and object subfolders and the binary objects to
## be built. Normally, you want to change the OBJ files you want to be built, selecting
## only the ones that contain the actual code that will be used by you in your application.
#####

# Name of the project (without spaces, as it will be used as filename)
#   and Z80 memory location where code will start in the generated binary
PROJNAME   := grenadesconquest
Z80CODELOC := 0x1000

##
## Folders 
##
## SRCDIR      = Source files for the project
## DSKFILESDIR = Input files to be added to the final DSK production
## OBJDIR      = Object files generated on compilation
##
SRCDIR      := src
DSKFILESDIR := dsk_files
OBJDIR      := obj

##
## File extensions
##
## C_EXT      = C source files that will be automatically compiled
## ASM_EXT    = ASM source files that will be automatically compiled
## BIN_EXT    = Binary files that will be automatically converted to C source files for compilation
## OBJ_EXT    = Object files generated after compilation
## DSKINC_EXT = Flag object files generated after file inclusion into DSK (to signal that a file has been included)
##
C_EXT      := c
ASM_EXT    := s
BIN_EXT    := bin
OBJ_EXT    := rel
DSKINC_EXT := dskinc

##
## Output Binaries Configuration
##
## IHXFILE = Binary file that SDCC produces after compilation and linkage
## BINFILE = Binary file that is finally included in DSK and CDT (produced by Hex2Bin)
## CDT     = CDT file produced
## DSK     = DSK file produced
## DSKINC  = Flag object file produced to signal DSK already has all include files in it
##
IHXFILE := $(OBJDIR)/$(PROJNAME).ihx
BINFILE := $(OBJDIR)/$(PROJNAME).bin
CDT     := $(PROJNAME).cdt
DSK     := $(PROJNAME).dsk
DSKINC  := $(OBJDIR)/$(DSK).$(DSKINC_EXT)

##
## TARGETs generated by Makefile: remove those you don't want to be generated
##
##  $(CDT):    Generates the CDT file with main binary
##  $(DSK):    Generates the DSK file with main binary
##  $(DSKINC): Includes all files from DSKFILESDIR into DSK as binaries 
##
TARGET := $(CDT) $(DSK) $(DSKINC)

##
## OBJS2CLEAN: Additional objects to be removed when running "make clean"
##
OBJS2CLEAN :=

####
## SECTION 2: TOOL PATH CONFIGURATION
##
## Paths are configured in the global_paths.mk configuration file included 
## here. You may overwrite the values of path variables after the include 
## if you wanted specific configuration for this project.
####
include $(CPCT_PATH)/cfg/global_paths.mk

####
## SECTION 3: COMPILATION CONFIGURATION
##
##   Flags used to configure the compilation of your code. They are usually 
##   fine for most of the projects, but you may change them for special uses.
#####
Z80CCFLAGS    :=
Z80ASMFLAGS   := -l -o -s
Z80CCINCLUDE  := -I$(CPCT_SRC)
Z80CCLINKARGS := -mz80 --no-std-crt0 -Wl-u \
                 --code-loc $(Z80CODELOC) \
                 --data-loc 0 -l$(CPCT_LIB)
####
## SECTION 4: CALCULATED FOLDERS, SUBFOLDERS AND FILES
##
##  These macros calculate code subfolders, get all the source files and generate
##  the corresponding subfolders and files in the object directory. All subfolders
##  and files with source extension found are added, up to 1 level of depth in
##  folder structure inside the main source directory.
####
include $(CPCT_PATH)/cfg/global_functions.mk

# Convert images and tilemaps
include cfg/image_conversion.mk
include cfg/tilemap_conversion.mk
include cfg/music_conversion.mk

# Calculate all subdirectories
SUBDIRS       := $(filter-out ., $(shell find $(SRCDIR) -type d -print))
OBJDSKINCSDIR := $(OBJDIR)/$(DSKFILESDIR)
OBJSUBDIRS    := $(OBJDSKINCSDIR) $(foreach DIR, $(SUBDIRS), $(patsubst $(SRCDIR)%, $(OBJDIR)%, $(DIR)))

# Calculate all source files
CFILES         := $(foreach DIR, $(SUBDIRS), $(wildcard $(DIR)/*.$(C_EXT)))
CFILES         := $(filter-out $(IMGCFILES), $(CFILES))
ASMFILES       := $(foreach DIR, $(SUBDIRS), $(wildcard $(DIR)/*.$(ASM_EXT)))
ASMFILES       := $(filter-out $(IMGASMFILES), $(ASMFILES))
BIN2CFILES     := $(foreach DIR, $(SUBDIRS), $(wildcard $(DIR)/*.$(BIN_EXT)))
DSKINCSRCFILES := $(wildcard $(DSKFILESDIR)/*)

# Calculate all object files
BIN_OBJFILES   := $(patsubst %.$(BIN_EXT), %.$(C_EXT), $(BIN2CFILES))
CFILES         := $(filter-out $(BIN_OBJFILES), $(CFILES))
GENC_OBJFILES  := $(patsubst $(SRCDIR)%, $(OBJDIR)%, $(patsubst %.$(C_EXT), %.$(OBJ_EXT), $(IMGCFILES)))
GENASM_OBJFILES:= $(patsubst $(SRCDIR)%, $(OBJDIR)%, $(patsubst %.$(ASM_EXT), %.$(OBJ_EXT), $(IMGASMFILES)))
C_OBJFILES     := $(patsubst $(SRCDIR)%, $(OBJDIR)%, $(patsubst %.$(C_EXT), %.$(OBJ_EXT), $(BIN_OBJFILES) $(CFILES)))
ASM_OBJFILES   := $(patsubst $(SRCDIR)%, $(OBJDIR)%, $(patsubst %.$(ASM_EXT), %.$(OBJ_EXT), $(ASMFILES)))
DSKINCOBJFILES := $(foreach FILE, $(DSKINCSRCFILES), $(patsubst $(DSKFILESDIR)/%, $(OBJDSKINCSDIR)/%, $(FILE)).$(DSKINC_EXT))
OBJFILES       := $(C_OBJFILES) $(ASM_OBJFILES)
GENOBJFILES    := $(GENC_OBJFILES) $(GENASM_OBJFILES)
