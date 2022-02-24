# Switch multiple kubeconfig
DEFAULT_KUBECONFIG="${HOME}/.kube/config"
KUBECONFIG_FILES=`ls -1 ~/.kube/kubeconfig* | paste -sd ":" -`
export KUBECONFIG="${DEFAULT_KUBECONFIG}:${KUBECONFIG_FILES}"

file="$(mktemp -t "kubectx.XXXXXX")"
export KUBECONFIG="${file}:${KUBECONFIG}"
cat <<EOF >"${file}"
apiVersion: v1
kind: Config
current-context: ""
EOF

# kubectl config view --minify --flatten --context=$KUBE_CONTEXT > $KUBE_TMP_CONFIG_FILE
# 

# Kubectl completion
if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion bash)
fi

if [ -d ~/.kube-ps1 ]; then
  source "$HOME/.kube-ps1/kube-ps1.sh"
fi
