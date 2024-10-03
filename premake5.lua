project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    staticruntime "On"

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
    staticruntime "On"

filter "system:Linux"
    pic "On"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "On"

filter "configurations:Debug"
    runtime "Debug"
    optimize "on"

filter "configurations:Release"
    runtime "Release"
    optimize "on"