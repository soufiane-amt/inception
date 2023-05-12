# inception

https://github.com/vbachele/Inception

https://www.youtube.com/watch?v=Soh2k8lCXCA

https://github.com/Forstman1/inception-42



https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-on-ubuntu-20-04-with-a-lamp-stack


//Ressouces about ssl and TSL

https://www.cloudflare.com/fr-fr/learning/ssl/what-is-ssl/

https://preyproject.com/blog/types-of-encryption-symmetric-or-asymmetric-rsa-or-aes#:~:text=Symmetric%20encryption%20involves%20using%20a,specific%20needs%20of%20the%20user

Certainly! Establishing trust between a client and a server in TLS (Transport Layer Security) involves several steps. Here's a detailed description of the process:

Client Hello:
The TLS handshake begins with the client (web browser) sending a Client Hello message to the server. The Client Hello includes information such as the TLS version supported by the client, a list of supported cipher suites, and random data used for generating cryptographic keys.

Server Hello:
Upon receiving the Client Hello, the server responds with a Server Hello message. The Server Hello includes the TLS version selected by the server, the chosen cipher suite from the client's list, and its own random data.

Certificate:
After the Server Hello, the server sends its digital certificate to the client. The certificate contains the server's public key, its domain name or names, the issuing CA's digital signature, and other identifying information. The server's certificate is an essential part of establishing trust.

Certificate Validation:
The client verifies the server's certificate to ensure its authenticity and validity. This process involves the following steps:

Checking the certificate's expiration date: The client ensures that the certificate is not expired.
Verifying the certificate chain: The client checks if the certificate was issued by a trusted CA and verifies the chain of trust from the server's certificate back to a root certificate that the client already trusts.
Checking the revocation status: The client may also check if the certificate has been revoked by the issuing CA.
If any of these checks fail, the client may display a warning to the user or terminate the connection.

Pre-Master Secret:
If the server's certificate is successfully validated, the client generates a random pre-master secret. The pre-master secret is encrypted using the server's public key from the certificate and sent to the server.

Master Secret:
Both the client and the server independently use the pre-master secret to derive the master secret. The master secret is then used to generate session keys for encrypting and decrypting data during the secure session.

Finished Messages:
The client and server exchange Finished messages to confirm that the handshake was successful and that they are ready to proceed with secure communication.

Secure Communication:
At this point, the handshake is complete, and the client and server can securely exchange data using symmetric encryption with the session keys derived from the master secret.

During the TLS handshake, the client establishes trust in the server by verifying its digital certificate against a trusted CA and confirming that the certificate is valid. This trust is crucial in ensuring that the client is communicating securely with the intended server and protecting against man-in-the-middle attacks.

