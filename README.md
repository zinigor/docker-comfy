# ComfyUI bare bones installation

This is a docker image project that provides a bare bones ComfyUI installation.
It's supplied with a SageAttention 2.x binary that gets built on provisioning, taking
some time.

## Current versions:
- **ComfyUI**: 0.3.41
- **ComfyUi Frontend**: 1.21.7
- **ComfyUI Workflow Templates**: 0.1.25
- Python: 3.12
- SageAttention: 2.0.1

## TODO
- [x] Make ComfyUI run.
- [x] Make SageAttention compile at first run of the image.
- [x] Make ComfyUI work with custom node manager.
- [x] Add Jupyter Lab at port 3000. Note: the auth is disabled.
- [ ] Don't disable Jupyter auth, instead use an ENV variable.
