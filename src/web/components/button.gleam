import lustre/attribute.{type Attribute, class}
import lustre/element.{type Element}
import lustre/element/html

pub fn button(
  attributes: List(Attribute(a)),
  children: List(Element(a)),
) -> Element(a) {
  html.button(
    [
      class("flex gap-2 items-center justify-center transition-all active:enabled:scale-[98%] disabled:opacity-50 disabled:cursor-not-allowed"),
      ..attributes
    ],
    children,
  )
}

pub fn md() -> Attribute(a) {
  class("rounded px-4 py-2 text-base")
}
