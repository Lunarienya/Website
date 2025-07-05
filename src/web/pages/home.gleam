import lustre/attribute
import lustre/element
import lustre/element/html

import web/components/button.{button}

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
  html.main([attribute.class("min-h-screen flex flex-col")], [
    html.div(
      [
        attribute.class(
          "h-screen flex flex-nowrap flex-col p-4 space-y-5 items-center justify-center border-b-2 border-b-zinc-600",
        ),
      ],
      [
        html.div(
          [
            attribute.class(
              "gap-2 md:w-full flex flex-row flex-wrap md:flex-nowrap items-center justify-center md:justify-evenly",
            ),
          ],
          [
            html.img([
              attribute.src(
                "https://assets.astrality.party/brand/lunarie/lunarie.svg",
              ),
              attribute.class("w-1/5"),
            ]),
            html.div([attribute.class("flex flex-col gap-4")], [
              html.h1([attribute.class("text-7xl font-bold")], [
                element.text("Lunarie: Andromeda"),
              ]),
              html.h2([attribute.class("text-3xl font-semibold")], [
                element.text("The final frontier."),
              ]),
              html.p([], [
                element.text("A lightly modded, free to play Minecraft server."),
                html.br([]),
                element.text(
                  "We provide a custom launcher and account system, so you play Minecraft with others at zero cost.",
                ),
                html.br([]),
                element.text("No Microsft account with Minecraft required."),
              ]),
              html.a(
                [
                  attribute.href("https://elysium.lunarie.party"),
                  attribute.target("_blank"),
                ],
                [
                  html.button(
                    [
                      attribute.class(
                        "flex gap-2 items-center justify-center transition-all active:enabled:scale-[98%] disabled:opacity-50 disabled:cursor-not-allowed rounded px-4 py-2 text-base bg-zinc-700 text-white hover:enabled:bg-neutral/90",
                      ),
                    ],
                    [element.text("Elysium")],
                  ),
                ],
              ),
            ]),
          ],
        ),
      ],
    ),
    html.div([attribute.class("flex flex-col gap-10")], [
      html.div(
        [
          attribute.class(
            "px-6 h-screen flex flex-col gap-2 items-center justify-center border-b border-b-zinc-600",
          ),
        ],
        [
          html.h1([attribute.class("text-6xl font-bold mb-2")], [
            element.text("Step 1: Get On Elysium"),
          ]),
          html.p([attribute.class("text-center")], [
            element.text(
              "Lunarie is invite only. If you have been asked to join by a Lunarie member,",
            ),
            html.br([]),
            element.text(
              "you will be added to the appropriate channels (WhatsApp and/or Discord).",
            ),
            html.br([]),
            html.br([]),
            element.text(
              "To login on the launcher, you need a Minecraft profile, which is managed separately by the Elysium service. Click the button below, then login with Astrality. Copy the Minecraft Token from your Elysium profile, as that is what you have to use as your password to login on the launcher.",
            ),
          ]),
          html.video(
            [attribute.class("rounded-lg md:w-1/2"), attribute.controls(True)],
            [
              html.source([
                attribute.src(
                  "https://assets.astrality.party/lunarie/website/videos/video-1-elyisum.mp4",
                ),
                attribute.type_("video/mp4"),
              ]),
            ],
          ),
        ],
      ),
      html.div(
        [
          attribute.class(
            "px-6 h-screen flex flex-col gap-2 items-center justify-center border-b border-b-zinc-600",
          ),
        ],
        [
          html.h1([attribute.class("text-6xl font-bold mb-2")], [
            element.text("Step 2: Download & Install The Launcher"),
          ]),
          html.p([attribute.class("")], [
            element.text("Elysium Launcher is required to play."),
          ]),
          downloads(),
        ],
      ),
      html.div(
        [
          attribute.class(
            "px-6 h-screen flex flex-col gap-2 items-center justify-center border-b border-b-zinc-600",
          ),
        ],
        [
          html.h1([attribute.class("text-6xl font-bold mb-2")], [
            element.text("Step 3: Setup The Launcher"),
          ]),
          html.p([attribute.class("")], [
            element.text(
              "Run the launcher for the first time setup, then download Java in the launcher (if you don't have Java 21 installed).",
            ),
          ]),
          html.video(
            [attribute.class("rounded-lg md:w-1/2"), attribute.controls(True)],
            [
              html.source([
                attribute.src(
                  "https://assets.astrality.party/lunarie/website/videos/video-2-launcher.mp4",
                ),
                attribute.type_("video/mp4"),
              ]),
            ],
          ),
        ],
      ),
      html.div(
        [
          attribute.class(
            "px-6 h-screen flex flex-col gap-2 items-center justify-center border-b border-b-zinc-600",
          ),
        ],
        [
          html.h1([attribute.class("text-6xl font-bold mb-2")], [
            element.text("Step 4: Add Andromeda & Play!"),
          ]),
          html.p([attribute.class("")], [
            element.text("The final step, drag and drop the Andromeda zip "),
            html.b([], [element.text("(do NOT extract it)")]),
            element.text(
              " and double click to launch. Click the button below to download.",
            ),
          ]),
          html.a(
            [
              attribute.href(
                "https://assets.astrality.party/lunarie/instances/Lunarie%20Andromeda.zip",
              ),
            ],
            [
              html.button(
                [
                  attribute.class(
                    "bg-violet-500 rounded px-4 py-2 text-base text-white hover:enabled:bg-primary/90 flex gap-2 items-center justify-center transition-all active:enabled:scale-[98%] disabled:opacity-50 disabled:cursor-not-allowed",
                  ),
                ],
                [element.text("Andromeda")],
              ),
            ],
          ),
          html.video(
            [attribute.class("rounded-lg md:w-1/2"), attribute.controls(True)],
            [
              html.source([
                attribute.src(
                  "https://assets.astrality.party/lunarie/website/videos/video-3-instance.mp4",
                ),
                attribute.type_("video/mp4"),
              ]),
            ],
          ),
        ],
      ),
    ]),
  ])
}

fn downloads() {
  html.section([attribute.class("mb-4")], [
    html.section([attribute.class("mb-4")], [
      html.h2([attribute.class("mb-1 text-xl tracking-tight font-bold")], [
        element.text("Recommended Downloads"),
      ]),
      html.div([attribute.class("flex flex-wrap gap-2")], [
        html.a([attribute.href(install_link(WindowsInstaller))], [
          button([button.md(), button.solid_os(button.Windows)], [
            html.span([attribute.class("icon-windows8")], []),
            element.text("Win Installer (.exe)"),
          ]),
        ]),
        html.a([attribute.href(install_link(MacOSIntelInstaller))], [
          button([button.md(), button.solid_os(button.MacOS)], [
            html.span([attribute.class("icon-finder")], []),
            element.text("Mac Intel/x86_64 installer"),
          ]),
        ]),
        html.a([attribute.href(install_link(MacOSArmInstaller))], [
          button([button.md(), button.solid_os(button.MacOS)], [
            html.span([attribute.class("icon-finder")], []),
            element.text("Mac M1/ARM installer"),
          ]),
        ]),
        html.a([attribute.href(install_link(LinuxAppimageInstaller))], [
          button([button.md(), button.solid_os(button.MacOS)], [
            html.span([attribute.class("icon-tux")], []),
            element.text("Linux AppImage"),
          ]),
        ]),
        html.a([attribute.href(install_link(LinuxPortableInstaller))], [
          button([button.md(), button.solid_os(button.MacOS)], [
            html.span([attribute.class("icon-tux")], []),
            element.text("Linux Portable (.tar.gz)"),
          ]),
        ]),
      ]),
    ]),
    html.details([attribute.class("[&_span]:open:-rotate-180")], [
      html.summary(
        [attribute.class("flex cursor-pointer list-none items-center gap-1 mb")],
        [
          html.span(
            [
              attribute.class(
                "icon-chevron-circle-down rotate-0 transform transition-all duration-300",
              ),
              attribute.attribute("data-dropdown", "true"),
            ],
            [],
          ),
          html.h2([attribute.class("text-xl tracking-tight font-bold")], [
            element.text("All Downloads"),
          ]),
        ],
      ),
      html.section([attribute.class("mb-4")], [
        html.h2([attribute.class("text-lg tracking-tight font-bold")], [
          element.text("Windows x86_64"),
        ]),
        html.span([attribute.class("mb-2 text-light")], [
          element.text("The recommended option is the Installer (.exe)"),
        ]),
        html.div([attribute.class("flex flex-wrap gap-2")], [
          html.a([attribute.href(install_link(WindowsInstaller))], [
            button([button.md(), button.solid_os(button.Windows)], [
              html.span([attribute.class("icon-windows8 !transform-none")], []),
              element.text("Installer (.exe)"),
            ]),
          ]),
          html.a([attribute.href(install_link(WindowsPortable))], [
            button([button.md(), button.solid_os(button.Windows)], [
              html.span([attribute.class("icon-windows8 !transform-none")], []),
              element.text("Portable (.zip)"),
            ]),
          ]),
        ]),
      ]),
      html.section([attribute.class("mb-4")], [
        html.h2([attribute.class("text-lg tracking-tight font-bold")], [
          element.text("MacOS"),
        ]),
        html.span([attribute.class("mb-2 text-light")], [
          element.text(
            "Pick the option that is appropriate based on the Mac you have. Either Intel based or ARM/M1.",
          ),
        ]),
        html.div([attribute.class("flex flex-wrap gap-2")], [
          html.a([attribute.href(install_link(MacOSIntelInstaller))], [
            button([button.md(), button.solid_os(button.MacOS)], [
              html.span([attribute.class("icon-finder !transform-none")], []),
              element.text("Intel/x86_64 installer"),
            ]),
          ]),
          html.a([attribute.href(install_link(MacOSArmInstaller))], [
            button([button.md(), button.solid_os(button.MacOS)], [
              html.span([attribute.class("icon-finder !transform-none")], []),
              element.text("M1/ARM installer"),
            ]),
          ]),
        ]),
      ]),
      html.section([attribute.class("mb-4")], [
        html.h2([attribute.class("text-lg tracking-tight font-bold")], [
          element.text("Linux"),
        ]),
        html.span([attribute.class("mb-2 text-light")], [
          element.text("You should know."),
        ]),
        html.div([attribute.class("flex flex-wrap gap-2")], [
          html.a([attribute.href(install_link(LinuxAppimageInstaller))], [
            button([button.md(), button.solid_os(button.MacOS)], [
              html.span([attribute.class("icon-tux !transform-none")], []),
              element.text("AppImage"),
            ]),
          ]),
          html.a([attribute.href(install_link(LinuxPortableInstaller))], [
            button([button.md(), button.solid_os(button.MacOS)], [
              html.span([attribute.class("icon-tux !transform-none")], []),
              element.text("Portable (.tar.gz)"),
            ]),
          ]),
          html.a([attribute.href(install_link(LinuxPortableQt5Installer))], [
            button([button.md(), button.solid_os(button.MacOS)], [
              html.span([attribute.class("icon-tux !transform-none")], []),
              element.text("Portable, Qt 5 (.tar.gz)"),
            ]),
          ]),
        ]),
      ]),
    ]),
  ])
}

fn install_link(typ: InstallType) {
  case typ {
    WindowsInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Windows-MSVC-Setup-"
      <> version
      <> ".exe"
    WindowsPortable ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Windows-MSVC-Portable-"
      <> version
      <> ".zip"
    MacOSIntelInstaller -> ""
    MacOSArmInstaller -> ""
    LinuxAppimageInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-x86_64.AppImage"
    LinuxPortableInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-Qt6-Portable-v1.1.tar.gz"
    LinuxPortableQt5Installer ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-Qt5-Portable-v1.1.tar.gz"
  }
}
