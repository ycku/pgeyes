EXTENSION = pgeyes        
DATA = pgeyes--0.0.2.sql \
       pgeyes--unpackaged--0.0.2.sql

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
