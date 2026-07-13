//lets trigger the jenkins and see the result for this basic pipeline code

pipeline
{

    agent any

    stages {

        stage('checkout'){
            steps{
                checkout scm
            }

        }
        
        
        stage('build'){

            steps {

               // bat 'pip install -r requirements.txt'
		    //bat 'python --version'
       		//bat 'pip --version'
               bat '"C:\\Users\\ans\\AppData\\Local\\Programs\\Python\\Python312\\python.exe" --version'
            }
        }


        stage('Docker Build'){

            steps{
                bat 'docker build -t python-flask-devops:v1 .'
            }
        }

        stage('Deploy'){

            steps{
                bat '''
docker stop python-flask-app || exit 0
docker rm python-flask-app || exit 0
docker run -d --name python-flask-app -p 5000:5000 python-flask-devops:v1
'''
            }
        }
    }
}
