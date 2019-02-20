# Import colors from Xresources
import subprocess
def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props
xresources = read_xresources('*')

config.source('private.py')

# c.backend = 'webkit'
c.auto_save.session = True
c.editor.command = ['kitty', 'nvim', '{}']
c.spellcheck.languages = ['en-US']

c.fonts.monospace = '"PragmataPro Liga"'
c.fonts.completion.entry = "10pt monospace"
c.fonts.completion.category = "bold 10pt monospace"
c.fonts.debug_console = "10pt monospace"
c.fonts.downloads = "10pt monospace"
c.fonts.hints = "10pt monospace"
c.fonts.keyhint = "10pt monospace"
c.fonts.messages.error = "10pt monospace"
c.fonts.messages.info = "10pt monospace"
c.fonts.messages.warning = "10pt monospace"
c.fonts.prompts = "10pt monospace"
c.fonts.statusbar = "10pt monospace"
c.fonts.tabs = "10pt monospace"

# Colors via https://mobile.twitter.com/notthebeeee/status/1061903853120118784
c.colors.completion.fg = xresources['*.foreground']
c.colors.completion.odd.bg = xresources['*.background']
c.colors.completion.even.bg = xresources['*.background']
c.colors.completion.category.bg = xresources['*.background']
c.colors.completion.category.border.top = xresources['*.background']
c.colors.completion.category.border.bottom = xresources['*.background']
c.colors.completion.item.selected.bg = xresources['*.foreground']
c.colors.completion.item.selected.fg = xresources['*.background']
c.colors.completion.match.fg = xresources['*.color9']
c.colors.completion.scrollbar.fg = xresources['*.background']
c.colors.completion.scrollbar.bg = xresources['*.background']
c.colors.downloads.bar.bg = xresources['*.background']
c.colors.downloads.start.bg = xresources['*.color4']
c.colors.downloads.stop.bg = xresources['*.color2']
c.colors.messages.error.fg = xresources['*.foreground']
c.colors.messages.error.bg = xresources['*.color1']
c.colors.messages.error.border = xresources['*.color1']
c.colors.messages.warning.bg = xresources['*.color3']
c.colors.messages.warning.fg = xresources['*.background']
c.colors.messages.warning.border = xresources['*.color3']
c.colors.messages.info.bg = xresources['*.color8']
c.colors.messages.info.border = xresources['*.color8']
c.colors.prompts.bg = xresources['*.color8']
c.colors.prompts.fg = xresources['*.foreground']
c.colors.statusbar.normal.bg = xresources['*.background']
c.colors.statusbar.normal.fg = xresources['*.foreground']
c.colors.statusbar.insert.bg = xresources['*.background']
c.colors.statusbar.insert.fg = xresources['*.color10']
c.colors.statusbar.passthrough.fg = xresources['*.color12']
c.colors.statusbar.passthrough.bg = xresources['*.background']
c.colors.statusbar.command.fg = xresources['*.foreground']
c.colors.statusbar.command.bg = xresources['*.background']
c.colors.statusbar.url.fg = xresources['*.color8']
c.colors.statusbar.url.hover.fg = xresources['*.color7']
c.colors.statusbar.url.success.http.fg = xresources['*.color8']
c.colors.statusbar.url.success.https.fg = xresources['*.foreground']
c.colors.tabs.odd.fg = xresources['*.color8']
c.colors.tabs.odd.bg = xresources['*.background']
c.colors.tabs.even.fg = xresources['*.color8']
c.colors.tabs.even.bg = xresources['*.background']
c.colors.tabs.selected.odd.fg = xresources['*.background']
c.colors.tabs.selected.odd.bg = xresources['*.color2']
c.colors.tabs.selected.even.fg = xresources['*.background']
c.colors.tabs.selected.even.bg = xresources['*.color2']
c.colors.webpage.bg = 'white'

# My additions
c.colors.tabs.indicator.error = xresources['*color1']
c.colors.tabs.indicator.start = xresources['*color2']
c.colors.tabs.indicator.stop = xresources['*color2']
c.colors.hints.bg = xresources['*color3']
c.colors.hints.fg = xresources['*background']
c.colors.hints.match.fg = xresources['*color1']
c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
c.colors.keyhint.fg = xresources['*foreground']
c.colors.keyhint.suffix.fg = xresources['*color2']

# Old color setup
# ## Background color of the completion widget category headers.
# c.colors.completion.category.bg = xresources['*background']
# ## Bottom border color of the completion widget category headers.
# c.colors.completion.category.border.bottom = xresources['*background']
# ## Top border color of the completion widget category headers.
# c.colors.completion.category.border.top = xresources['*background']
# ## Foreground color of completion widget category headers.
# c.colors.completion.category.fg = xresources['*background']
# ## Background color of the completion widget for even rows.
# c.colors.completion.even.bg = xresources['*background']
# ## Text color of the completion widget.
# c.colors.completion.fg = xresources['*foreground']
# ## Background color of the selected completion item.
# c.colors.completion.item.selected.bg = xresources['*color3']
# ## Bottom border color of the selected completion item.
# c.colors.completion.item.selected.border.bottom = xresources['*color3']
# ## Top border color of the completion widget category headers.
# c.colors.completion.item.selected.border.top = xresources['*color3']
# ## Foreground color of the selected completion item.
# c.colors.completion.item.selected.fg = xresources['*color8']
# ## Foreground color of the matched text in the completion.
# c.colors.completion.match.fg = xresources['*color15']
# ## Background color of the completion widget for odd rows.
# c.colors.completion.odd.bg = xresources['*background']
# ## Color of the scrollbar in completion view
# c.colors.completion.scrollbar.bg = xresources['*background']
# ## Color of the scrollbar handle in completion view.
# c.colors.completion.scrollbar.fg = xresources['*color7']
# ## Background color for the download bar.
# c.colors.downloads.bar.bg = xresources['*background']
# ## Background color for downloads with errors.
# c.colors.downloads.error.bg = xresources['*color1']
# ## Foreground color for downloads with errors.
# c.colors.downloads.error.fg = xresources['*foreground']
# ## Color gradient start for download backgrounds.
# # c.colors.downloads.start.bg = '#0000aa'
# ## Color gradient start for download text.
# c.colors.downloads.start.fg = xresources['*color1']
# ## Color gradient stop for download backgrounds.
# # c.colors.downloads.stop.bg = '#00aa00'
# ## Color gradient end for download text.
# # c.colors.downloads.stop.fg = solarized['base3']
# ## Color gradient interpolation system for download backgrounds.
# # c.colors.downloads.system.bg = 'rgb'
# ## Color gradient interpolation system for download text.
# # c.colors.downloads.system.fg = 'rgb'
# ## Background color for hints. Note that you can use a `rgba(...)` value
# ## for transparency.
# c.colors.hints.bg = xresources['*color3']
# ## Font color for hints.
# c.colors.hints.fg = xresources['*background']
# ## Font color for the matched part of hints.
# c.colors.hints.match.fg = xresources['*color1']
# ## Background color of the keyhint widget.
# # c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
# ## Text color for the keyhint widget.
# c.colors.keyhint.fg = xresources['*foreground']
# ## Highlight color for keys to complete the current keychain.
# c.colors.keyhint.suffix.fg = xresources['*color2']
# ## Background color of an error message.
# c.colors.messages.error.bg = xresources['*color1']
# ## Border color of an error message.
# c.colors.messages.error.border = xresources['*color1']
# ## Foreground color of an error message.
# c.colors.messages.error.fg = xresources['*foreground']
# ## Background color of an info message.
# c.colors.messages.info.bg = xresources['*background']
# ## Border color of an info message.
# c.colors.messages.info.border = xresources['*color0']
# ## Foreground color an info message.
# c.colors.messages.info.fg = xresources['*foreground']
# ## Background color of a warning message.
# c.colors.messages.warning.bg = xresources['*color2']
# ## Border color of a warning message.
# c.colors.messages.warning.border = xresources['*color2']
# ## Foreground color a warning message.
# c.colors.messages.warning.fg = xresources['*foreground']
# ## Background color for prompts.
# c.colors.prompts.bg = xresources['*background']
# ## Border used around UI elements in prompts.
# c.colors.prompts.border = '1px solid ' + xresources['*background']
# ## Foreground color for prompts.
# c.colors.prompts.fg = xresources['*foreground']
# ## Background color for the selected item in filename prompts.
# c.colors.prompts.selected.bg = xresources['*background']
# ## Background color of the statusbar in caret mode.
# c.colors.statusbar.caret.bg = xresources['*color4']
# ## Foreground color of the statusbar in caret mode.
# c.colors.statusbar.caret.fg = xresources['*foreground']
# ## Background color of the statusbar in caret mode with a selection.
# c.colors.statusbar.caret.selection.bg = xresources['*color2']
# ## Foreground color of the statusbar in caret mode with a selection.
# c.colors.statusbar.caret.selection.fg = xresources['*foreground']
# ## Background color of the statusbar in command mode.
# c.colors.statusbar.command.bg = xresources['*background']
# ## Foreground color of the statusbar in command mode.
# c.colors.statusbar.command.fg = xresources['*foreground']
# ## Background color of the statusbar in private browsing + command mode.
# c.colors.statusbar.command.private.bg = xresources['*color0']
# ## Foreground color of the statusbar in private browsing + command mode.
# c.colors.statusbar.command.private.fg = xresources['*foreground']
# ## Background color of the statusbar in insert mode.
# c.colors.statusbar.insert.bg = xresources['*background']
# ## Foreground color of the statusbar in insert mode.
# c.colors.statusbar.insert.fg = xresources['*foreground']
# ## Background color of the statusbar.
# c.colors.statusbar.normal.bg = xresources['*background']
# ## Foreground color of the statusbar.
# c.colors.statusbar.normal.fg = xresources['*foreground']
# ## Background color of the statusbar in passthrough mode.
# c.colors.statusbar.passthrough.bg = xresources['*background']
# ## Foreground color of the statusbar in passthrough mode.
# c.colors.statusbar.passthrough.fg = xresources['*foreground']
# ## Background color of the statusbar in private browsing mode.
# c.colors.statusbar.private.bg = xresources['*color0']
# ## Foreground color of the statusbar in private browsing mode.
# c.colors.statusbar.private.fg = xresources['*foreground']
# ## Background color of the progress bar.
# c.colors.statusbar.progress.bg = xresources['*background']
# ## Foreground color of the URL in the statusbar on error.
# c.colors.statusbar.url.error.fg = xresources['*color1']
# ## Default foreground color of the URL in the statusbar.
# c.colors.statusbar.url.fg = xresources['*foreground']
# ## Foreground color of the URL in the statusbar for hovered links.
# c.colors.statusbar.url.hover.fg = xresources['*foreground']
# ## Foreground color of the URL in the statusbar on successful load
# ## (http).
# c.colors.statusbar.url.success.http.fg = xresources['*foreground']
# ## Foreground color of the URL in the statusbar on successful load
# ## (https).
# c.colors.statusbar.url.success.https.fg = xresources['*foreground']
# ## Foreground color of the URL in the statusbar when there's a warning.
# c.colors.statusbar.url.warn.fg = xresources['*color2']
# ## Background color of the tab bar.
# # c.colors.tabs.bar.bg = '#555555'
# ## Background color of unselected even tabs.
# c.colors.tabs.even.bg = xresources['*background']
# ## Foreground color of unselected even tabs.
# c.colors.tabs.even.fg = xresources['*foreground']
# ## Color for the tab indicator on errors.
# c.colors.tabs.indicator.error = xresources['*color1']
# ## Color gradient start for the tab indicator.
# c.colors.tabs.indicator.start = xresources['*color8']
# ## Color gradient end for the tab indicator.
# c.colors.tabs.indicator.stop = xresources['*color8']
# ## Color gradient interpolation system for the tab indicator.
# # c.colors.tabs.indicator.system = 'rgb'
# ## Background color of unselected odd tabs.
# c.colors.tabs.odd.bg = xresources['*background']
# ## Foreground color of unselected odd tabs.
# c.colors.tabs.odd.fg = xresources['*foreground']
# ## Background color of selected even tabs.
# c.colors.tabs.selected.even.bg = xresources['*color2']
# ## Foreground color of selected even tabs.
# c.colors.tabs.selected.even.fg = xresources['*background']
# ## Background color of selected odd tabs.
# c.colors.tabs.selected.odd.bg = xresources['*color2']
# ## Foreground color of selected odd tabs.
# c.colors.tabs.selected.odd.fg = xresources['*background']

## Blur input focus when leaving insert mode
config.bind('<escape>', 'leave-mode ;; jseval -q document.activeElement.blur()', mode='insert')
config.bind('<escape>', 'jseval -q document.activeElement.blur()')

config.bind('j', 'scroll-page 0 0.025')
config.bind('k', 'scroll-page 0 -0.025')
config.bind('d', 'scroll-page 0 0.5')
config.bind('u', 'scroll-page 0 -0.5')
config.bind('<ctrl-j>', 'scroll down')
config.bind('<ctrl-k>', 'scroll up')
config.bind('<ctrl-d>', 'repeat 10 scroll down')
config.bind('<ctrl-u>', 'repeat 10 scroll up')

config.bind('e', 'fake-key <ESC>')
config.bind('U', 'undo')
config.bind('x', 'tab-close')

config.bind(';v', 'hint links spawn mpv --force-window --no-terminal --keep-open=yes {hint-url}')
config.bind(';V', 'hint links spawn umpv --playlist --force-window --no-terminal --keep-open=yes {hint-url}')
config.bind('V', 'spawn --userscript view_in_umpv')
config.bind('<ctrl-r>', 'spawn --userscript readability')
config.bind('<ctrl-t>', 'spawn --userscript taskadd project:reading.web')
config.bind(',n', 'config-cycle content.user_stylesheets ~/vendor/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""')

c.downloads.location.directory = "~/Downloads"
c.downloads.location.prompt = False

c.content.cookies.accept = "no-3rdparty"
