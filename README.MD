# xfNetLinkInterfacePoolWrapper

To use this example:

1. Clone the repository
2. Install CodeGen (5.7.7 or higher)
3. Edit regen.bat and set your configuration options
4. Execute regen.bat

## Configuration Options

**RPSMFIL** and **RPSTFIL** must point to the Synergy repository files you wish to use.

**SMC_XML_FILE** must point to a Synergy method catalog export file, created with either the MDU export option, or the genxml utility.

**GENCS_NAMESPACE** must be set to the namespace value you use when executing the gencs utility.

**GENCS_INTERFACE** must be set to the name of the SMC interface that you want to create pooling wrappers for.

**GENCS_OUT_PARAM_AS** must be set based on whether you use the **gencs -nr** option. If you do, set the value to **out**, if you do not, set the value to **ref**. 
