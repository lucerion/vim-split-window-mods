" ==================================================================================
" Description:  Simple Vim window placement splits
" Author:       Alexander Skachko <alexander.skachko@gmail.com>
" Homepage:     https://github.com/lucerion/vim-split-window
" Version:      1.0.0 (2018-05-28)
" Licence:      BSD-3-Clause
" ==================================================================================

let s:positions = {
  \ 'tab':          'tab',
  \ 'top':          'leftabove',
  \ 'bottom':       'rightbelow',
  \ 'left':         'leftabove vertical',
  \ 'right':        'rightbelow vertical',
  \ 'top-full':     'topleft',
  \ 'bottom-full':  'botright',
  \ 'left-full':    'topleft vertical',
  \ 'right-full':   'botright vertical'
  \ }

func! split_window_mods#split(position, command) abort
  silent exec get(s:positions, a:position, '') . ' ' . a:command
endfunc

comm! -nargs=* -complete=command Tab        call split_window_mods#split('tab', <q-args>)
comm! -nargs=* -complete=command Top        call split_window_mods#split('top', <q-args>)
comm! -nargs=* -complete=command Bottom     call split_window_mods#split('bottom', <q-args>)
comm! -nargs=* -complete=command Left       call split_window_mods#split('left', <q-args>)
comm! -nargs=* -complete=command Right      call split_window_mods#split('right', <q-args>)
comm! -nargs=* -complete=command TopFull    call split_window_mods#split('top-full', <q-args>)
comm! -nargs=* -complete=command BottomFull call split_window_mods#split('bottom-full', <q-args>)
comm! -nargs=* -complete=command LeftFull   call split_window_mods#split('left-full', <q-args>)
comm! -nargs=* -complete=command RightFull  call split_window_mods#split('right-full', <q-args>)
