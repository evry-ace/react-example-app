#!groovy
@Library("ace") _
@Library("ace-example-config") import no.ace.AceGlobalConfig

dryrun = true

ace(AceGlobalConfig) {
  stage('npm install') {
    docker.image('node:8-alpine').inside() {
      sh 'npm install'
    }
  }

  stage('docker build') {
    image = build()
  }

  stage('deploy to test') {
    push('test', image, dryrun)
    deploy('test', dryrun)

    slack.notifyDeploy('test')
  }
}
