node {   
    stage('Clone repository') {
        git credentialsId: 'git', url: 'https://github.com/leandrohinz/todo-app.git'
    }
    
	stage('Output') {

		def output = sh(returnStdout: true, script: 'ls -al .')
		echo "Output: ${output}"

	}
		
    stage('Build image') {
        dir('log-message-processor'){
          dockerImage = docker.build("leandrohinz/log-message-processor:v1")
        }
    }
    
 stage('Push image') {
        withDockerRegistry([ credentialsId: "dockerhubaccount", url: "" ]) {
        dockerImage.push()
        }
    }    
}
