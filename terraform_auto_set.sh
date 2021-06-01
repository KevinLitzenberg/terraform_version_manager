#!/bin/bash/

#terraform_ver="terraform12"
#terraform_ver="terraform13"
terraform_ver="terraform14"


if [ -L $HOME/bin/terraform ] ; then
  sm_link="$(readlink $HOME/bin/terraform)"
  #echo "$sm_link"
  terraform_current="$(basename $sm_link)"
  #echo $terraform_current"
  if [ "$terraform_current" != "$terrform_ver" ] ; then
    rm -f $HOME/bin/terraform
    ln -s $HOME/bin/$terraform_ver $HOME/bin/terraform
    echo "Set TF to $terraform_ver"
  fi  
  sm_link="$(readlink $HOME/bin/terraform)"
  terraform_current="$(basename $sm_link)"
  terraform version
else
  echo "What's up?? No Terraforming :( :( :(."
fi
