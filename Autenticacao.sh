#!/usr/bin/env python3
#importando tkinter para criação de interface gráfica
from tkinter import *
import os
#Definindo a classe da aplicação
class Application:
    #definindo o master como interface primaria
	def __init__(self, master=None):

#definindo um self como fonte padrao para ser usada repedidas vezes sem muito codigo

		self.fontePadrao = ('Arial', '10')
        
#criando o primeiro container e definindo o vinculo com o master e sua posição

		self.primeiroContainer = Frame(master)
		self.primeiroContainer['pady'] = 10
		self.primeiroContainer.pack()

#criando o segundo container e definindo o vinculo com o master e sua posição

		self.segundoContainer = Frame(master)
		self.segundoContainer['padx'] = 20
		self.segundoContainer.pack()

#criando o terceiro container e definindo o vinculo com o master e sua posição

		self.terceiroContainer = Frame(master)
		self.terceiroContainer['pady'] = 20
		self.terceiroContainer.pack()

#criando o primeiro quarto e definindo o vinculo com o master e sua posição

		self.quartoContainer = Frame(master)
		self.quartoContainer['pady'] = 20
		self.quartoContainer.pack()

#Definindo um Label para título do primeiro container e sua fonte

		self.titulo = Label(self.primeiroContainer, text='Dados do Usuario')
		self.titulo['font'] = ('Arial', '10', 'bold')
		self.titulo.pack()

#Definindo um Label para o primeiro Entry com o texto Nome

		self.nomeLabel = Label(self.segundoContainer, text='Nome: ', font=self.fontePadrao)
		self.nomeLabel.pack(side=LEFT)

#Definindo o Entry do Nome

		self.nome = Entry(self.segundoContainer)
		self.nome['width'] = 30
		self.nome['font'] = self.fontePadrao
		self.nome.pack(side=LEFT)

#Definindo um Label para o Entry da senha

		self.senhaLabel = Label(self.terceiroContainer, text='Senha: ', font=self.fontePadrao)
		self.senhaLabel.pack(side=LEFT)

#Definindo o Entry da senha

		self.senha = Entry(self.terceiroContainer)
		self.senha['width'] = 30
		self.senha['font'] = self.fontePadrao
		self.senha['show'] = '*'
		self.senha.pack(side=LEFT)

#Criando o botão de autenticação com seu tamanho, fonte e texto

		self.autenticar = Button(self.quartoContainer)
		self.autenticar['text'] = 'Autenticar'
		self.autenticar['font'] = ('Calibri', '8')
		self.autenticar['width'] = 12
		self.autenticar['height'] = 2
		self.autenticar['command'] = self.verificarSenha
		self.autenticar.pack()

		self.botaoSair = Button(self.quartoContainer)
		self.botaoSair['text'] = 'Sair'
		self.botaoSair['font'] = self.fontePadrao
		self.botaoSair['width'] = 12
		self.botaoSair['height'] = 1
		self.botaoSair['pady'] = 2
		self.botaoSair['command'] = self.sair
		self.botaoSair.pack()

#Definindo o Label que irá mudar de acordo com a validação de Nome e Senha

		self.mensagem = Label(self.quartoContainer, text='', font=self.fontePadrao)
		self.mensagem.pack()

#Definindo a função que verificará nome e senha
	def sair(self):
		self.primeiroContainer.quit()

	def verificarSenha(self):
		usuario = self.nome.get()
		senha = self.senha.get()

#Condicional de verificação de nome e senha

		if usuario == 'champiao' and senha == 'champiao':
			self.mensagem['text'] = 'Autenticado'
			acesso = 'permitido'
		else:
			self.mensagem['text'] = 'Usuário ou senha incorreto, tente novamente'
		if acesso == 'permitido':

#comando personalizavel de sistema UNIX para quando usuário for autenticado

			os.system('google-chrome --incognito champiao.com.br')

#Saindo da aplicação quando autenticado e rodado o  comando
            
			self.primeiroContainer.quit()

#Iniciando interface gráfica quando rodado o Script


root = Tk()
Application(root)
root.mainloop()
