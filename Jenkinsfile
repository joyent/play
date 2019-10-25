@Library('jenkins-joylib@v1.0.1') _

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
            joyMattermostNotification()
            joyMattermostNotification('botplay')
            //joyMattermostNotification('rebalancer')
        }
    }
}
