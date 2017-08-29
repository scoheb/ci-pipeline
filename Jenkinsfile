properties(
        [
                disableConcurrentBuilds(),
                parameters(
                        [
                                string(description: 'CI Message that triggered the pipeline', name: 'CI_MESSAGE'),
                                string(defaultValue: 'f26', description: 'Fedora target branch', name: 'TARGET_BRANCH'),
                                string(defaultValue: 'http://artifacts.ci.centos.org/artifacts/fedora-atomic', description: 'URL for rsync content', name: 'HTTP_BASE'),
                                string(defaultValue: 'fedora-atomic', description: 'RSync User', name: 'RSYNC_USER'),
                                string(defaultValue: 'artifacts.ci.centos.org', description: 'RSync Server', name: 'RSYNC_SERVER'),
                                string(defaultValue: 'fedora-atomic', description: 'RSync Dir', name: 'RSYNC_DIR'),
                                string(defaultValue: 'ci-pipeline', description: 'Main project repo', name: 'PROJECT_REPO'),
                                string(defaultValue: 'org.centos.stage', description: 'Main topic to publish on', name: 'MAIN_TOPIC'),
                                string(defaultValue: 'fedora-fedmsg', description: 'Main provider to send messages on', name: 'MSG_PROVIDER'),
                                string(defaultValue: 'bpeck/jenkins-continuous-infra.apps.ci.centos.org@FEDORAPROJECT.ORG', description: 'Principal for authenticating with fedora build system', name: 'FEDORA_PRINCIPAL'),
                                booleanParam(defaultValue: false, description: 'Force generation of the image', name: 'GENERATE_IMAGE'),
                        ]
                ),
        ]
)

node() {
  sleep 30
}

