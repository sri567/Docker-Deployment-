pipeline{
 agent any 
 stages{
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'sample.war', fingerprintArtifacts: true, projectName: 'pipelinedemo', selector: lastWithArtifacts()
    }
  }
  stage('Deploy'){
  steps{
    sh ''' ansible-playbook deploy.yml '''
  }
  }
 }
}
