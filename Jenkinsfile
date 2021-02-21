pipeline{
 agent any 
 stages{
  stage('Copy-Artifact-upstream'){
    steps{
      copyArtifacts filter: 'webapp/target/sample.war', fingerprintArtifacts: true, projectName: 'pipelinedemo', selector: lastWithArtifacts()
    }
  }
  stage('Deploy'){
  steps{
    sh ''' ansible-playbook deploy.yml '''
  }
  }
 }
}
