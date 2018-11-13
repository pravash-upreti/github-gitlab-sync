from subprocess import call

def sync():
    
    call("./track_repo.sh",shell=True)
    
    call("./clear_local_branch.sh",shell=True)

    call("./code_sync.sh",shell=True)

def setup_env():
    call("./setup_env.sh",shell=True)