#!/usr/bin/env bash
#
# iSystemAdministrator -- <iSA>! a MVC pattern selection-^MENU
# https://github.com/loweboard/iSystemAdministrator
# Copyright (C) 2015 LOWE/SAAU-LOON <224428@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#


function isa ()
{
    local stdin_argv="${@:-none}"
    local closest="$(ls "${static_dirname_root}/"*".controller.sh" |  \
                     awk '{print gsub(/\./, "."), $0}'             |  \
                     sort -n | head -1 | awk '{print $2}')"
    bash "${closest}" "${stdin_argv}"
}
#
isa-debug-off
isa-break-off
isa-autoyes-off
isa-x-off
isa-freeze-off
isa-timer-off
isa-runonce-off
isa-verbose-off
