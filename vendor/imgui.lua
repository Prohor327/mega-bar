project "imgui"
    kind "StaticLib"
    language "C++"

    files
    {
        "imgui/*.cpp",
        "imgui/*.h",
        "imgui/backends/imgui_impl_glfw.cpp",
        "imgui/backends/imgui_impl_glfw.h",
        "imgui/backends/imgui_impl_opengl3.h",
        "imgui/backends/imgui_impl_opengl3.cpp",
        "imgui/backends/imgui_impl_opengl3_loader.h"
    }

    includedirs
    {
        "imgui", 
        "imgui/backends"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        targetdir "../build/Debug/bin/lib/imgui"
        objdir  "../build/Debug/obj/imgui"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        targetdir "../build/Release/bin/lib/imgui"
        objdir  "../build/Release/obj/imgui"