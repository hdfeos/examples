c This example shows how to read a data field and two geo-location
c  fields in HDF-EOS2 swath data.

      program read_fields_swath_MOD04_L2

      implicit none

      integer*4 swathfile1
      integer*4 swath1
      integer status
      integer*4 datafield1rank(32)
      integer*4 datafield1dimsize(32)
      integer*4 datafield1type(1)
      character*512 datafield1dimname
      integer*2 datafield1data(243,1997)
      integer*4 datafield1start(2)
      integer*4 datafield1stride(2)
      integer*4 datafield1edge(2)
      integer*4 geofield1rank(32)
      integer*4 geofield1dimsize(32)
      integer*4 geofield1type(1)
      character*512 geofield1dimname
      real*4 geofield1data(243,1997)
      integer*4 geofield1start(2)
      integer*4 geofield1stride(2)
      integer*4 geofield1edge(2)
      integer*4 geofield2rank(32)
      integer*4 geofield2dimsize(32)
      integer*4 geofield2type(1)
      character*512 geofield2dimname
      real*4 geofield2data(243,1997)
      integer*4 geofield2start(2)
      integer*4 geofield2stride(2)
      integer*4 geofield2edge(2)
      integer*4 i, j
      integer swrdfld, swfldinfo, swdetach, swclose
      external swrdfld, swfldinfo, swdetach, swclose
      integer*4 swopen, swattach
      external swopen, swattach
      integer*4 DFACC_READ
      parameter (DFACC_READ=1)

c Open 'MOD04_L2.A2014150.0320.061.2017312130731.hdf' using
c  swath API
      swathfile1 = swopen
     $ ('MOD04_L2.A2014150.0320.061.2017312130731.hdf',
     $  DFACC_READ)

c Close 'MOD04_L2.A2014150.0320.061.2017312130731.hdf'
      status = swclose(swathfile1)

      end
