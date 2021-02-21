pipeline{
 agent any 
 stages{
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'target/demoart-1.3.jar', fingerprintArtifacts: true, projectName: 'pipelinedemo', selector: lastWithArtifacts()
    }
  }
  stage('Deploy'){
  steps{
    sh ''' ansible-playbook deploy.yml '''
  }
  }
 }
}
