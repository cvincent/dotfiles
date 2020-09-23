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
c.session.lazy_restore = True
c.editor.command = ['kitty', 'nvim', '{}']
c.spellcheck.languages = ['en-US']
c.tabs.position = 'right'

c.fonts.default_family = "PragmataPro Liga"
c.fonts.completion.entry = "10pt default_family"
c.fonts.completion.category = "bold 10pt default_family"
c.fonts.debug_console = "10pt default_family"
c.fonts.downloads = "10pt default_family"
c.fonts.hints = "10pt default_family"
c.fonts.keyhint = "10pt default_family"
c.fonts.messages.error = "10pt default_family"
c.fonts.messages.info = "10pt default_family"
c.fonts.messages.warning = "10pt default_family"
c.fonts.prompts = "10pt default_family"
c.fonts.statusbar = "10pt default_family"
# c.fonts.tabs = "10pt default_family"

# Colors via https://mobile.twitter.com/notthebeeee/status/1061903853120118784
# c.colors.completion.fg = xresources['*.foreground']
# c.colors.completion.odd.bg = xresources['*.background']
# c.colors.completion.even.bg = xresources['*.background']
# c.colors.completion.category.bg = xresources['*.background']
# c.colors.completion.category.border.top = xresources['*.background']
# c.colors.completion.category.border.bottom = xresources['*.background']
# c.colors.completion.item.selected.bg = xresources['*.foreground']
# c.colors.completion.item.selected.fg = xresources['*.background']
# c.colors.completion.match.fg = xresources['*.color9']
# c.colors.completion.scrollbar.fg = xresources['*.background']
# c.colors.completion.scrollbar.bg = xresources['*.background']
# c.colors.downloads.bar.bg = xresources['*.background']
# c.colors.downloads.start.bg = xresources['*.color4']
# c.colors.downloads.stop.bg = xresources['*.color2']
# c.colors.messages.error.fg = xresources['*.foreground']
# c.colors.messages.error.bg = xresources['*.color1']
# c.colors.messages.error.border = xresources['*.color1']
# c.colors.messages.warning.bg = xresources['*.color3']
# c.colors.messages.warning.fg = xresources['*.background']
# c.colors.messages.warning.border = xresources['*.color3']
# c.colors.messages.info.bg = xresources['*.color8']
# c.colors.messages.info.border = xresources['*.color8']
# c.colors.prompts.bg = xresources['*.color8']
# c.colors.prompts.fg = xresources['*.foreground']
# c.colors.statusbar.normal.bg = xresources['*.background']
# c.colors.statusbar.normal.fg = xresources['*.foreground']
# c.colors.statusbar.insert.bg = xresources['*.background']
# c.colors.statusbar.insert.fg = xresources['*.color10']
# c.colors.statusbar.passthrough.fg = xresources['*.color12']
# c.colors.statusbar.passthrough.bg = xresources['*.background']
# c.colors.statusbar.command.fg = xresources['*.foreground']
# c.colors.statusbar.command.bg = xresources['*.background']
# c.colors.statusbar.url.fg = xresources['*.color8']
# c.colors.statusbar.url.hover.fg = xresources['*.color7']
# c.colors.statusbar.url.success.http.fg = xresources['*.color8']
# c.colors.statusbar.url.success.https.fg = xresources['*.foreground']
# c.colors.tabs.odd.fg = xresources['*.color8']
# c.colors.tabs.odd.bg = xresources['*.background']
# c.colors.tabs.even.fg = xresources['*.color8']
# c.colors.tabs.even.bg = xresources['*.background']
# c.colors.tabs.pinned.odd.fg = xresources['*.color8']
# c.colors.tabs.pinned.odd.bg = xresources['*.background']
# c.colors.tabs.pinned.even.fg = xresources['*.color8']
# c.colors.tabs.pinned.even.bg = xresources['*.background']
# c.colors.tabs.selected.odd.fg = xresources['*.background']
# c.colors.tabs.selected.odd.bg = xresources['*.color2']
# c.colors.tabs.selected.even.fg = xresources['*.background']
# c.colors.tabs.selected.even.bg = xresources['*.color2']
# c.colors.tabs.pinned.selected.odd.fg = xresources['*.background']
# c.colors.tabs.pinned.selected.odd.bg = xresources['*.color2']
# c.colors.tabs.pinned.selected.even.fg = xresources['*.background']
# c.colors.tabs.pinned.selected.even.bg = xresources['*.color2']
# c.colors.webpage.bg = 'white'

# My additions
# c.colors.tabs.indicator.error = xresources['*color1']
# c.colors.tabs.indicator.start = xresources['*color2']
# c.colors.tabs.indicator.stop = xresources['*color2']
# c.colors.hints.bg = xresources['*color3']
# c.colors.hints.fg = xresources['*background']
# c.colors.hints.match.fg = xresources['*color1']
# c.colors.keyhint.bg = 'rgba(0, 0, 0, 80%)'
# c.colors.keyhint.fg = xresources['*foreground']
# c.colors.keyhint.suffix.fg = xresources['*color2']

config.bind('<ctrl-shift-p>', 'spawn --userscript qute-pass', mode='insert')

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

config.set('hints.selectors', {
    **c.hints.selectors,
    'videos': ['iframe'],
    })

config.bind('<ctrl-p>', 'set-cmd-text -s :buffer')

config.set('editor.command', ["kitty", "--class=qb-edit", "nvim", "{}"])

config.bind(';v', 'hint links spawn mpv --force-window=immediate --no-terminal --keep-open=yes {hint-url}')
config.bind(';V', 'hint videos spawn mpv --force-window=immediate --no-terminal --keep-open=yes {hint-url}')
config.bind(';Y', 'hint videos spawn mpv --force-window=immediate --no-terminal --keep-open=yes {hint-url}')
config.bind('V', 'spawn mpv --force-window=immediate --no-terminal --keep-open=yes {url}')
config.bind('<ctrl-r>', 'spawn --userscript readability')
config.bind('<ctrl-t>', 'spawn --userscript taskadd project:reading.web')
config.bind(',n', 'config-cycle content.user_stylesheets ~/vendor/solarized-everything-css/css/solarized-dark/solarized-dark-all-sites.css ""')
config.bind(',dc', 'download-clear')
config.bind('<return>', 'set-cmd-text :')
config.bind('<ctrl-l>', 'edit-url')

c.downloads.location.directory = "~/Downloads"
c.downloads.location.prompt = False

c.content.autoplay = False
c.content.cookies.accept = "no-3rdparty"
