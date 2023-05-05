/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DiffieHellmanKeyExchange;

import java.util.Random;

public class DiffieHellman {



    //~ --- [METHODS] --------------------------------------------------------------------------------------------------

    public  void main(String message) throws Exception {

      

        // 1. ------------------------------------------------------------------
        // This is Alice and Bob
        // Alice and Bob want to chat securely. But how?

        final Person alice = new Person();
        final Person bob   = new Person();

        //    ?                                        ?
        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB

        // 2. ------------------------------------------------------------------
        // Alice and Bob generate public and private keys.
            Random rr=new Random();
            int cc=rr.nextInt(4);
        alice.generateKeys();
         Thread.sleep(cc);
        bob.generateKeys();

        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  _ PUBLIC KEY                              _ PUBLIC KEY
        //  _ PRIVATE KEY                             _ PRIVATE KEY

        // 3. ------------------------------------------------------------------
        // Alice and Bob exchange public keys with each other.

        alice.receivePublicKeyFrom(bob);
        
        bob.receivePublicKeyFrom(alice);

        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  _ PUBLIC KEY <------------------------->  _ PUBLIC KEY

        // 4. ------------------------------------------------------------------
        // Alice generates common secret key via using her private key and Bob's public key.
        // Bob generates common secret key via using his private key and Alice's public key.
        // Both secret keys are equal without TRANSFERRING. This is the magic of Diffie-Helman algorithm.

        alice.generateCommonSecretKey();
        bob.generateCommonSecretKey();

        //
        //    O                                        O
        //   /|\                                      /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  + public key                              + public key
        //  _ SECRET KEY                              _ SECRET KEY

        // 5. ------------------------------------------------------------------
        // Alice encrypts message using the secret key and sends to Bob

        alice.encryptAndSendMessage(message, bob);

        //
        //    O                                        O
        //   /|\ []-------------------------------->  /|\
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  + public key                              + public key
        //  + secret key                              + secret key
        //  + message                                 _ MESSAGE

        // 6. ------------------------------------------------------------------
        // Bob receives the important message and decrypts with secret key.

        bob.whisperTheSecretMessage();

        //
        //    O                     (((   (((   (((   \O/   )))
        //   /|\                                       |
        //   / \                                      / \
        //
        //  ALICE                                     BOB
        //  + public key                              + public key
        //  + private key                             + private key
        //  + public key                              + public key
        //  + secret key                              + secret key
        //  + message                                 + message
    }
}
