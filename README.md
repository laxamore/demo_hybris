# SAP Hybris Mini Project

## Setup

Clone repository ini, lalu buat symbolic link folder project ke dalam folder hybris.

#### Linux

```bash
cd demo_hybris
ln -s $(pwd)/custom $HYBRIS_HOME_DIR/hybris/bin/custom
ln -s $(pwd)/config $HYBRIS_HOME_DIR/hybris/config
```

#### Windows

```bash
# make pr to update this section
```

## Initialize

Masuk pada direktori platform pada hybris, kemudian jalankan ant all dan diteruskan dengan command ant initialize.

#### Linux

```bash
cd $HYBRIS_HOME_DIR/hybris/bin/platform
. ./setantenv.sh
ant all
ant initialize
```

#### Windows

```bash
cd $HYBRIS_HOME_DIR/hybris/bin/platform
setantenv.bat
ant all
ant initialize
```

## Run

Untuk menjalankan project, eksekusi command berikut.

#### Linux

```bash
cd $HYBRIS_HOME_DIR/hybris/bin/platform
./hybrisserver.sh debug
```

#### Windows

```bash
cd $HYBRIS_HOME_DIR/hybris/bin/platform
hybrisserver.bat debug
```
