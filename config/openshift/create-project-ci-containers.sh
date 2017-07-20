oc login https://192.168.42.132:8443 -u developer

oc delete project ci-containers
sleep 10
oc new-project ci-containers
##
oc create -f rpmbuild.yaml
oc create -f ostree.yaml
oc create -f e2e.yaml
##
oc new-app rpmbuild-builder
oc new-app ostree-builder
oc new-app e2e-builder
##
