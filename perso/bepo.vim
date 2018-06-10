" BÉPO
" {W} -> [É]
" ——————————
" On remappe W sur É :
noremap é w
noremap É W
" Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap <Nul>c <C-w><Left>
noremap <Nul>t <C-w><Down>
noremap <Nul>s <C-w><Up>
noremap <Nul>r <C-w><Right>
noremap <Nul><Nul> <C-w><C-w>

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" {TS} = « joindre / aide »
noremap T J
noremap S K
" Corollaire : repli suivant / précédent
noremap zs zj
noremap zt zk

" Virtual lines
noremap gt gj
noremap gs gk

" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {L} = « Change »             (h = bloc, H = jusqu'à la fin de ligne)
noremap l c
noremap L C
" {H} = « Remplace »           (l = caractère, L = texte)
noremap h r
noremap H R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S

map <C-y> <C-a>

noremap è ^ "début de ligne
noremap È $ "fin de ligne
