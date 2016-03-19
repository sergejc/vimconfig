" Vdebug
" <F5>: start/run (to next breakpoint/end of script)
" <F2>: step over
" <F3>: step into
" <F4>: step out
" <F6>: stop debugging (kills script)
" <F7>: detach script from debugger
" <F9>: run to cursor
" <F10>: toggle line breakpoint
" <F11>: show context variables (e.g. after "eval")
" <F12>: evaluate variable under cursor
" :Breakpoint <type> <args>: set a breakpoint of any type (see :help
" VdebugBreakpoints)
" :VdebugEval <code>: evaluate some code and display the result
" <Leader>e: evaluate the expression under visual highlight and display the result
Bundle 'joonty/vdebug.git'
let g:vdebug_keymap = {
\    "run" : "<Leader>/",
\    "run_to_cursor" : "<Down>",
\    "step_over" : "<Up>",
\    "step_into" : "<Left>",
\    "step_out" : "<Right>",
\    "close" : "q",
\    "detach" : "x",
\    "set_breakpoint" : "<Leader>p",
\    "eval_visual" : "<Leader>e"
\}
 let g:vdebug_options = {
 \    "break_on_open" : 0,
 \}
