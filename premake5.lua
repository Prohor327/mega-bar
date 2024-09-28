require "vendor/premake-ninja/ninja"

workspace "megabar"
    configurations { "Debug", "Release" }
    architecture "x64"
    location "build"
    toolset "Clang"
    include "vendor/glad/glad.lua"
    include "vendor/imgui.lua"

project "megabar"
    language "C++"
    cppdialect "C++20"
    toolset "Clang"

    includedirs
    {
        "vendor/glad/include/glad",
        "vendor/imgui",
        "vendor/imgui/backends"
    }

    files
    {
        "src/*.cpp"
    } 

    links { "glfw", "glad", "GL", "imgui" }

    filter "configurations:Debug"
        kind "ConsoleApp"
        runtime "Debug"
        defines { "DEBUG" }
        symbols "On"
        targetdir "build/Debug/bin"
        objdir  "build/Debug/obj"

    filter "configurations:Release"
        kind "WindowedApp"
        runtime "Release"
        targetdir "build/Release/bin"
        objdir  "build/Release/obj"