# remove this plugin that GCP includes in jupyter install
# causes a bunch of warnings
pip uninstall dataproc_jupyter_plugin

# point to jupyter config in working directory
# sets ip = '*', port='8888', open_browser=False
export JUPYTER_CONFIG_DIR="."

# langchain ENV variables
export LANGCHAIN_TRACING_V2="true"

