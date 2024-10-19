# cors-anywhere-unraid - Minimal Reverse Proxy for Unraid OS

An easy-to-use reverse proxy setup for Unraid OS that enables Cross-Origin Resource Sharing (CORS) for various applications. This project is designed to be simple to install and configure, making it easier to manage CORS in your Unraid environment.

## Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
   - [Manual Installation](#manual-installation)
3. [Usage](#usage)
4. [Examples](#examples)
5. [Contributing](#contributing)
6. [License](#license)

## Introduction

In my search for a minimalistic approach to utilizing **cors-anywhere** on Unraid, I aimed to create a solution that offers flexible URL handling while remaining resource-efficient. 

The core idea behind this project is to provide a dynamic reverse proxy setup that requires minimal configuration, allowing users to easily manage their CORS needs without extensive modifications.

By focusing on a lightweight implementation, this project ensures that users can seamlessly integrate it into their existing Unraid environment. The goal is to enable effortless use of CORS across various applications with the flexibility to handle multiple endpoints. 

Once set up, no further adjustments should be necessary, making it an ideal choice for users looking for a straightforward and efficient way to manage cross-origin requests.

## Installation

### Manual Installation

1. Clone the repository or create the files ´Dockerfile´ and ´nginx.conf´ individually.
2. Create a Docker container with the command:
   `docker build -t cors .`

3. Save the Docker container or export it with the command:
   `docker save -o [Local Path]/cors.tar cors`

4. Upload the saved file ´cors.tar´ to your Unraid server, e.g., via a network share.
5. Open the Unraid OS interface.
6. Open the Unraid terminal and navigate to the shared directory using the commands ´cd´ and ´ls´.
7. Load the Docker container with the command:
   `docker load -i cors.tar`

8. Start the Docker container with the command, replacing [Port] with any available port on your Unraid server:
   `docker run -d --name cors -p [Port]:80 cors`

9. That's it! You can now access the proxy.

*Note: An automatic installation guide will follow soon.*

## Usage

Once the Docker container is running, you can access the proxy server at:

`http://[Unraid-Server-IP]:[Port]/reverseproxy/[API-URL]`

Where [Port] is the port you configured.

## Examples

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
