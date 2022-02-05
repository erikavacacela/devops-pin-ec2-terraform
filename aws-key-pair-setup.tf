# Set up key pair for SSH

resource "aws_key_pair" "aws_key" {
  key_name   = "aws_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDP3Lhy2x8saIJ989RPpVkjbC9S+smgk0RyTFb+VL2EEmxQ6k3TYQlOtuXAyV2lCk6UJhDqHAGhIN+6HkngQoIAsPNyDgobtJE5HTnXWvd/hRR1T0YyfBU1mAFF8PdcWpIsk2CHN6oXjeEGCa7XKrKkeLfIodBrYomVxE6iBHX0JD+L5GMiq+C4h1aRYjUvlHj7VBgXN0enwVlN1pMs3/TzBwmrSVnqbmiiqmFNUFLCYrewrFqGVm5N6sqoJaftn4GGfD9f9KpwSCe5dbnfexe9Y0UeuOIXpmFOT0La8flNAlwthow5Weq1Wpx+OOfmqmQ9yG9zGwU7TauxLldlov/N josepecci@Joses-MBP.arquitech.com.py"
}