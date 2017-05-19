#!/usr/bin/env groovy

node('docker_edge') {
	def image = docker.build('docker-multistage')

	image.run()
}
