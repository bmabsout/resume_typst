// The CV's building blocks, from the shared design system
// (bmabsout/typst-design). This file only binds the names the sections use.
#import "@local/typst-design:0.1.0": cv-style, cv-kit, cv-page, ramps

#let style = cv-style(owner: "Mabsout")
#let kit = cv-kit(style)

#let primary_color = style.colors.primary
#let shade_color = style.colors.shade
#let shade_fg = style.colors.shade-fg
#let shade_line = style.colors.shade-line
#let fonts = style.fonts
#let cv_styling = style

#let diamond = kit.diamond
#let long_line = kit.rule
#let labeled = kit.labeled
#let emphasis = kit.emphasis
#let links = kit.links
#let titled_list = kit.titled-list
#let cv_titled_block = kit.titled-block
#let stack_unbreakable = kit.stack-unbreakable
#let cv_section_list = kit.section-list
#let cv_sections = kit.sections
#let cv_subsection = kit.subsection
#let cv_subsections_list = kit.subsections-list
#let entry_heading = kit.entry-heading
#let cv_entry = kit.entry
#let cv_entries = kit.entries
#let review_venue_entry = kit.review-venue-entry
#let review_venues = kit.review-venues
#let cv_publication_entry = kit.publication-entry
#let cv_icon = kit.icon
#let cv_contact_column = kit.contact-column
#let cv_contact_box = kit.contact-box
#let cv_header = kit.header
#let muted_color = ramps.maroon.sample(60%)
