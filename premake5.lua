require "vendor/premake-ninja/ninja"

workspace "megabar"
    configurations { "Debug", "Release" }
    architecture "x64"
    location "build"
    toolset "Clang"

project "megabar"
    language "C++"
    cppdialect "C++20"
    toolset "Clang"

    files
    {
        "src/*.cpp",
    } 

    build { "`pkg-config --cflags gtk+-3.0 pkg-config --libs gtk+-3.0`"}

    filter "configurations:Debug"
        kind "ConsoleApp"
        runtime "Debug"
        symbols "On"
        linkoptions { "-fuse-ld=lld -g -Wl" }
        targetdir "build/Debug/bin"
        objdir  "build/Debug/obj"

    filter "configurations:Release"
        kind "WindowedApp"
        runtime "Release"
        targetdir "build/Release/bin"
        objdir  "build/Release/obj"