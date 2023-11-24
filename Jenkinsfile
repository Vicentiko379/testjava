node {
    mvnHome = tool name: 'M3', type: 'maven'

    stage('compile') {
        if (isUnix()) {
            sh "'${mvnHome}/bin/mvn' compile"
        } else {
            bat(/"${mvnHome}\bin\mvn" compile/)
        }
    }
    
    stage("sonar") {
        withSonarQubeEnv(installationName: 'sonar') {
            bat (/"${mvnHome}\bin\mvn" sonar:sonar/)
        }
    }

    stage("Quality Gate") {
        timeout(time: 1, unit: 'HOURS') {
            waitForQualityGate abortPipeline: true
        }
    }
}