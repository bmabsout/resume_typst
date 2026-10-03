// The one-page resume's building blocks, from the shared design system
// (bmabsout/typst-design). This file only binds the names resume.typ uses.
#import "@local/typst-design:0.1.0": resume-style, resume-kit, fa

#let style = resume-style(owner: "Mabsout")
#let kit = resume-kit(style)

#let primary_color = style.colors.primary
#let shade_color = style.colors.shade
#let shade_fg = style.colors.shade-fg
#let shade_line = style.colors.shade-line
#let fonts = style.fonts
#let text-styles = style.text-styles

#let bold = kit.bold
#let icon = kit.icon
#let diamond = kit.diamond
#let section_heading = kit.section-heading
#let contact_column = kit.contact-column
#let contact_info_box = kit.contact-info-box
#let header_section = kit.header-section
#let entry = kit.entry
#let publication = kit.publication
#let skill_group = kit.skill-group
#let section_list = kit.section-list
#let education_entry = kit.education-entry
#let mentorship_entry = kit.mentorship-entry
