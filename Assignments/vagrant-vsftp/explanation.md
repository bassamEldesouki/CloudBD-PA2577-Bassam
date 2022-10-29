## what is it in this file? 
    to be added .....
## use and run it
    ............ to be rearranged .........

install vagarnt cachier
`vagrant plugin install vagrant-cachier`


`export VAGRANT_DEFAULT_PROVIDER=libvirt` 
    or 
`vagrant up --provider=libvirt`


In your Vagrantfil:
Define your “synced_folder” so that you add the :mount_options array:
`config.vm.synced_folder "nfs/", "/tmp/nfs", :nfs => true, :mount_options => ['rw', 'vers=3', 'tcp']`

The defaults are: vers=3,udp,rw. 