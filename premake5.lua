project "Spdlog"

  kind "SharedLib"
  language "C++"
  cppdialect "C++11"

  targetdir ("../../bin/" .. outputdir .. "/%{prj.name}")
  objdir ("../../obj/" .. outputdir .. "/%{prj.name}")

  files
  {
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


  -------------------------------
  -- COMPILER SPECIFIC FILTERS --
  -------------------------------
  filter "toolset:gcc"
    buildoptions
    {
       "-Wall",
       "-Werror",
       "-fvisibility=default", --internal-only linkage for building shared libraries
       "-Wdouble-promotion" --warns about implicit float to double promotion (computation overhead)
    }
    links
    {
       "pthread"
    }

  filter "toolset:clang"

  filter "msc"

  filter {}
