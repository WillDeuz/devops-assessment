# DevOps Exercise 

## There are Two main workflows
1. Test - App tests and lint check (black and flake8 lints).
2. Deploy to Amazon EC2 - Build, tag, and push image to Amazon ECR, then a new task definition is deployed. 


## Branch protection
* You can only merge to master after all checks are passed. (step 1# from above).
* Once a pull request got closed, the workflow (step #2 from above) is triggered and the new code is deployed to AWS infrastructure.
