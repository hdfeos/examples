HDF4_DIR=/usr/local
HDFEOS2_DIR=/usr/local

FC=f77
LDFLAGS= -L$(HDFEOS2_DIR)/lib -L$(HDF4_DIR)/lib
LIBS=-lhdfeos -lGctp -lmfhdf -ldf -ljpeg -lz

read_swath: read_fields_swath_MOD04_L2.f
	    $(FC) $(FFLAGS) $(LDFLAGS) $< $(LIBS) -o $@
