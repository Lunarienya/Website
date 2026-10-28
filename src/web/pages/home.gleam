import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html

import config
import web/components/launcher_downloads

pub fn page() {
  html.main([attribute.class("min-h-screen bg-[#0b0b12] font-['Poppins'] text-zinc-100")], [
    intro(),
    guide(),
  ])
}

fn guide() {
  html.div([attribute.class("flex flex-col")], [
    step("1", "Get on Elysium", [
      html.p([attribute.class("max-w-3xl leading-7 text-zinc-300")], [
        element.text("Lunarie is invite only. If you have been asked to join by a Lunarie member, you will be added to the appropriate WhatsApp and/or Discord channels."),
      ]),
      html.p([attribute.class("max-w-3xl leading-7 text-zinc-300")], [
        element.text("To log in on the launcher, create or manage your Minecraft profile through Elysium. Copy the Minecraft Token from your Elysium profile and use it as your launcher password."),
      ]),
      plain_link(config.launcher_link(), "Open Elysium", True),
      tutorial_video("https://assets.astrality.party/lunarie/website/videos/video-1-elyisum.mp4"),
    ]),
    step("2", "Install the launcher", [
      html.p([attribute.class("leading-7 text-zinc-300")], [
        element.text("Elysium Launcher is required to play. Choose the download for your operating system."),
      ]),
      launcher_downloads.downloads(),
    ]),
    step("3", "Set up the launcher", [
      html.p([attribute.class("max-w-3xl leading-7 text-zinc-300")], [
        element.text("Run the launcher for the first-time setup, then download Java 21 in the launcher if you do not already have it installed."),
      ]),
      tutorial_video("https://assets.astrality.party/lunarie/website/videos/video-2-launcher.mp4"),
    ]),
    step("4", "Add Mono and play", [
      html.p([attribute.class("max-w-3xl leading-7 text-zinc-300")], [
        element.text("Drag and drop the Mono ZIP onto the launcher and double-click it to launch."),
        html.br([]),
        html.b([], [element.text("Do not extract the ZIP.")]),
      ]),
      plain_link(config.modpack_link(), "Download Mono", False),
      tutorial_video("https://assets.astrality.party/lunarie/website/videos/video-3-instance.mp4"),
    ]),
  ])
}

fn intro() {
  html.section(
    [
      attribute.attribute("id", "top"),
      attribute.class("flex min-h-screen items-center border-b border-zinc-800 px-6 py-16 sm:px-10 lg:px-16"),
    ],
    [
      html.div([attribute.class("mx-auto grid w-full max-w-7xl items-end gap-x-12 gap-y-10 lg:grid-cols-[1.35fr_0.65fr] lg:gap-x-24")], [
        html.div([attribute.class("max-w-3xl")], [
          html.h1([attribute.class("text-6xl font-bold leading-[0.88] tracking-[-0.06em] sm:text-8xl")], [
            element.text("Lunarie"),
            html.br([]),
            html.span([attribute.class("text-violet-300")], [element.text("Mono")]),
          ]),
        ]),
        html.div([attribute.class("flex justify-center lg:row-span-2 lg:justify-end")], [
          html.img([
            attribute.src(config.logo()),
            attribute.attribute("alt", "Lunarie logo"),
            attribute.class("h-auto w-56 sm:w-72 lg:w-[26rem]"),
          ]),
        ]),
        html.div([attribute.class("max-w-2xl border-t border-zinc-700 pt-6")], [
          html.p([attribute.class("max-w-xl text-base leading-7 text-zinc-300 sm:text-lg")], [
            element.text("A free-to-play Fabric 1.20.1 Minecraft server and modpack."),
            html.br([]),
            element.text("Elysium is required to play."),
            html.br([]),
            element.text("No Microsoft account with Minecraft required."),
          ]),
          html.div([attribute.class("mt-6 flex flex-wrap items-center gap-5")], [
            html.a([attribute.href(config.launcher_link()), attribute.target("_blank"), attribute.class("inline-flex rounded bg-zinc-700 px-4 py-2 text-base text-white transition hover:bg-zinc-600")], [
              element.text("Elysium"),
            ]),
            html.a([attribute.href("/#step-1"), attribute.class("text-sm text-violet-200 underline decoration-violet-300/60 underline-offset-4 hover:text-white")], [
              element.text("Begin setup"),
            ]),
          ]),
        ]),
      ]),
    ],
  )
}

fn step(number: String, title: String, content: List(Element(msg))) {
  html.section(
    [
      attribute.attribute("id", "step-" <> number),
      attribute.class("min-h-screen border-b border-zinc-800 px-6 py-16 sm:px-10 lg:px-16"),
    ],
    [
      html.div([attribute.class("mx-auto grid min-h-[calc(100vh-8rem)] min-w-0 max-w-7xl items-center gap-12 lg:grid-cols-[minmax(0,0.8fr)_minmax(0,1.2fr)] lg:gap-16")], [
        step_heading(number, title),
        html.div([attribute.class("min-w-0 flex flex-col items-start gap-6")], content),
      ]),
    ],
  )
}

fn step_heading(number: String, title: String) {
  html.div([attribute.class("min-w-0 border-l-2 border-violet-300 pl-5 lg:border-l-0 lg:border-r-2 lg:pl-0 lg:pr-10")], [
    html.p([attribute.class("text-sm font-medium text-violet-300")], [
      element.text("Step " <> number),
    ]),
    html.h2([attribute.class("mt-4 break-words text-4xl font-bold leading-[0.95] tracking-[-0.04em] sm:text-6xl lg:text-6xl xl:text-7xl")], [
      element.text(title),
    ]),
  ])
}

fn plain_link(href: String, label: String, external: Bool) {
  let common = attribute.class("inline-flex items-center gap-3 border border-zinc-600 px-4 py-3 text-sm font-medium text-zinc-100 transition hover:border-violet-300 hover:bg-violet-300/10")
  let children = [
    element.text(label),
    html.span([attribute.class("text-violet-300")], [element.text("↗")]),
  ]

  case external {
    True -> html.a([attribute.href(href), attribute.target("_blank"), common], children)
    False -> html.a([attribute.href(href), common], children)
  }
}

fn tutorial_video(src: String) {
  html.video(
    [
      attribute.class("w-full max-w-3xl border border-zinc-700 bg-black"),
      attribute.controls(True),
      attribute.attribute("preload", "metadata"),
    ],
    [
      html.source([
        attribute.src(src),
        attribute.type_("video/mp4"),
      ]),
    ],
  )
}
