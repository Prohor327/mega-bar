project "glad"
    kind "StaticLib"
    language "C"

    files
    {
        "include/glad/glad.h",
        "include/KHR/khrplatform.h",
        "src/glad.c"
    }

    includedirs
    {
        "include/glad",
        "include/KHR"
    }


    filter "configurations:Debug"
        runtime "Debug"
        symbols "On"
        targetdir "../../build/Debug/bin/lib/glad"
        objdir  "../..build/Debug/obj/glad"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
        targetdir "../..build/Release/bin/lib/glad"
        objdir  "../..build/Release/obj/glad"