# Terraform Version Manager

Download whatever terraform binary you require.  Place it in $HOME/bin (no sudo).

Add $HOME/bin to your .bash_profile or .zshrc.

Sets the version of terraform based on your .envrc file.

Be sure the update the terraform_ver variable to whatever version you desire.

Doesn't completely depend on [direnv](https://github.com/direnv/direnv) but works nicely if it is places into the .envrc file.
