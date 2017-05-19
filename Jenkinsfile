#!/usr/bin/env groovy

node('docker_edge') {
	checkout scm 

	def image = docker.build('docker-multistage')

	image.run()
}
