import lustre/attribute.{attribute}
import lustre/element
import lustre/element/html

import web/components/button.{button}
import config

const version = "v1.1"

type InstallType {
	WindowsInstaller
	WindowsPortable
	MacOSIntelInstaller
	MacOSArmInstaller
	LinuxAppimageInstaller
	LinuxPortableInstaller
	LinuxPortableQt5Installer
}

pub fn page() {
  html.main([attribute.class("font-['Poppins'] snap-y ")], [
    html.div([attribute.class("h-dvh flex flex-col gap-4 justify-center items-center snap-start")], [
      html.section([attribute.class("flex gap-4 justify-center items-center mt-auto p-2")], [
        html.img([
          attribute.src(config.logo()),
          attribute.class("h-48")
        ]),
        html.div([attribute.class("flex flex-col gap-2")], [
          html.div([], [
            html.h2([attribute.class("flex flex-wrap items-center text-4xl tracking-tight font-bold text-white")], [
              element.text("The"),
              html.img([attribute.class("h-16 sm:h-20"), attribute.src("/priv/static/astrality.svg")]),
            ]),
            html.h2([attribute.class("gap-0 text-4xl tracking-tight font-bold text-white")], [
              element.text("Minecraft server.")
            ]),
          ]),
          html.p([attribute.class("text-white")], [
            element.text("A community-based vanilla+ Minecraft server to build, make friends and have fun.")
          ]),
          html.div([attribute.class("flex flex-wrap gap-2")], [
            html.a([attribute.href("https://elysium.lunarie.party")], [
              button([button.md(), button.solid(button.Neutral)], [element.text("Elysium")]),
            ])
          ])
        ])
      ]),
      html.img([
        attribute.src("/priv/static/wave.svg"),
        attribute.class("block mt-auto") // Removed mt-6
      ])
    ]),
    html.img([
      attribute.src("/priv/static/wave-2a.svg"),
      attribute.class("rotate-180 block -mt-[2px]") // Adjusted negative margin
    ]),
    html.div([attribute.class("h-80 flex flex-col gap-3 justify-center items-center snap-start")], [
      html.section([attribute.class("flex gap-4 justify-center items-center p-4")], [
        html.div([attribute.class("flex flex-col gap-2")], [
          html.div([], [
            html.h2([attribute.class("gap-0 text-4xl tracking-tight font-bold text-white")], [
              element.text("Step 1: Register for Elysium")
            ]),
          ]),
          html.p([attribute.class("text-white")], [
            element.text("Elysium is the accounts server/system for the Lunarie server. This is used instead of a Microsoft account on the custom launcher."),
            html.br([]),
            element.text("You can manage your skin, cape, and username on Elysium."),
            html.br([]),
            element.text("Registration is invite-only, though you should've been sent a link from an admin.")
          ]),
          html.div([attribute.class("flex flex-wrap gap-2")], [
            html.a([attribute.href("/downloads")], [
              button([button.md(), button.solid(button.Primary)], [element.text("Elysium")]),
            ]),
          ])
        ])
      ]),
    ]),
    html.img([
      attribute.src("/priv/static/wave-2b.svg"),
      attribute.class("mt-0 block")
    ]),
    html.img([
      attribute.src("/priv/static/wave-2a.svg"),
      attribute.class("rotate-180 block -mt-[1px]")
    ]),
    html.section([attribute.class("h-svh flex justify-center items-center snap-start p-4")], [
      html.div([attribute.class("flex flex-col gap-2")], [
        html.div([], [
          html.h2([attribute.class("gap-0 text-4xl tracking-tight font-bold text-white")], [
            element.text("Step 2: Download the launcher")
          ]),
        ]),
        html.p([attribute.class("text-white")], [
          element.text("Elysium Launcher is used to sign in to your Elysium account and add the mod pack for the server."),
        ]),
        html.section([attribute.class("mb-4")], [
          html.section([attribute.class("mb-2")], [
            html.h2([attribute.class("mb-1 text-xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Recommended Downloads")]),
            html.div([attribute.class("flex flex-wrap gap-2")], [
              html.a([attribute.href(install_link(WindowsInstaller))], [
                button([button.md(), button.solid_os(button.Windows)], [
                  html.span([attribute.class("icon-windows8")], []),
                  element.text("Win Installer (.exe)")
                ])
              ]),
              html.a([attribute.href(install_link(MacOSIntelInstaller))], [
                button([button.md(), button.solid_os(button.MacOS)], [
                  html.span([attribute.class("icon-finder")], []),
                  element.text("Mac Intel/x86_64 installer")
                ])
              ]),
              html.a([attribute.href(install_link(MacOSArmInstaller))], [
                button([button.md(), button.solid_os(button.MacOS)], [
                  html.span([attribute.class("icon-finder")], []),
                  element.text("Mac M1/ARM installer")
                ])
              ]),
              html.a([attribute.href(install_link(LinuxAppimageInstaller))], [
                button([button.md(), button.solid_os(button.MacOS)], [
                  html.span([attribute.class("icon-tux")], []),
                  element.text("Linux AppImage")
                ])
              ]),
              html.a([attribute.href(install_link(LinuxPortableInstaller))], [
                button([button.md(), button.solid_os(button.MacOS)], [
                  html.span([attribute.class("icon-tux")], []),
                  element.text("Linux Portable (.tar.gz)")
                ])
              ]),
            ])
          ]),
          html.details([attribute.class("[&_span]:open:-rotate-180")], [
            html.summary([attribute.class("flex cursor-pointer list-none items-center gap-1")], [
              html.span([attribute.class("icon-chevron-circle-down rotate-0 transform transition-all duration-300"), attribute.attribute("data-dropdown", "true")], []),
              html.h2([attribute.class("text-xl tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("All Downloads")]),
            ]),
            html.section([attribute.class("mb-2")], [
              html.h2([attribute.class("text-lg tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Windows x86_64")]),
              html.span([attribute.class("mb-2 text-light")], [element.text("The recommended option is the Installer (.exe)")]),
              html.div([attribute.class("flex flex-wrap gap-2")], [
                html.a([attribute.href(install_link(WindowsInstaller))], [
                  button([button.md(), button.solid_os(button.Windows)], [
                    html.span([attribute.class("icon-windows8 !transform-none")], []),
                    element.text("Installer (.exe)")
                  ])
                ]),
                html.a([attribute.href(install_link(WindowsPortable))], [
                  button([button.md(), button.solid_os(button.Windows)], [
                    html.span([attribute.class("icon-windows8 !transform-none")], []),
                    element.text("Portable (.zip)")
                  ])
                ])
              ])
            ]),
            html.section([attribute.class("mb-2")], [
              html.h2([attribute.class("text-lg tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("MacOS")]),
              html.span([attribute.class("mb-2 text-light")], [element.text("Pick the option that is appropriate based on the Mac you have. Either Intel based or ARM/M1.")]),
              html.div([attribute.class("flex flex-wrap gap-2")], [
                html.a([attribute.href(install_link(MacOSIntelInstaller))], [
                  button([button.md(), button.solid_os(button.MacOS)], [
                    html.span([attribute.class("icon-finder !transform-none")], []),
                    element.text("Intel/x86_64 installer")
                  ])
                ]),
                html.a([attribute.href(install_link(MacOSArmInstaller))], [
                  button([button.md(), button.solid_os(button.MacOS)], [
                    html.span([attribute.class("icon-finder !transform-none")], []),
                    element.text("M1/ARM installer")
                  ])
                ])
              ])
            ]),
            html.section([attribute.class("mb-2")], [
              html.h2([attribute.class("text-lg tracking-tight font-bold text-gray-900 dark:text-white")], [element.text("Linux")]),
              html.span([attribute.class("mb-2 text-light")], [element.text("You should know.")]),
              html.div([attribute.class("flex flex-wrap gap-2")], [
                html.a([attribute.href(install_link(LinuxAppimageInstaller))], [
                  button([button.md(), button.solid_os(button.MacOS)], [
                    html.span([attribute.class("icon-tux !transform-none")], []),
                    element.text("AppImage")
                  ])
                ]),
                html.a([attribute.href(install_link(LinuxPortableInstaller))], [
                  button([button.md(), button.solid_os(button.MacOS)], [
                    html.span([attribute.class("icon-tux !transform-none")], []),
                    element.text("Portable (.tar.gz)")
                  ])
                ]),
                html.a([attribute.href(install_link(LinuxPortableQt5Installer))], [
                  button([button.md(), button.solid_os(button.MacOS)], [
                    html.span([attribute.class("icon-tux !transform-none")], []),
                    element.text("Portable, Qt 5 (.tar.gz)")
                  ])
                ])
              ])
            ])
          ])
        ])
      ])
    ]),
    html.img([
      attribute.src("/priv/static/wave-2b.svg"),
      attribute.class("mt-0 block")
    ]),
    html.div([attribute.class("h-dvh flex flex-col gap-4 justify-center items-center snap-start")], [
      html.img([
        attribute.src("/priv/static/wave-2a.svg"),
        attribute.class("rotate-180 block -mt-[1px]")
      ]),
      html.section([attribute.class("mt-auto mb-auto flex gap-4 justify-center items-center p-4")], [
        html.div([attribute.class("flex flex-col gap-2")], [
          html.div([], [
            html.h2([attribute.class("gap-0 text-4xl tracking-tight font-bold text-white")], [
              element.text("Step 3: Add the instance (modpack) to the launcher")
            ]),
          ]),
          html.p([attribute.class("text-white")], [
            element.text("These 2 modpacks are for 2 different servers. The regular, vanilla+ survival multiplayer is the Solstice instance."),
            html.br([]),
            element.text("While Rogue is a Roguecraft server. You'll more than likely want to download the Solstice instance."),
            html.br([]),
            element.text("Once downloaded, you can drag and drop the ZIP file onto the launcher window."),
            html.br([]),
            element.text("Click the Solstice button below to download it."),
            html.br([]),
          ]),
          html.div([attribute.class("flex flex-wrap gap-2")], [
            html.a([attribute.href(config.modpack_link())], [
              button([button.md(), button.solid(button.Primary)], [element.text("Solstice")]),
            ]),
            html.a([attribute.href(config.modpack_link())], [
              button([button.md(), button.solid(button.Primary)], [element.text("Rogue")]),
            ]),
          ])
        ])
      ]),
    ]),
  ])
}

fn install_link(typ: InstallType) {
	case typ {
		WindowsInstaller -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Windows-MSVC-Setup-" <> version <> ".exe"
		WindowsPortable -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Windows-MSVC-Portable-" <> version <> ".zip"
		MacOSIntelInstaller -> ""
		MacOSArmInstaller -> ""
		LinuxAppimageInstaller -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Linux-x86_64.AppImage"
		LinuxPortableInstaller -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Linux-Qt6-Portable-v1.1.tar.gz"
		LinuxPortableQt5Installer -> "https://github.com/Lunarienya/ElysiumLauncher/releases/download/" <> version <> "/ElysiumLauncher-Linux-Qt5-Portable-v1.1.tar.gz"
	}
}
