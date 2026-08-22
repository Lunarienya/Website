import lustre/attribute
import lustre/element
import lustre/element/html

import web/components/button.{button}
import web/components/site

pub fn page() {
  html.main([attribute.class("min-h-screen bg-[#090814] font-['Poppins'] text-white")], [
    html.section([attribute.class("min-h-[75vh] bg-gradient-to-br from-[#1b1231] via-[#0d0b1d] to-[#090814]")], [
      html.div([attribute.class("flex min-h-[60vh] flex-col items-center justify-center px-4 text-center")], [
        html.p([attribute.class("text-xs font-semibold uppercase tracking-[0.28em] text-violet-300")], [element.text("Lost in orbit")]),
        html.h1([attribute.class("mt-5 text-7xl font-semibold tracking-[-0.06em] text-white sm:text-9xl")], [element.text("404")]),
        html.p([attribute.class("mt-5 max-w-md text-sm leading-7 text-zinc-400")], [element.text("That page drifted somewhere beyond the map." )]),
        html.a([attribute.href("/"), attribute.class("mt-8 rounded-full")], [
          button([button.md(), attribute.class("bg-violet-300 font-semibold text-[#160d2a] transition hover:bg-violet-200")], [element.text("Return home")]),
        ]),
      ]),
    ]),
    site.footer(),
  ])
}
