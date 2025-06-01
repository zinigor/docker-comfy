# ComfyUI bare bones installation

This is a docker image project that provides a bare bones ComfyUI installation.
It's supplied with a SageAttention 2.x binary that gets build on provisioning, taking
some time.

## Current versions:
- **ComfyUI**: 0.3.39
- **ComfyUi Frontend**: 1.20.7
- **ComfyUI Workflow Templates**: 0.1.23
- Python: 3.12
- SageAttention: 2.0.1

## TODO
- [x] Make ComfyUI run.
- [x] Make SageAttention compile at first run of the image.
- [x] Make ComfyUI work with custom node manager.
- [ ] Add a separate user to avoid running as root.
- [ ] Add some kind of file manager for easier uploads and downloads.
      
      
