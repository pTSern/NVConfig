let g:interestingWordsDefaultMappings = 0

nnoremap <silent> <M-k> :call InterestingWords('n')<cr>
vnoremap <silent> <M-k> :call InterestingWords('v')<cr>
nnoremap <silent> <M-K> :call UncolorAllWords()<cr>

nnoremap <silent> <M-l> :call WordNavigation(1)<cr>
nnoremap <silent> <M-h> :call WordNavigation(0)<cr>

let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
let g:interestingWordsRandomiseColors = 1
