project "Spdlog"

  kind "StaticLib"
  language "C++"
  cppdialect "C++11"

  targetdir ("../bin/" .. outputdir .. "/%{prj.name}")
  objdir ("../obj/" .. outputdir .. "/%{prj.name}")

  files
  {
    "",
    "src/*.cpp"
  }

  includedirs
  {
     "include"
  }

  defines
  {
     "SPDLOG_COMPILED_LIB"
  }

  links
  {
  }


  ------------------------------------
  -- CONFIGURATION SPECIFIC FILTERS --
  ------------------------------------
  filter "configurations:Debug"
    defines
    {
    }
    symbols "On"
  filter "configurations:OptimizedDebug"
    defines
    {
    }
    symbols "On"
    optimize "On" -- if this is even possible to do that way!
  filter "configurations:Release"
    defines
    {
    }
    optimize "Full"
    filter {} -- clean slate!
