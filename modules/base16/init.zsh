zstyle -a ':prezto:module:base16' theme 'BASE16_THEME'

source ${0:h}/external/base16-${BASE16_THEME[1]-default}.${BASE16_THEME[2]-dark}.sh

unset BASE16_THEME
