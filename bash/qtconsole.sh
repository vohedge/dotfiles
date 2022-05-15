##
# 
# 環境によってパスが異なる。
# 環境ごとに環境変数でPythonの場所を格納しておき、そのパスのqt consoleを起動するようにする
# $QT_PYTHON
function qt() {
  if [[ -z "${QT_PYTHON}" ]]; then
    echo "QT_PYTHON is not set!"
  else
    $QT_PYTHON -m jupyter qtconsole
  fi
}

