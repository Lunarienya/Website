import lustre/attribute
import lustre/element
import lustre/element/html

import config

pub fn footer() {
  html.footer([attribute.class("border-t border-zinc-800")], [
    html.div([attribute.class("mx-auto flex max-w-6xl flex-wrap items-center justify-between gap-3 px-6 py-6 text-sm text-zinc-500")], [
      element.text("Lunarie Arcane"),
      html.a([attribute.href(config.launcher_link()), attribute.target("_blank"), attribute.class("hover:text-zinc-200")], [
        element.text("Elysium"),
      ]),
    ]),
  ])
}
