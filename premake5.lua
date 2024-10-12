project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputDir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputDir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",

        "include/**.h"
    }

    defines
    {
        "YAML_CPP_STATIC_DEFINE"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "off"

filter "system:Linux"
    pic "On"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "off"

filter "configurations:Debug"
    runtime "Debug"
    optimize "on"

filter "configurations:Release"
    runtime "Release"
    optimize "on"