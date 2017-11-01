#
# Cookbook Name:: sysctl
# Recipe:: attribute_driver
# Author:: jesse nelson <spheromak@gmail.com>
#
# This recipe simply reads attributes and drives them with the provider
#
# Copyright 2011, Jesse Nelson
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

# values from attributes and roles
values = node['sysctl']['values']

values.each_pair do |k, v|
  sysctl "set #{k} to #{v}" do
    name k
    value v
  end
end

include_recipe 'sysctl::default'
