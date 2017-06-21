properties(
        [
                buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '15', daysToKeepStr: '', numToKeepStr: '30')),
                disableConcurrentBuilds(),
                parameters(
                    [
                        string(description: 'fedmsg msg', name: 'CI_MESSAGE'),
                        string(defaultValue: '^(f25|f26|master)$', description: 'fedora branch targets', name: 'TARGETS'),
                        string(defaultValue: 'ci-pipeline', description: 'Main project repo', name: 'PROJECT_REPO'),
                    ],
	        pipelineTriggers(
                    [[$class: 'CIBuildTrigger', checks: [], providerName: 'fedora-fedmsg', selector: 'topic = "org.fedoraproject.prod.git.receive"']]
                )
        ]
)

node('jenkins-continuous-infra-slave') {
    ansiColor('xterm') {
        timestamps {
            try {
                deleteDir()
                stage('ci-pipeline-rpmbuild-trigger') {
                }
            } catch (e) {
                // if any exception occurs, mark the build as failed
                currentBuild.result = 'FAILURE'
                throw e
            } finally {
                currentBuild.displayName = "Build# - ${env.BUILD_NUMBER}"
                currentBuild.description = "${currentBuild.result}"
            }
        }
    }
}
