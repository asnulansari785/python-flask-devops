//lets trigger the jenkins and see the result for this basic pipeline code

pipeline
{

    agent any

    stages {

        stage('checkout'){
            steps{
                echo 'checkout stage'
            }

        }
        
        
        stage('build'){

            steps {

                echo 'Build stage'
            }
        }


        stage('Docker Build'){

            steps{
                echo 'Docker Build stage'
            }
        }

        stage('Deploy'){

            steps{
                echo 'Deploy stage'
            }
        }
    }
}
