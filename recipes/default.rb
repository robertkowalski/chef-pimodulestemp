#
# Cookbook Name:: pimodulestemp
# Recipe:: default
#
# Copyright (C) 2013 Robert Kowalski <rok@kowalski.gd>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ruby_block 'add modules for the temperature sensor' do
  block do
    file = Chef::Util::FileEdit.new('/etc/modules')
    file.insert_line_if_no_match('/w1-gpio/', 'w1-gpio')
    file.insert_line_if_no_match('/w1-therm/', 'w1-therm')
    file.write_file
  end
end