include $(dir $(DESIGN_CONFIG))/config.mk


#export FLOW_VARIANT = hier
export FLOW_VARIANT = hier_rtlmp
export SYNTH_HIERARCHICAL = 1
export MAX_UNGROUP_SIZE = 100
export RTLMP_FLOW = True

export FLOORPLAN_DEF = ./results/$(PLATFORM)/$(DESIGN_NAME)/$(FLOW_VARIANT)/2_2_floorplan_io.def
#
# RTL_MP Settings
export RTLMP_MAX_INST = 5000
export RTLMP_MIN_INST = 1000
export RTLMP_MAX_MACRO = 12
export RTLMP_MIN_MACRO = 4
export RTLMP_RPT_DIR = $(OBJECTS_DIR)/rtlmp
export RTLMP_RPT_FILE = partition.txt
export RTLMP_CONFIG_FILE = ./designs/$(PLATFORM)/$(DESIGN_NAME)/rtlmp_config.txt
export RTLMP_BLOCKAGE_FILE = $(OBJECTS_DIR)/rtlmp/partition.txt.blockage

# These values must be multiples of placement site
export DIE_AREA    = 0 0 700 660 
export CORE_AREA   = 10 10 690 650 
export PLACE_PINS_ARGS = -exclude left:0-300 -exclude left:400-700 -exclude right:* -exclude top:* -exclude bottom:*
