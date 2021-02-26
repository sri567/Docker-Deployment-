pipeline{
 agent any 
 stages{
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'target/demoart-*', fingerprintArtifacts: true, projectName: 'DockerDemo', selector: lastWithArtifacts()
    }
  }
  stage('Build-docker-image'){
      steps{
        sh ''' docker build -t demoartwar:${BUILD_NUMBER} . '''
      }
 }
}
}
