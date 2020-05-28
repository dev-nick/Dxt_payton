#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-or-later
# Copyright (C) 2018 Raphiel Rollerscaperers (raphielscape)
# Copyright (C) 2018 Rama Bondan Prakoso (rama982)
# Android Kernel Build Script

cd ..

# Install build package for debian based linux
sudo apt install bc bash git-core gnupg build-essential \
    zip curl make automake autogen autoconf autotools-dev libtool shtool python \
    m4 gcc libtool zlib1g-dev flex bison libssl-dev

# Clone toolchain
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9 -b android-10.0.0_r35 aarch64-linux-android-4.9
git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9 -b android-10.0.0_r35 arm-linux-androideabi-4.9

# Clone AnyKernel3
git clone https://github.com/DhineshCool/AnyKernel3 anykernel

#Download Clang
git clone https://github.com/crdroidandroid/android_prebuilts_clang_host_linux-x86_clang-6443078.git -b10.0 cl11
