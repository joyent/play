@Library('jenkins-joylib@TOOLS-2355') _

pipeline {
    agent {
        label joyCommonLabels(image_ver: '18.4.0')
    }

    options {
        buildDiscarder(logRotator(numToKeepStr: '30'))
        timestamps()
    }

    stages {
        stage('check') {
            steps{
                sh('make check')
            }
        }
    }

    post {
        always {
            joyMattermostNotification('jenkins')
            //joyMattermostNotification('botplay')
            //joyMattermostNotification('rebalancer')
        }
    }
}
