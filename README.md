# My dotfiles

## Setup

	$ bash ./setup.sh


個別の設定
---

### iTerm2
- tmuxでヤンクした際にクリップボードに保存されるようにする
  - Preferences > Geralタブ > Selection > Applicaton in terminal may access clipboard: ON

### VIM
- MarkdownPreviewを動作させるにはnodejs,yarnのセットアップして、.vim以下のプラグインディレクトリで`yarn install && yarn upgrade`が必要
