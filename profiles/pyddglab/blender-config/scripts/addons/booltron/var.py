# ##### BEGIN GPL LICENSE BLOCK #####
#
#  Booltron super add-on for super fast booleans.
#  Copyright (C) 2014-2020  Mikhail Rachinskiy
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# ##### END GPL LICENSE BLOCK #####


import os

import bpy


preview_collections = {}


# Paths
# --------------------------------


ADDON_ID = __package__
ADDON_DIR = os.path.dirname(__file__)
CONFIG_DIR = os.path.join(ADDON_DIR, ".config")

ICONS_DIR = os.path.join(ADDON_DIR, "icons")


# Versioning
# ---------------------------


ver_291 = bpy.app.version >= (2, 91, 0)
