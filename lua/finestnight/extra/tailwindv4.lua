local util = require("finestnight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-finestnight-${_style}-bg: oklch(from ${bg} l c h);
  --color-finestnight-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-finestnight-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-finestnight-${_style}-bg-float: var(--color-finestnight-${_style}-bg-dark);
  --color-finestnight-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-finestnight-${_style}-bg-popup: var(--color-finestnight-${_style}-bg-dark);
  --color-finestnight-${_style}-bg-search: var(--color-finestnight-${_style}-blue0);
  --color-finestnight-${_style}-bg-sidebar: var(--color-finestnight-${_style}-bg-dark);
  --color-finestnight-${_style}-bg-statusline: var(--color-finestnight-${_style}-bg-dark);
  --color-finestnight-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-finestnight-${_style}-black: oklch(from ${black} l c h);
  --color-finestnight-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-finestnight-${_style}-blue: oklch(from ${blue} l c h);
  --color-finestnight-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-finestnight-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-finestnight-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-finestnight-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-finestnight-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-finestnight-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-finestnight-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-finestnight-${_style}-border: var(--color-finestnight-${_style}-black);
  --color-finestnight-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-finestnight-${_style}-comment: oklch(from ${comment} l c h);
  --color-finestnight-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-finestnight-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-finestnight-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-finestnight-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-finestnight-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-finestnight-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-finestnight-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-finestnight-${_style}-diff-text: var(--color-finestnight-${_style}-blue7);
  --color-finestnight-${_style}-error: var(--color-finestnight-${_style}-red1);
  --color-finestnight-${_style}-fg: oklch(from ${fg} l c h);
  --color-finestnight-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-finestnight-${_style}-fg-float: var(--color-finestnight-${_style}-fg);
  --color-finestnight-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-finestnight-${_style}-fg-sidebar: var(--color-finestnight-${_style}-fg-dark);
  --color-finestnight-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-finestnight-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-finestnight-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-finestnight-${_style}-git-ignore: var(--color-finestnight-${_style}-dark3);
  --color-finestnight-${_style}-green: oklch(from ${green} l c h);
  --color-finestnight-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-finestnight-${_style}-green1: oklch(from ${green1} l c h);
  --color-finestnight-${_style}-green2: oklch(from ${green2} l c h);
  --color-finestnight-${_style}-hint: var(--color-finestnight-${_style}-teal);
  --color-finestnight-${_style}-info: var(--color-finestnight-${_style}-blue2);
  --color-finestnight-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-finestnight-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-finestnight-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-finestnight-${_style}-orange: oklch(from ${orange} l c h);
  --color-finestnight-${_style}-purple: oklch(from ${purple} l c h);
  --color-finestnight-${_style}-rainbow1: var(--color-finestnight-${_style}-blue);
  --color-finestnight-${_style}-rainbow2: var(--color-finestnight-${_style}-yellow);
  --color-finestnight-${_style}-rainbow3: var(--color-finestnight-${_style}-green);
  --color-finestnight-${_style}-rainbow4: var(--color-finestnight-${_style}-teal);
  --color-finestnight-${_style}-rainbow5: var(--color-finestnight-${_style}-magenta);
  --color-finestnight-${_style}-rainbow6: var(--color-finestnight-${_style}-purple);
  --color-finestnight-${_style}-rainbow7: var(--color-finestnight-${_style}-orange);
  --color-finestnight-${_style}-rainbow8: var(--color-finestnight-${_style}-red);
  --color-finestnight-${_style}-red: oklch(from ${red} l c h);
  --color-finestnight-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-finestnight-${_style}-red1: oklch(from ${red1} l c h);
  --color-finestnight-${_style}-teal: oklch(from ${teal} l c h);
  --color-finestnight-${_style}-todo: var(--color-finestnight-${_style}-blue);
  --color-finestnight-${_style}-warning: var(--color-finestnight-${_style}-yellow);
  --color-finestnight-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-finestnight-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
