
# set -x

rm -f ~/pan-plugin-user.json
rm -rf ~/bin

cd "${HOME}/panw-cn-series-aws-zero-trust/terraform/cnseries"
kubectl delete -f ./sample-app/guestbook.yml

cd "${HOME}/panw-cn-series-aws-zero-trust/terraform/cnseries/cn-series"
/bin/bash ./remove-cn.sh

cd "${HOME}/panw-cn-series-aws-zero-trust/terraform/cnseries"
terraform destroy -auto-approve

cd "${HOME}/panw-cn-series-aws-zero-trust/terraform/panorama"
terraform destroy -auto-approve

cd "${HOME}/panw-cn-series-aws-zero-trust"
git reset --hard