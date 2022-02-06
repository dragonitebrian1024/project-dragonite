workspace "Project"
    architecture "x64"
    configurations { "Debug", "Release" }
    startproject "Pong"
    
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Pong"
    location "Pong"
    kind "ConsoleApp"
    language "C++"
    staticruntime "Off"
    
    targetdir ("Binaries/" .. outputdir .. "/%{prj.name}")
    objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")
    
    files {
        "%{prj.name}/main.cpp",
        "%{prj.name}/Private/**.cpp",
        "%{prj.name}/Public/**.h",
        "%{prj.name}/Assets/**",
    }
    
    includedirs {
        "%{prj.name}/Engine",
        "ThirdParty/SDL2/SDL2/include",
        "ThirdParty/SDL2/SDL2_image/include",
        "ThirdParty/SDL2/SDL2_ttf/include",
    }

    libdirs {
        "ThirdParty/SDL2/SDL2/lib",
        "ThirdParty/SDL2/SDL2_image/lib",
        "ThirdParty/SDL2/SDL2_ttf/lib",
    }

    links {
        "SDL2.lib",
        "SDL2main.lib",
        "SDL2_image.lib",
        "SDL2_ttf.lib",
    }

    filter "system:windows"
        cppdialect "C++20"
        systemversion "latest"

        postbuildcommands {
            ("{COPY} ../ThirdParty/SDL2/lib/SDL2.dll ../Binaries/" .. outputdir .. "/Pong"),
            ("{COPY} ../ThirdParty/SDL2_Image/lib/SDL2_image.dll ../Binaries/" .. outputdir .. "/Pong"),
            ("{COPY} ../ThirdParty/SDL2_Image/lib/libpng16-16.dll ../Binaries/" .. outputdir .. "/Pong"),
            ("{COPY} ../ThirdParty/SDL2_Image/lib/zlib1.dll ../Binaries/" .. outputdir .. "/Pong"),
            ("{COPY} ../ThirdParty/SDL2_ttf/lib/SDL2_ttf.dll ../Binaries/" .. outputdir .. "/Pong"),
        }
    
    filter "configurations:Debug"
        defines { "AE_DEBUG" }
        runtime "Debug"
        symbols "On"
        
    filter "configurations:Release"
        defines { "AE_RELEASE" }
        runtime "Release"
        optimize "On"
        