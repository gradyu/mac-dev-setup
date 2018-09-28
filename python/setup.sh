#!/usr/bin/env bash
#
# -------------------------------------------------------------------------------
# Filename:    setup.sh
# Revision:    1.0
# Date:        2018-09-14
# Author:      Grady <yhwei876@gmail.com>
# Description: Setup python development
# -------------------------------------------------------------------------------
# Copyright (C) 2018  Grady

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# -------------------------------------------------------------------------------
# Version 1.0
# 1. Call pyenv setup script
# 2. Install global package
# -------------------------------------------------------------------------------
#

PYTHON_VERSION=3.6.5

function check_and_setup_pyenv() {
    command -v pyenv > /dev/null 2>&1 || source $SETUP_ROOT_DIR/python/pyenv/setup.sh
}

function install_python3() {
    command -v pyenv > /dev/null 2>&1 && echo N | pyenv install $PYTHON_VERSION \
        && pyenv global $PYTHON_VERSION && pyenv rehash
}

function config_pip() {
    if [ ! -d $HOME/.config ]; then
        mkdir -p $HOME/.config
    fi
    if [ -f $HOME/.config/pip/pip.conf ]; then
        ln -sfn $SETUP_ROOT_DIR/python/pip $HOME/.config/pip
    fi
}

function install_pipenv() {
    command -v pipenv > /dev/null 2>&1 || (command -v pip > /dev/null 2>&1 \
        && pip install --user pipenv)
}

function main() {
    warn "python setup..."
    check_and_setup_pyenv
    install_python3
    config_pip
    install_pipenv
}

### Main script
main
