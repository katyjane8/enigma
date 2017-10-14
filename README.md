# enigma

1. Key Generator
It’d be great if instead of random numbers we could generate a legitimate key. Starting from your runner:

Create an instance of a key generator
Figure out what, if anything, you’d need to pass in to the object
Start writing tests for the key generator object based on the specs above
Go through building the implementation
Use it from your runner to generate and output a valid key

2. Offsets
Before we can start encrypting we probably need to calculate the offsets.

From your runner, create an instance of an offset calculator
Pass the current date and the generated key into the offset calculator
Write tests and implementation around the idea of being able to pass in the date and key, then query the A, B, C, and D final rotations

3. Encryption
Now that you have all the components you’re ready to encrypt a message.

Create an encryptor object in your runner
What information would the encryptor need to be “setup” and ready to encrypt messages? Pass that in.
Call an encrypt method and pass in a string message. Get back the encrypted version.

4. Next Steps
Now you should have all the components in place such that your command-line encryption is working! Next up:

Follow a similar flow to develop the decrypt script and functionality
Swap some encrypted messages with a classmate and see if each other can decrypt them correctly
Start experimenting with the cracking functionality
