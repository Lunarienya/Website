import lustre/attribute
import lustre/element
import lustre/element/html

const version = "v1.1"

type InstallType {
  WindowsInstaller
  WindowsPortable
  MacOSIntelInstaller
  MacOSArmInstaller
  LinuxAppimageInstaller
  LinuxFlatpakInstaller
  LinuxPortableInstaller
  LinuxPortableQt5Installer
}

pub fn downloads() {
  html.div([attribute.class("w-full max-w-4xl")], [
    html.div([attribute.class("mb-3")], [
      html.h3([attribute.class("text-xl font-bold tracking-tight")], [
        element.text("Elysium Launcher"),
      ]),
    ]),
    html.div([attribute.class("grid min-w-0 border-y border-zinc-700 md:grid-cols-2")], [
      download_link("Windows", "Installer (.exe)", "icon-windows8", install_link(WindowsInstaller)),
      download_link("macOS", "Intel", "icon-finder", install_link(MacOSIntelInstaller)),
      download_link("macOS", "Apple silicon", "icon-finder", install_link(MacOSArmInstaller)),
      download_link("Linux", "AppImage", "icon-tux", install_link(LinuxAppimageInstaller)),
      download_link("Linux", "Flatpak", "icon-tux", install_link(LinuxFlatpakInstaller)),
      download_link("Linux", "Portable (.tar.gz)", "icon-tux", install_link(LinuxPortableInstaller)),
    ]),
    html.details([attribute.class("mt-4")], [
      html.summary([attribute.class("cursor-pointer text-sm text-zinc-400 hover:text-white")], [
        element.text("Other launcher downloads"),
      ]),
      html.div([attribute.class("mt-3 grid min-w-0 border-y border-zinc-800 md:grid-cols-2")], [
        download_link("Windows", "Portable (.zip)", "icon-windows8", install_link(WindowsPortable)),
        download_link("Linux", "Portable, Qt 5 (.tar.gz)", "icon-tux", install_link(LinuxPortableQt5Installer)),
      ]),
    ]),
  ])
}

fn download_link(platform: String, label: String, icon: String, href: String) {
  html.a([attribute.href(href), attribute.class("group flex min-w-0 min-h-16 items-center gap-3 border-b border-zinc-800 px-3 py-3 transition last:border-b-0 hover:bg-violet-300/10")], [
    html.span([attribute.class(icon <> " text-violet-300")], []),
    html.span([attribute.class("min-w-0 flex flex-1 flex-col text-left")], [
      html.span([attribute.class("text-sm text-zinc-500")], [element.text(platform)]),
      html.span([attribute.class("mt-1 text-sm text-zinc-100")], [element.text(label)]),
    ]),
    html.span([attribute.class("text-xs text-zinc-500 transition group-hover:text-violet-200")], [element.text("Download")]),
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
    MacOSIntelInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-macOS-Legacy-"
      <> version
      <> ".zip"
    MacOSArmInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-macOS-"
      <> version
      <> ".zip"
    LinuxFlatpakInstaller ->
      "https://assets.astrality.party/website-assets/ElysiumLauncher-Linux-1781ba8-Flatpak.flatpak"
    LinuxAppimageInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-x86_64.AppImage"
    LinuxPortableInstaller ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-Qt6-Portable-"
      <> version
      <> ".tar.gz"
    LinuxPortableQt5Installer ->
      "https://github.com/Lunarienya/ElysiumLauncher/releases/download/"
      <> version
      <> "/ElysiumLauncher-Linux-Qt5-Portable-"
      <> version
      <> ".tar.gz"
  }
}
