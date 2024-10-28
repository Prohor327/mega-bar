require "vendor/premake-ninja/ninja"

workspace "megabar"
    configurations { "Debug", "Release" }
    architecture "x64"
    location "build"
    toolset "Clang"

project "megabar"
    language "C++"
    cppdialect "C++20"


    files
    {
        "src/*.cpp",
    } 

    includedirs
    {
        "/usr/include"
    }

    linkoptions
    {
        "`pkg-config --libs gtk+-3.0`"
    }

    buildoptions
    {
        "`pkg-config --cflags gtk+-3.0`"
    }

    filter "configurations:Debug"
        kind "ConsoleApp"
        runtime "Debug"
        symbols "On"
        targetdir "build/Debug/bin"
        objdir  "build/Debug/obj"

    filter "configurations:Release"
        kind "WindowedApp"
        runtime "Release"
        targetdir "build/Release/bin"
        objdir  "build/Release/obj"