## Dockerfile-Ruby-on-Rails
Dockerfile para criação de uma imagem Debian com rvm, ruby 2.5.3 e o rails 6.0.0.rc1 instalados!

#Criando imagem
- docker image build -t [nome da imagem] . 
Obs: O "." depois do nome, indica que o Dockerfile esta no repositorio onde o comando esta sendo executado  

#Ex criação de um Container 
- docker container run -it -v [volume do host(endereco da pasta)]:/home -p 3000:3000  --name [nome do container] [nome da imagem]
 