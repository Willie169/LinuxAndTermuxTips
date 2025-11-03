## GitHub Copilot in Vim or Neovim

<ol>
<li>Run:
<pre><code>curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
</code></pre></li>
<li>In <code>.vimrc</code> or <code>init.vim</code>, add:
<pre><code>if empty(glob(&#39;~/.vim/autoload/plug.vim&#39;))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(&#39;~/.vim/plugged&#39;)

Plug &#39;github/copilot.vim&#39;

call plug#end()
</code></pre>
and optionally
<pre><code>let g:copilot_no_tab_map = v:true
imap &lt;C-J&gt; &lt;Plug&gt;(copilot-accept)
</code></pre>
to map <code>Ctrl-J</code> to accepting Copilot&#39;s suggestion.</li>
<li>In Vim or Neo Vim, run:
<pre><code>:PlugInstall
:Copilot setup
</code></pre>
and setup Copilot.</li>
</ol>
