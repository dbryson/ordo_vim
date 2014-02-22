ordo_vim
========

A GPG decryption tool for vim.

Place this in your vim plugins directory, then open a file with '.gpg'
extension.  It will automatically use your private key to decrypt, and only
write the file by running it through GPG encryption.

There is currently a bug that if your key has 'expired' and ordo.vim attempts
to encrypt a file, you will lose the contents of the file.
