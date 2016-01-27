# This works
packer push -name oliechti/labbox2016a template.ubuntu.15.04.a.json

# This does not work on Atlas: stuck at "==> virtualbox-iso: Waiting for SSH to become available..."
packer push -name oliechti/labbox2016b template.ubuntu.15.10.b.json
