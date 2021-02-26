pipeline{
 agent any 
 stages{
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'target/demoart-1.3.jar', fingerprintArtifacts: true, projectName: 'pipelinedemo', selector: lastWithArtifacts()
    }
  }
  stage('Build-docker-image'){
      steps{
        sh ''' sudo docker build -t Samplewar:${BUILD_NUMBER} . '''
      }
 }
}
