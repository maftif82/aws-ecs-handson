Dockerfile  
   FROM nginx:alpine  
   COPY index.html /usr/share/nginx/html/

   taskdef.json (ECSタスク定義のテンプレート)  
   注意: YOUR\_AWS\_ACCOUNT\_ID の部分を、ご自身のAWSアカウントIDに書き換えてください。AWSアカウントIDは、コンソールの右上に表示されています。  
   JSON  
   {  
       "family": "my-webapp-task",  
       "containerDefinitions": \[  
           {  
               "name": "my-webapp-container",  
               "image": "\<IMAGE\_URI\_PLACEHOLDER\>",  
               "cpu": 256,  
               "memory": 512,  
               "portMappings": \[  
                   {  
                       "containerPort": 80,  
                       "hostPort": 80,  
                       "protocol": "tcp"  
                   }  
               \],  
               "essential": true  
           }  
       \],  
       "requiresCompatibilities": \[  
           "FARGATE"  
       \],  
       "networkMode": "awsvpc",  
       "cpu": "256",  
       "memory": "512",  
       "executionRoleArn": "arn:aws:iam::914319168149:role/testrole0929forecs"  
   }
