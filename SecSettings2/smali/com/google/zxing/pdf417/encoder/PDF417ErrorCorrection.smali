.class final Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;
.super Ljava/lang/Object;
.source "PDF417ErrorCorrection.java"


# static fields
.field private static final EC_COEFFICIENTS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v5, [I

    const/16 v2, 0x1b

    aput v2, v1, v7

    const/16 v2, 0x395

    aput v2, v1, v8

    aput-object v1, v0, v7

    new-array v1, v6, [I

    const/16 v2, 0x20a

    aput v2, v1, v7

    const/16 v2, 0x238

    aput v2, v1, v8

    const/16 v2, 0x2d3

    aput v2, v1, v5

    const/4 v2, 0x3

    const/16 v3, 0x329

    aput v3, v1, v2

    aput-object v1, v0, v8

    new-array v1, v9, [I

    const/16 v2, 0xed

    aput v2, v1, v7

    const/16 v2, 0x134

    aput v2, v1, v8

    const/16 v2, 0x1b4

    aput v2, v1, v5

    const/4 v2, 0x3

    const/16 v3, 0x11c

    aput v3, v1, v2

    const/16 v2, 0x286

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0x28d

    aput v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x1ac

    aput v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x17b

    aput v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const/16 v2, 0x10

    new-array v2, v2, [I

    const/16 v3, 0x112

    aput v3, v2, v7

    const/16 v3, 0x232

    aput v3, v2, v8

    const/16 v3, 0xe8

    aput v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0x2f3

    aput v4, v2, v3

    const/16 v3, 0x257

    aput v3, v2, v6

    const/4 v3, 0x5

    const/16 v4, 0x20c

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x321

    aput v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x84

    aput v4, v2, v3

    const/16 v3, 0x127

    aput v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x74

    aput v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x1ba

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x1ac

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x127

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x2a

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xb0

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x41

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v1, v1, [I

    const/16 v2, 0x169

    aput v2, v1, v7

    const/16 v2, 0x23f

    aput v2, v1, v8

    const/16 v2, 0x39a

    aput v2, v1, v5

    const/4 v2, 0x3

    const/16 v3, 0x20d

    aput v3, v1, v2

    const/16 v2, 0xb0

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0x24a

    aput v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x280

    aput v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x141

    aput v3, v1, v2

    const/16 v2, 0x218

    aput v2, v1, v9

    const/16 v2, 0x9

    const/16 v3, 0x2e6

    aput v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x2a5

    aput v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x2e6

    aput v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x2af

    aput v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x11c

    aput v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0xc1

    aput v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x205

    aput v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x111

    aput v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x1ee

    aput v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x107

    aput v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x93

    aput v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x251

    aput v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x320

    aput v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x23b

    aput v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x140

    aput v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x323

    aput v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x85

    aput v3, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0xe7

    aput v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x186

    aput v3, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x2ad

    aput v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x14a

    aput v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0x3f

    aput v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x19a

    aput v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x40

    new-array v2, v2, [I

    const/16 v3, 0x21b

    aput v3, v2, v7

    const/16 v3, 0x1a6

    aput v3, v2, v8

    const/4 v3, 0x6

    aput v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0x5d

    aput v4, v2, v3

    const/16 v3, 0x35e

    aput v3, v2, v6

    const/4 v3, 0x5

    const/16 v4, 0x303

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x1c5

    aput v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x6a

    aput v4, v2, v3

    const/16 v3, 0x262

    aput v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x11f

    aput v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x6b

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x1f9

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x2dd

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x36d

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x17d

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x264

    aput v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x2d3

    aput v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x1dc

    aput v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x1ce

    aput v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0xac

    aput v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x1ae

    aput v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x261

    aput v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x35a

    aput v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x336

    aput v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x21f

    aput v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x178

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1ff

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x190

    aput v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x2a0

    aput v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x2fa

    aput v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x11b

    aput v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0xb8

    aput v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x1b8

    aput v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x23

    aput v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x207

    aput v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0x1f

    aput v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0x1cc

    aput v4, v2, v3

    const/16 v3, 0x25

    const/16 v4, 0x252

    aput v4, v2, v3

    const/16 v3, 0x26

    const/16 v4, 0xe1

    aput v4, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0x217

    aput v4, v2, v3

    const/16 v3, 0x28

    const/16 v4, 0x205

    aput v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0x160

    aput v4, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0x25d

    aput v4, v2, v3

    const/16 v3, 0x2b

    const/16 v4, 0x9e

    aput v4, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0x28b

    aput v4, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0x1e8

    aput v4, v2, v3

    const/16 v3, 0x2f

    const/16 v4, 0x1f6

    aput v4, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0x288

    aput v4, v2, v3

    const/16 v3, 0x31

    const/16 v4, 0x2dd

    aput v4, v2, v3

    const/16 v3, 0x32

    const/16 v4, 0x2cd

    aput v4, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0x53

    aput v4, v2, v3

    const/16 v3, 0x34

    const/16 v4, 0x194

    aput v4, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x61

    aput v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0x118

    aput v4, v2, v3

    const/16 v3, 0x37

    const/16 v4, 0x303

    aput v4, v2, v3

    const/16 v3, 0x38

    const/16 v4, 0x348

    aput v4, v2, v3

    const/16 v3, 0x39

    const/16 v4, 0x275

    aput v4, v2, v3

    const/16 v3, 0x3a

    aput v6, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0x17d

    aput v4, v2, v3

    const/16 v3, 0x3c

    const/16 v4, 0x34b

    aput v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, 0x26f

    aput v4, v2, v3

    const/16 v3, 0x3e

    const/16 v4, 0x108

    aput v4, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0x21f

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x80

    new-array v2, v2, [I

    const/16 v3, 0x209

    aput v3, v2, v7

    const/16 v3, 0x136

    aput v3, v2, v8

    const/16 v3, 0x360

    aput v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0x223

    aput v4, v2, v3

    const/16 v3, 0x35a

    aput v3, v2, v6

    const/4 v3, 0x5

    const/16 v4, 0x244

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x128

    aput v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x17b

    aput v4, v2, v3

    const/16 v3, 0x35

    aput v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x30b

    aput v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x381

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x1bc

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x190

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x39d

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x2ed

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x19f

    aput v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x336

    aput v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x5d

    aput v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0xd9

    aput v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0xd0

    aput v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x3a0

    aput v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0xf4

    aput v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x247

    aput v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x26c

    aput v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0xf6

    aput v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x94

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1bf

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x277

    aput v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x124

    aput v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x38c

    aput v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x1ea

    aput v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0x2c0

    aput v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x204

    aput v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x102

    aput v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x1c9

    aput v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0x38b

    aput v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0x252

    aput v4, v2, v3

    const/16 v3, 0x25

    const/16 v4, 0x2d3

    aput v4, v2, v3

    const/16 v3, 0x26

    const/16 v4, 0x2a2

    aput v4, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0x124

    aput v4, v2, v3

    const/16 v3, 0x28

    const/16 v4, 0x110

    aput v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0x60

    aput v4, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0x2ac

    aput v4, v2, v3

    const/16 v3, 0x2b

    const/16 v4, 0x1b0

    aput v4, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0x2ae

    aput v4, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0x25e

    aput v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0x35c

    aput v4, v2, v3

    const/16 v3, 0x2f

    const/16 v4, 0x239

    aput v4, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0xc1

    aput v4, v2, v3

    const/16 v3, 0x31

    const/16 v4, 0xdb

    aput v4, v2, v3

    const/16 v3, 0x32

    const/16 v4, 0x81

    aput v4, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0xba

    aput v4, v2, v3

    const/16 v3, 0x34

    const/16 v4, 0xec

    aput v4, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x11f

    aput v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0xc0

    aput v4, v2, v3

    const/16 v3, 0x37

    const/16 v4, 0x307

    aput v4, v2, v3

    const/16 v3, 0x38

    const/16 v4, 0x116

    aput v4, v2, v3

    const/16 v3, 0x39

    const/16 v4, 0xad

    aput v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0x28

    aput v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0x17b

    aput v4, v2, v3

    const/16 v3, 0x3c

    const/16 v4, 0x2c8

    aput v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, 0x1cf

    aput v4, v2, v3

    const/16 v3, 0x3e

    const/16 v4, 0x286

    aput v4, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0x308

    aput v4, v2, v3

    const/16 v3, 0x40

    const/16 v4, 0xab

    aput v4, v2, v3

    const/16 v3, 0x41

    const/16 v4, 0x1eb

    aput v4, v2, v3

    const/16 v3, 0x42

    const/16 v4, 0x129

    aput v4, v2, v3

    const/16 v3, 0x43

    const/16 v4, 0x2fb

    aput v4, v2, v3

    const/16 v3, 0x44

    const/16 v4, 0x9c

    aput v4, v2, v3

    const/16 v3, 0x45

    const/16 v4, 0x2dc

    aput v4, v2, v3

    const/16 v3, 0x46

    const/16 v4, 0x5f

    aput v4, v2, v3

    const/16 v3, 0x47

    const/16 v4, 0x10e

    aput v4, v2, v3

    const/16 v3, 0x48

    const/16 v4, 0x1bf

    aput v4, v2, v3

    const/16 v3, 0x49

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/16 v3, 0x4a

    const/16 v4, 0x1fb

    aput v4, v2, v3

    const/16 v3, 0x4b

    const/16 v4, 0x30

    aput v4, v2, v3

    const/16 v3, 0x4c

    const/16 v4, 0xe4

    aput v4, v2, v3

    const/16 v3, 0x4d

    const/16 v4, 0x335

    aput v4, v2, v3

    const/16 v3, 0x4e

    const/16 v4, 0x328

    aput v4, v2, v3

    const/16 v3, 0x4f

    const/16 v4, 0x382

    aput v4, v2, v3

    const/16 v3, 0x50

    const/16 v4, 0x310

    aput v4, v2, v3

    const/16 v3, 0x51

    const/16 v4, 0x297

    aput v4, v2, v3

    const/16 v3, 0x52

    const/16 v4, 0x273

    aput v4, v2, v3

    const/16 v3, 0x53

    const/16 v4, 0x17a

    aput v4, v2, v3

    const/16 v3, 0x54

    const/16 v4, 0x17e

    aput v4, v2, v3

    const/16 v3, 0x55

    const/16 v4, 0x106

    aput v4, v2, v3

    const/16 v3, 0x56

    const/16 v4, 0x17c

    aput v4, v2, v3

    const/16 v3, 0x57

    const/16 v4, 0x25a

    aput v4, v2, v3

    const/16 v3, 0x58

    const/16 v4, 0x2f2

    aput v4, v2, v3

    const/16 v3, 0x59

    const/16 v4, 0x150

    aput v4, v2, v3

    const/16 v3, 0x5a

    const/16 v4, 0x59

    aput v4, v2, v3

    const/16 v3, 0x5b

    const/16 v4, 0x266

    aput v4, v2, v3

    const/16 v3, 0x5c

    const/16 v4, 0x57

    aput v4, v2, v3

    const/16 v3, 0x5d

    const/16 v4, 0x1b0

    aput v4, v2, v3

    const/16 v3, 0x5e

    const/16 v4, 0x29e

    aput v4, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x268

    aput v4, v2, v3

    const/16 v3, 0x60

    const/16 v4, 0x9d

    aput v4, v2, v3

    const/16 v3, 0x61

    const/16 v4, 0x176

    aput v4, v2, v3

    const/16 v3, 0x62

    const/16 v4, 0xf2

    aput v4, v2, v3

    const/16 v3, 0x63

    const/16 v4, 0x2d6

    aput v4, v2, v3

    const/16 v3, 0x64

    const/16 v4, 0x258

    aput v4, v2, v3

    const/16 v3, 0x65

    const/16 v4, 0x10d

    aput v4, v2, v3

    const/16 v3, 0x66

    const/16 v4, 0x177

    aput v4, v2, v3

    const/16 v3, 0x67

    const/16 v4, 0x382

    aput v4, v2, v3

    const/16 v3, 0x68

    const/16 v4, 0x34d

    aput v4, v2, v3

    const/16 v3, 0x69

    const/16 v4, 0x1c6

    aput v4, v2, v3

    const/16 v3, 0x6a

    const/16 v4, 0x162

    aput v4, v2, v3

    const/16 v3, 0x6b

    const/16 v4, 0x82

    aput v4, v2, v3

    const/16 v3, 0x6c

    const/16 v4, 0x32e

    aput v4, v2, v3

    const/16 v3, 0x6d

    const/16 v4, 0x24b

    aput v4, v2, v3

    const/16 v3, 0x6e

    const/16 v4, 0x324

    aput v4, v2, v3

    const/16 v3, 0x6f

    const/16 v4, 0x22

    aput v4, v2, v3

    const/16 v3, 0x70

    const/16 v4, 0xd3

    aput v4, v2, v3

    const/16 v3, 0x71

    const/16 v4, 0x14a

    aput v4, v2, v3

    const/16 v3, 0x72

    const/16 v4, 0x21b

    aput v4, v2, v3

    const/16 v3, 0x73

    const/16 v4, 0x129

    aput v4, v2, v3

    const/16 v3, 0x74

    const/16 v4, 0x33b

    aput v4, v2, v3

    const/16 v3, 0x75

    const/16 v4, 0x361

    aput v4, v2, v3

    const/16 v3, 0x76

    const/16 v4, 0x25

    aput v4, v2, v3

    const/16 v3, 0x77

    const/16 v4, 0x205

    aput v4, v2, v3

    const/16 v3, 0x78

    const/16 v4, 0x342

    aput v4, v2, v3

    const/16 v3, 0x79

    const/16 v4, 0x13b

    aput v4, v2, v3

    const/16 v3, 0x7a

    const/16 v4, 0x226

    aput v4, v2, v3

    const/16 v3, 0x7b

    const/16 v4, 0x56

    aput v4, v2, v3

    const/16 v3, 0x7c

    const/16 v4, 0x321

    aput v4, v2, v3

    const/16 v3, 0x7d

    aput v6, v2, v3

    const/16 v3, 0x7e

    const/16 v4, 0x6c

    aput v4, v2, v3

    const/16 v3, 0x7f

    const/16 v4, 0x21b

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x100

    new-array v2, v2, [I

    const/16 v3, 0x20c

    aput v3, v2, v7

    const/16 v3, 0x37e

    aput v3, v2, v8

    const/16 v3, 0x4b

    aput v3, v2, v5

    const/4 v3, 0x3

    const/16 v4, 0x2fe

    aput v4, v2, v3

    const/16 v3, 0x372

    aput v3, v2, v6

    const/4 v3, 0x5

    const/16 v4, 0x359

    aput v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0xcc

    aput v4, v2, v3

    const/16 v3, 0x52

    aput v3, v2, v9

    const/16 v3, 0x9

    const/16 v4, 0x24a

    aput v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0x2c4

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xfa

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x389

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x312

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x8a

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x2d0

    aput v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x35a

    aput v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0xc2

    aput v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x137

    aput v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x391

    aput v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x113

    aput v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0xbe

    aput v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x177

    aput v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x352

    aput v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x1b6

    aput v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x2dd

    aput v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0xc2

    aput v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x118

    aput v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0xc9

    aput v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x118

    aput v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x33c

    aput v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0x2f5

    aput v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x2c6

    aput v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x32e

    aput v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x397

    aput v4, v2, v3

    const/16 v3, 0x23

    const/16 v4, 0x59

    aput v4, v2, v3

    const/16 v3, 0x24

    const/16 v4, 0x44

    aput v4, v2, v3

    const/16 v3, 0x25

    const/16 v4, 0x239

    aput v4, v2, v3

    const/16 v3, 0x26

    const/16 v4, 0xb

    aput v4, v2, v3

    const/16 v3, 0x27

    const/16 v4, 0xcc

    aput v4, v2, v3

    const/16 v3, 0x28

    const/16 v4, 0x31c

    aput v4, v2, v3

    const/16 v3, 0x29

    const/16 v4, 0x25d

    aput v4, v2, v3

    const/16 v3, 0x2a

    const/16 v4, 0x21c

    aput v4, v2, v3

    const/16 v3, 0x2b

    const/16 v4, 0x391

    aput v4, v2, v3

    const/16 v3, 0x2c

    const/16 v4, 0x321

    aput v4, v2, v3

    const/16 v3, 0x2d

    const/16 v4, 0x2bc

    aput v4, v2, v3

    const/16 v3, 0x2e

    const/16 v4, 0x31f

    aput v4, v2, v3

    const/16 v3, 0x2f

    const/16 v4, 0x89

    aput v4, v2, v3

    const/16 v3, 0x30

    const/16 v4, 0x1b7

    aput v4, v2, v3

    const/16 v3, 0x31

    const/16 v4, 0x1a2

    aput v4, v2, v3

    const/16 v3, 0x32

    const/16 v4, 0x250

    aput v4, v2, v3

    const/16 v3, 0x33

    const/16 v4, 0x29c

    aput v4, v2, v3

    const/16 v3, 0x34

    const/16 v4, 0x161

    aput v4, v2, v3

    const/16 v3, 0x35

    const/16 v4, 0x35b

    aput v4, v2, v3

    const/16 v3, 0x36

    const/16 v4, 0x172

    aput v4, v2, v3

    const/16 v3, 0x37

    const/16 v4, 0x2b6

    aput v4, v2, v3

    const/16 v3, 0x38

    const/16 v4, 0x145

    aput v4, v2, v3

    const/16 v3, 0x39

    const/16 v4, 0xf0

    aput v4, v2, v3

    const/16 v3, 0x3a

    const/16 v4, 0xd8

    aput v4, v2, v3

    const/16 v3, 0x3b

    const/16 v4, 0x101

    aput v4, v2, v3

    const/16 v3, 0x3c

    const/16 v4, 0x11c

    aput v4, v2, v3

    const/16 v3, 0x3d

    const/16 v4, 0x225

    aput v4, v2, v3

    const/16 v3, 0x3e

    const/16 v4, 0xd1

    aput v4, v2, v3

    const/16 v3, 0x3f

    const/16 v4, 0x374

    aput v4, v2, v3

    const/16 v3, 0x40

    const/16 v4, 0x13b

    aput v4, v2, v3

    const/16 v3, 0x41

    const/16 v4, 0x46

    aput v4, v2, v3

    const/16 v3, 0x42

    const/16 v4, 0x149

    aput v4, v2, v3

    const/16 v3, 0x43

    const/16 v4, 0x319

    aput v4, v2, v3

    const/16 v3, 0x44

    const/16 v4, 0x1ea

    aput v4, v2, v3

    const/16 v3, 0x45

    const/16 v4, 0x112

    aput v4, v2, v3

    const/16 v3, 0x46

    const/16 v4, 0x36d

    aput v4, v2, v3

    const/16 v3, 0x47

    const/16 v4, 0xa2

    aput v4, v2, v3

    const/16 v3, 0x48

    const/16 v4, 0x2ed

    aput v4, v2, v3

    const/16 v3, 0x49

    const/16 v4, 0x32c

    aput v4, v2, v3

    const/16 v3, 0x4a

    const/16 v4, 0x2ac

    aput v4, v2, v3

    const/16 v3, 0x4b

    const/16 v4, 0x1cd

    aput v4, v2, v3

    const/16 v3, 0x4c

    const/16 v4, 0x14e

    aput v4, v2, v3

    const/16 v3, 0x4d

    const/16 v4, 0x178

    aput v4, v2, v3

    const/16 v3, 0x4e

    const/16 v4, 0x351

    aput v4, v2, v3

    const/16 v3, 0x4f

    const/16 v4, 0x209

    aput v4, v2, v3

    const/16 v3, 0x50

    const/16 v4, 0x133

    aput v4, v2, v3

    const/16 v3, 0x51

    const/16 v4, 0x123

    aput v4, v2, v3

    const/16 v3, 0x52

    const/16 v4, 0x323

    aput v4, v2, v3

    const/16 v3, 0x53

    const/16 v4, 0x2c8

    aput v4, v2, v3

    const/16 v3, 0x54

    const/16 v4, 0x13

    aput v4, v2, v3

    const/16 v3, 0x55

    const/16 v4, 0x166

    aput v4, v2, v3

    const/16 v3, 0x56

    const/16 v4, 0x18f

    aput v4, v2, v3

    const/16 v3, 0x57

    const/16 v4, 0x38c

    aput v4, v2, v3

    const/16 v3, 0x58

    const/16 v4, 0x67

    aput v4, v2, v3

    const/16 v3, 0x59

    const/16 v4, 0x1ff

    aput v4, v2, v3

    const/16 v3, 0x5a

    const/16 v4, 0x33

    aput v4, v2, v3

    const/16 v3, 0x5b

    aput v9, v2, v3

    const/16 v3, 0x5c

    const/16 v4, 0x205

    aput v4, v2, v3

    const/16 v3, 0x5d

    const/16 v4, 0xe1

    aput v4, v2, v3

    const/16 v3, 0x5e

    const/16 v4, 0x121

    aput v4, v2, v3

    const/16 v3, 0x5f

    const/16 v4, 0x1d6

    aput v4, v2, v3

    const/16 v3, 0x60

    const/16 v4, 0x27d

    aput v4, v2, v3

    const/16 v3, 0x61

    const/16 v4, 0x2db

    aput v4, v2, v3

    const/16 v3, 0x62

    const/16 v4, 0x42

    aput v4, v2, v3

    const/16 v3, 0x63

    const/16 v4, 0xff

    aput v4, v2, v3

    const/16 v3, 0x64

    const/16 v4, 0x395

    aput v4, v2, v3

    const/16 v3, 0x65

    const/16 v4, 0x10d

    aput v4, v2, v3

    const/16 v3, 0x66

    const/16 v4, 0x1cf

    aput v4, v2, v3

    const/16 v3, 0x67

    const/16 v4, 0x33e

    aput v4, v2, v3

    const/16 v3, 0x68

    const/16 v4, 0x2da

    aput v4, v2, v3

    const/16 v3, 0x69

    const/16 v4, 0x1b1

    aput v4, v2, v3

    const/16 v3, 0x6a

    const/16 v4, 0x350

    aput v4, v2, v3

    const/16 v3, 0x6b

    const/16 v4, 0x249

    aput v4, v2, v3

    const/16 v3, 0x6c

    const/16 v4, 0x88

    aput v4, v2, v3

    const/16 v3, 0x6d

    const/16 v4, 0x21a

    aput v4, v2, v3

    const/16 v3, 0x6e

    const/16 v4, 0x38a

    aput v4, v2, v3

    const/16 v3, 0x6f

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/16 v3, 0x70

    aput v5, v2, v3

    const/16 v3, 0x71

    const/16 v4, 0x122

    aput v4, v2, v3

    const/16 v3, 0x72

    const/16 v4, 0x2e7

    aput v4, v2, v3

    const/16 v3, 0x73

    const/16 v4, 0xc7

    aput v4, v2, v3

    const/16 v3, 0x74

    const/16 v4, 0x28f

    aput v4, v2, v3

    const/16 v3, 0x75

    const/16 v4, 0x387

    aput v4, v2, v3

    const/16 v3, 0x76

    const/16 v4, 0x149

    aput v4, v2, v3

    const/16 v3, 0x77

    const/16 v4, 0x31

    aput v4, v2, v3

    const/16 v3, 0x78

    const/16 v4, 0x322

    aput v4, v2, v3

    const/16 v3, 0x79

    const/16 v4, 0x244

    aput v4, v2, v3

    const/16 v3, 0x7a

    const/16 v4, 0x163

    aput v4, v2, v3

    const/16 v3, 0x7b

    const/16 v4, 0x24c

    aput v4, v2, v3

    const/16 v3, 0x7c

    const/16 v4, 0xbc

    aput v4, v2, v3

    const/16 v3, 0x7d

    const/16 v4, 0x1ce

    aput v4, v2, v3

    const/16 v3, 0x7e

    const/16 v4, 0xa

    aput v4, v2, v3

    const/16 v3, 0x7f

    const/16 v4, 0x86

    aput v4, v2, v3

    const/16 v3, 0x80

    const/16 v4, 0x274

    aput v4, v2, v3

    const/16 v3, 0x81

    const/16 v4, 0x140

    aput v4, v2, v3

    const/16 v3, 0x82

    const/16 v4, 0x1df

    aput v4, v2, v3

    const/16 v3, 0x83

    const/16 v4, 0x82

    aput v4, v2, v3

    const/16 v3, 0x84

    const/16 v4, 0x2e3

    aput v4, v2, v3

    const/16 v3, 0x85

    const/16 v4, 0x47

    aput v4, v2, v3

    const/16 v3, 0x86

    const/16 v4, 0x107

    aput v4, v2, v3

    const/16 v3, 0x87

    const/16 v4, 0x13e

    aput v4, v2, v3

    const/16 v3, 0x88

    const/16 v4, 0x176

    aput v4, v2, v3

    const/16 v3, 0x89

    const/16 v4, 0x259

    aput v4, v2, v3

    const/16 v3, 0x8a

    const/16 v4, 0xc0

    aput v4, v2, v3

    const/16 v3, 0x8b

    const/16 v4, 0x25d

    aput v4, v2, v3

    const/16 v3, 0x8c

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0x8d

    const/16 v4, 0x2a1

    aput v4, v2, v3

    const/16 v3, 0x8e

    const/16 v4, 0x2af

    aput v4, v2, v3

    const/16 v3, 0x8f

    const/16 v4, 0xea

    aput v4, v2, v3

    const/16 v3, 0x90

    const/16 v4, 0x2d2

    aput v4, v2, v3

    const/16 v3, 0x91

    const/16 v4, 0x180

    aput v4, v2, v3

    const/16 v3, 0x92

    const/16 v4, 0xb1

    aput v4, v2, v3

    const/16 v3, 0x93

    const/16 v4, 0x2f0

    aput v4, v2, v3

    const/16 v3, 0x94

    const/16 v4, 0x25f

    aput v4, v2, v3

    const/16 v3, 0x95

    const/16 v4, 0x280

    aput v4, v2, v3

    const/16 v3, 0x96

    const/16 v4, 0x1c7

    aput v4, v2, v3

    const/16 v3, 0x97

    const/16 v4, 0xc1

    aput v4, v2, v3

    const/16 v3, 0x98

    const/16 v4, 0x2b1

    aput v4, v2, v3

    const/16 v3, 0x99

    const/16 v4, 0x2c3

    aput v4, v2, v3

    const/16 v3, 0x9a

    const/16 v4, 0x325

    aput v4, v2, v3

    const/16 v3, 0x9b

    const/16 v4, 0x281

    aput v4, v2, v3

    const/16 v3, 0x9c

    const/16 v4, 0x30

    aput v4, v2, v3

    const/16 v3, 0x9d

    const/16 v4, 0x3c

    aput v4, v2, v3

    const/16 v3, 0x9e

    const/16 v4, 0x2dc

    aput v4, v2, v3

    const/16 v3, 0x9f

    const/16 v4, 0x26d

    aput v4, v2, v3

    const/16 v3, 0xa0

    const/16 v4, 0x37f

    aput v4, v2, v3

    const/16 v3, 0xa1

    const/16 v4, 0x220

    aput v4, v2, v3

    const/16 v3, 0xa2

    const/16 v4, 0x105

    aput v4, v2, v3

    const/16 v3, 0xa3

    const/16 v4, 0x354

    aput v4, v2, v3

    const/16 v3, 0xa4

    const/16 v4, 0x28f

    aput v4, v2, v3

    const/16 v3, 0xa5

    const/16 v4, 0x135

    aput v4, v2, v3

    const/16 v3, 0xa6

    const/16 v4, 0x2b9

    aput v4, v2, v3

    const/16 v3, 0xa7

    const/16 v4, 0x2f3

    aput v4, v2, v3

    const/16 v3, 0xa8

    const/16 v4, 0x2f4

    aput v4, v2, v3

    const/16 v3, 0xa9

    const/16 v4, 0x3c

    aput v4, v2, v3

    const/16 v3, 0xaa

    const/16 v4, 0xe7

    aput v4, v2, v3

    const/16 v3, 0xab

    const/16 v4, 0x305

    aput v4, v2, v3

    const/16 v3, 0xac

    const/16 v4, 0x1b2

    aput v4, v2, v3

    const/16 v3, 0xad

    const/16 v4, 0x1a5

    aput v4, v2, v3

    const/16 v3, 0xae

    const/16 v4, 0x2d6

    aput v4, v2, v3

    const/16 v3, 0xaf

    const/16 v4, 0x210

    aput v4, v2, v3

    const/16 v3, 0xb0

    const/16 v4, 0x1f7

    aput v4, v2, v3

    const/16 v3, 0xb1

    const/16 v4, 0x76

    aput v4, v2, v3

    const/16 v3, 0xb2

    const/16 v4, 0x31

    aput v4, v2, v3

    const/16 v3, 0xb3

    const/16 v4, 0x31b

    aput v4, v2, v3

    const/16 v3, 0xb4

    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0xb5

    const/16 v4, 0x90

    aput v4, v2, v3

    const/16 v3, 0xb6

    const/16 v4, 0x1f4

    aput v4, v2, v3

    const/16 v3, 0xb7

    const/16 v4, 0xee

    aput v4, v2, v3

    const/16 v3, 0xb8

    const/16 v4, 0x344

    aput v4, v2, v3

    const/16 v3, 0xb9

    const/16 v4, 0x18a

    aput v4, v2, v3

    const/16 v3, 0xba

    const/16 v4, 0x118

    aput v4, v2, v3

    const/16 v3, 0xbb

    const/16 v4, 0x236

    aput v4, v2, v3

    const/16 v3, 0xbc

    const/16 v4, 0x13f

    aput v4, v2, v3

    const/16 v3, 0xbd

    const/16 v4, 0x9

    aput v4, v2, v3

    const/16 v3, 0xbe

    const/16 v4, 0x287

    aput v4, v2, v3

    const/16 v3, 0xbf

    const/16 v4, 0x226

    aput v4, v2, v3

    const/16 v3, 0xc0

    const/16 v4, 0x49

    aput v4, v2, v3

    const/16 v3, 0xc1

    const/16 v4, 0x392

    aput v4, v2, v3

    const/16 v3, 0xc2

    const/16 v4, 0x156

    aput v4, v2, v3

    const/16 v3, 0xc3

    const/16 v4, 0x7e

    aput v4, v2, v3

    const/16 v3, 0xc4

    const/16 v4, 0x20

    aput v4, v2, v3

    const/16 v3, 0xc5

    const/16 v4, 0x2a9

    aput v4, v2, v3

    const/16 v3, 0xc6

    const/16 v4, 0x14b

    aput v4, v2, v3

    const/16 v3, 0xc7

    const/16 v4, 0x318

    aput v4, v2, v3

    const/16 v3, 0xc8

    const/16 v4, 0x26c

    aput v4, v2, v3

    const/16 v3, 0xc9

    const/16 v4, 0x3c

    aput v4, v2, v3

    const/16 v3, 0xca

    const/16 v4, 0x261

    aput v4, v2, v3

    const/16 v3, 0xcb

    const/16 v4, 0x1b9

    aput v4, v2, v3

    const/16 v3, 0xcc

    const/16 v4, 0xb4

    aput v4, v2, v3

    const/16 v3, 0xcd

    const/16 v4, 0x317

    aput v4, v2, v3

    const/16 v3, 0xce

    const/16 v4, 0x37d

    aput v4, v2, v3

    const/16 v3, 0xcf

    const/16 v4, 0x2f2

    aput v4, v2, v3

    const/16 v3, 0xd0

    const/16 v4, 0x25d

    aput v4, v2, v3

    const/16 v3, 0xd1

    const/16 v4, 0x17f

    aput v4, v2, v3

    const/16 v3, 0xd2

    const/16 v4, 0xe4

    aput v4, v2, v3

    const/16 v3, 0xd3

    const/16 v4, 0x2ed

    aput v4, v2, v3

    const/16 v3, 0xd4

    const/16 v4, 0x2f8

    aput v4, v2, v3

    const/16 v3, 0xd5

    const/16 v4, 0xd5

    aput v4, v2, v3

    const/16 v3, 0xd6

    const/16 v4, 0x36

    aput v4, v2, v3

    const/16 v3, 0xd7

    const/16 v4, 0x129

    aput v4, v2, v3

    const/16 v3, 0xd8

    const/16 v4, 0x86

    aput v4, v2, v3

    const/16 v3, 0xd9

    const/16 v4, 0x36

    aput v4, v2, v3

    const/16 v3, 0xda

    const/16 v4, 0x342

    aput v4, v2, v3

    const/16 v3, 0xdb

    const/16 v4, 0x12b

    aput v4, v2, v3

    const/16 v3, 0xdc

    const/16 v4, 0x39a

    aput v4, v2, v3

    const/16 v3, 0xdd

    const/16 v4, 0xbf

    aput v4, v2, v3

    const/16 v3, 0xde

    const/16 v4, 0x38e

    aput v4, v2, v3

    const/16 v3, 0xdf

    const/16 v4, 0x214

    aput v4, v2, v3

    const/16 v3, 0xe0

    const/16 v4, 0x261

    aput v4, v2, v3

    const/16 v3, 0xe1

    const/16 v4, 0x33d

    aput v4, v2, v3

    const/16 v3, 0xe2

    const/16 v4, 0xbd

    aput v4, v2, v3

    const/16 v3, 0xe3

    const/16 v4, 0x14

    aput v4, v2, v3

    const/16 v3, 0xe4

    const/16 v4, 0xa7

    aput v4, v2, v3

    const/16 v3, 0xe5

    const/16 v4, 0x1d

    aput v4, v2, v3

    const/16 v3, 0xe6

    const/16 v4, 0x368

    aput v4, v2, v3

    const/16 v3, 0xe7

    const/16 v4, 0x1c1

    aput v4, v2, v3

    const/16 v3, 0xe8

    const/16 v4, 0x53

    aput v4, v2, v3

    const/16 v3, 0xe9

    const/16 v4, 0x192

    aput v4, v2, v3

    const/16 v3, 0xea

    const/16 v4, 0x29

    aput v4, v2, v3

    const/16 v3, 0xeb

    const/16 v4, 0x290

    aput v4, v2, v3

    const/16 v3, 0xec

    const/16 v4, 0x1f9

    aput v4, v2, v3

    const/16 v3, 0xed

    const/16 v4, 0x243

    aput v4, v2, v3

    const/16 v3, 0xee

    const/16 v4, 0x1e1

    aput v4, v2, v3

    const/16 v3, 0xef

    const/16 v4, 0xad

    aput v4, v2, v3

    const/16 v3, 0xf0

    const/16 v4, 0x194

    aput v4, v2, v3

    const/16 v3, 0xf1

    const/16 v4, 0xfb

    aput v4, v2, v3

    const/16 v3, 0xf2

    const/16 v4, 0x2b0

    aput v4, v2, v3

    const/16 v3, 0xf3

    const/16 v4, 0x5f

    aput v4, v2, v3

    const/16 v3, 0xf4

    const/16 v4, 0x1f1

    aput v4, v2, v3

    const/16 v3, 0xf5

    const/16 v4, 0x22b

    aput v4, v2, v3

    const/16 v3, 0xf6

    const/16 v4, 0x282

    aput v4, v2, v3

    const/16 v3, 0xf7

    const/16 v4, 0x21f

    aput v4, v2, v3

    const/16 v3, 0xf8

    const/16 v4, 0x133

    aput v4, v2, v3

    const/16 v3, 0xf9

    const/16 v4, 0x9f

    aput v4, v2, v3

    const/16 v3, 0xfa

    const/16 v4, 0x39c

    aput v4, v2, v3

    const/16 v3, 0xfb

    const/16 v4, 0x22e

    aput v4, v2, v3

    const/16 v3, 0xfc

    const/16 v4, 0x288

    aput v4, v2, v3

    const/16 v3, 0xfd

    const/16 v4, 0x37

    aput v4, v2, v3

    const/16 v3, 0xfe

    const/16 v4, 0x1f1

    aput v4, v2, v3

    const/16 v3, 0xff

    const/16 v4, 0xa

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-array v1, v1, [I

    const/16 v2, 0x160

    aput v2, v1, v7

    const/16 v2, 0x4d

    aput v2, v1, v8

    const/16 v2, 0x175

    aput v2, v1, v5

    const/4 v2, 0x3

    const/16 v3, 0x1f8

    aput v3, v1, v2

    const/16 v2, 0x23

    aput v2, v1, v6

    const/4 v2, 0x5

    const/16 v3, 0x257

    aput v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x1ac

    aput v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0xcf

    aput v3, v1, v2

    const/16 v2, 0x199

    aput v2, v1, v9

    const/16 v2, 0x9

    const/16 v3, 0x23e

    aput v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x76

    aput v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x1f2

    aput v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x11d

    aput v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x17c

    aput v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x15e

    aput v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x1ec

    aput v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0xc5

    aput v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x109

    aput v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x398

    aput v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x9b

    aput v3, v1, v2

    const/16 v2, 0x14

    const/16 v3, 0x392

    aput v3, v1, v2

    const/16 v2, 0x15

    const/16 v3, 0x12b

    aput v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0xe5

    aput v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x283

    aput v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x126

    aput v3, v1, v2

    const/16 v2, 0x19

    const/16 v3, 0x367

    aput v3, v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x132

    aput v3, v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x58

    aput v3, v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x57

    aput v3, v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0xc1

    aput v3, v1, v2

    const/16 v2, 0x1e

    const/16 v3, 0x160

    aput v3, v1, v2

    const/16 v2, 0x1f

    const/16 v3, 0x30d

    aput v3, v1, v2

    const/16 v2, 0x20

    const/16 v3, 0x34e

    aput v3, v1, v2

    const/16 v2, 0x21

    const/16 v3, 0x4b

    aput v3, v1, v2

    const/16 v2, 0x22

    const/16 v3, 0x147

    aput v3, v1, v2

    const/16 v2, 0x23

    const/16 v3, 0x208

    aput v3, v1, v2

    const/16 v2, 0x24

    const/16 v3, 0x1b3

    aput v3, v1, v2

    const/16 v2, 0x25

    const/16 v3, 0x21f

    aput v3, v1, v2

    const/16 v2, 0x26

    const/16 v3, 0xcb

    aput v3, v1, v2

    const/16 v2, 0x27

    const/16 v3, 0x29a

    aput v3, v1, v2

    const/16 v2, 0x28

    const/16 v3, 0xf9

    aput v3, v1, v2

    const/16 v2, 0x29

    const/16 v3, 0x15a

    aput v3, v1, v2

    const/16 v2, 0x2a

    const/16 v3, 0x30d

    aput v3, v1, v2

    const/16 v2, 0x2b

    const/16 v3, 0x26d

    aput v3, v1, v2

    const/16 v2, 0x2c

    const/16 v3, 0x280

    aput v3, v1, v2

    const/16 v2, 0x2d

    const/16 v3, 0x10c

    aput v3, v1, v2

    const/16 v2, 0x2e

    const/16 v3, 0x31a

    aput v3, v1, v2

    const/16 v2, 0x2f

    const/16 v3, 0x216

    aput v3, v1, v2

    const/16 v2, 0x30

    const/16 v3, 0x21b

    aput v3, v1, v2

    const/16 v2, 0x31

    const/16 v3, 0x30d

    aput v3, v1, v2

    const/16 v2, 0x32

    const/16 v3, 0x198

    aput v3, v1, v2

    const/16 v2, 0x33

    const/16 v3, 0x186

    aput v3, v1, v2

    const/16 v2, 0x34

    const/16 v3, 0x284

    aput v3, v1, v2

    const/16 v2, 0x35

    const/16 v3, 0x66

    aput v3, v1, v2

    const/16 v2, 0x36

    const/16 v3, 0x1dc

    aput v3, v1, v2

    const/16 v2, 0x37

    const/16 v3, 0x1f3

    aput v3, v1, v2

    const/16 v2, 0x38

    const/16 v3, 0x122

    aput v3, v1, v2

    const/16 v2, 0x39

    const/16 v3, 0x278

    aput v3, v1, v2

    const/16 v2, 0x3a

    const/16 v3, 0x221

    aput v3, v1, v2

    const/16 v2, 0x3b

    const/16 v3, 0x25

    aput v3, v1, v2

    const/16 v2, 0x3c

    const/16 v3, 0x35a

    aput v3, v1, v2

    const/16 v2, 0x3d

    const/16 v3, 0x394

    aput v3, v1, v2

    const/16 v2, 0x3e

    const/16 v3, 0x228

    aput v3, v1, v2

    const/16 v2, 0x3f

    const/16 v3, 0x29

    aput v3, v1, v2

    const/16 v2, 0x40

    const/16 v3, 0x21e

    aput v3, v1, v2

    const/16 v2, 0x41

    const/16 v3, 0x121

    aput v3, v1, v2

    const/16 v2, 0x42

    const/16 v3, 0x7a

    aput v3, v1, v2

    const/16 v2, 0x43

    const/16 v3, 0x110

    aput v3, v1, v2

    const/16 v2, 0x44

    const/16 v3, 0x17f

    aput v3, v1, v2

    const/16 v2, 0x45

    const/16 v3, 0x320

    aput v3, v1, v2

    const/16 v2, 0x46

    const/16 v3, 0x1e5

    aput v3, v1, v2

    const/16 v2, 0x47

    const/16 v3, 0x62

    aput v3, v1, v2

    const/16 v2, 0x48

    const/16 v3, 0x2f0

    aput v3, v1, v2

    const/16 v2, 0x49

    const/16 v3, 0x1d8

    aput v3, v1, v2

    const/16 v2, 0x4a

    const/16 v3, 0x2f9

    aput v3, v1, v2

    const/16 v2, 0x4b

    const/16 v3, 0x6b

    aput v3, v1, v2

    const/16 v2, 0x4c

    const/16 v3, 0x310

    aput v3, v1, v2

    const/16 v2, 0x4d

    const/16 v3, 0x35c

    aput v3, v1, v2

    const/16 v2, 0x4e

    const/16 v3, 0x292

    aput v3, v1, v2

    const/16 v2, 0x4f

    const/16 v3, 0x2e5

    aput v3, v1, v2

    const/16 v2, 0x50

    const/16 v3, 0x122

    aput v3, v1, v2

    const/16 v2, 0x51

    const/16 v3, 0xcc

    aput v3, v1, v2

    const/16 v2, 0x52

    const/16 v3, 0x2a9

    aput v3, v1, v2

    const/16 v2, 0x53

    const/16 v3, 0x197

    aput v3, v1, v2

    const/16 v2, 0x54

    const/16 v3, 0x357

    aput v3, v1, v2

    const/16 v2, 0x55

    const/16 v3, 0x55

    aput v3, v1, v2

    const/16 v2, 0x56

    const/16 v3, 0x63

    aput v3, v1, v2

    const/16 v2, 0x57

    const/16 v3, 0x3e

    aput v3, v1, v2

    const/16 v2, 0x58

    const/16 v3, 0x1e2

    aput v3, v1, v2

    const/16 v2, 0x59

    const/16 v3, 0xb4

    aput v3, v1, v2

    const/16 v2, 0x5a

    const/16 v3, 0x14

    aput v3, v1, v2

    const/16 v2, 0x5b

    const/16 v3, 0x129

    aput v3, v1, v2

    const/16 v2, 0x5c

    const/16 v3, 0x1c3

    aput v3, v1, v2

    const/16 v2, 0x5d

    const/16 v3, 0x251

    aput v3, v1, v2

    const/16 v2, 0x5e

    const/16 v3, 0x391

    aput v3, v1, v2

    const/16 v2, 0x5f

    const/16 v3, 0x8e

    aput v3, v1, v2

    const/16 v2, 0x60

    const/16 v3, 0x328

    aput v3, v1, v2

    const/16 v2, 0x61

    const/16 v3, 0x2ac

    aput v3, v1, v2

    const/16 v2, 0x62

    const/16 v3, 0x11f

    aput v3, v1, v2

    const/16 v2, 0x63

    const/16 v3, 0x218

    aput v3, v1, v2

    const/16 v2, 0x64

    const/16 v3, 0x231

    aput v3, v1, v2

    const/16 v2, 0x65

    const/16 v3, 0x4c

    aput v3, v1, v2

    const/16 v2, 0x66

    const/16 v3, 0x28d

    aput v3, v1, v2

    const/16 v2, 0x67

    const/16 v3, 0x383

    aput v3, v1, v2

    const/16 v2, 0x68

    const/16 v3, 0x2d9

    aput v3, v1, v2

    const/16 v2, 0x69

    const/16 v3, 0x237

    aput v3, v1, v2

    const/16 v2, 0x6a

    const/16 v3, 0x2e8

    aput v3, v1, v2

    const/16 v2, 0x6b

    const/16 v3, 0x186

    aput v3, v1, v2

    const/16 v2, 0x6c

    const/16 v3, 0x201

    aput v3, v1, v2

    const/16 v2, 0x6d

    const/16 v3, 0xc0

    aput v3, v1, v2

    const/16 v2, 0x6e

    const/16 v3, 0x204

    aput v3, v1, v2

    const/16 v2, 0x6f

    const/16 v3, 0x102

    aput v3, v1, v2

    const/16 v2, 0x70

    const/16 v3, 0xf0

    aput v3, v1, v2

    const/16 v2, 0x71

    const/16 v3, 0x206

    aput v3, v1, v2

    const/16 v2, 0x72

    const/16 v3, 0x31a

    aput v3, v1, v2

    const/16 v2, 0x73

    const/16 v3, 0x18b

    aput v3, v1, v2

    const/16 v2, 0x74

    const/16 v3, 0x300

    aput v3, v1, v2

    const/16 v2, 0x75

    const/16 v3, 0x350

    aput v3, v1, v2

    const/16 v2, 0x76

    const/16 v3, 0x33

    aput v3, v1, v2

    const/16 v2, 0x77

    const/16 v3, 0x262

    aput v3, v1, v2

    const/16 v2, 0x78

    const/16 v3, 0x180

    aput v3, v1, v2

    const/16 v2, 0x79

    const/16 v3, 0xa8

    aput v3, v1, v2

    const/16 v2, 0x7a

    const/16 v3, 0xbe

    aput v3, v1, v2

    const/16 v2, 0x7b

    const/16 v3, 0x33a

    aput v3, v1, v2

    const/16 v2, 0x7c

    const/16 v3, 0x148

    aput v3, v1, v2

    const/16 v2, 0x7d

    const/16 v3, 0x254

    aput v3, v1, v2

    const/16 v2, 0x7e

    const/16 v3, 0x312

    aput v3, v1, v2

    const/16 v2, 0x7f

    const/16 v3, 0x12f

    aput v3, v1, v2

    const/16 v2, 0x80

    const/16 v3, 0x23a

    aput v3, v1, v2

    const/16 v2, 0x81

    const/16 v3, 0x17d

    aput v3, v1, v2

    const/16 v2, 0x82

    const/16 v3, 0x19f

    aput v3, v1, v2

    const/16 v2, 0x83

    const/16 v3, 0x281

    aput v3, v1, v2

    const/16 v2, 0x84

    const/16 v3, 0x9c

    aput v3, v1, v2

    const/16 v2, 0x85

    const/16 v3, 0xed

    aput v3, v1, v2

    const/16 v2, 0x86

    const/16 v3, 0x97

    aput v3, v1, v2

    const/16 v2, 0x87

    const/16 v3, 0x1ad

    aput v3, v1, v2

    const/16 v2, 0x88

    const/16 v3, 0x213

    aput v3, v1, v2

    const/16 v2, 0x89

    const/16 v3, 0xcf

    aput v3, v1, v2

    const/16 v2, 0x8a

    const/16 v3, 0x2a4

    aput v3, v1, v2

    const/16 v2, 0x8b

    const/16 v3, 0x2c6

    aput v3, v1, v2

    const/16 v2, 0x8c

    const/16 v3, 0x59

    aput v3, v1, v2

    const/16 v2, 0x8d

    const/16 v3, 0xa8

    aput v3, v1, v2

    const/16 v2, 0x8e

    const/16 v3, 0x130

    aput v3, v1, v2

    const/16 v2, 0x8f

    const/16 v3, 0x192

    aput v3, v1, v2

    const/16 v2, 0x90

    const/16 v3, 0x28

    aput v3, v1, v2

    const/16 v2, 0x91

    const/16 v3, 0x2c4

    aput v3, v1, v2

    const/16 v2, 0x92

    const/16 v3, 0x23f

    aput v3, v1, v2

    const/16 v2, 0x93

    const/16 v3, 0xa2

    aput v3, v1, v2

    const/16 v2, 0x94

    const/16 v3, 0x360

    aput v3, v1, v2

    const/16 v2, 0x95

    const/16 v3, 0xe5

    aput v3, v1, v2

    const/16 v2, 0x96

    const/16 v3, 0x41

    aput v3, v1, v2

    const/16 v2, 0x97

    const/16 v3, 0x35d

    aput v3, v1, v2

    const/16 v2, 0x98

    const/16 v3, 0x349

    aput v3, v1, v2

    const/16 v2, 0x99

    const/16 v3, 0x200

    aput v3, v1, v2

    const/16 v2, 0x9a

    const/16 v3, 0xa4

    aput v3, v1, v2

    const/16 v2, 0x9b

    const/16 v3, 0x1dd

    aput v3, v1, v2

    const/16 v2, 0x9c

    const/16 v3, 0xdd

    aput v3, v1, v2

    const/16 v2, 0x9d

    const/16 v3, 0x5c

    aput v3, v1, v2

    const/16 v2, 0x9e

    const/16 v3, 0x166

    aput v3, v1, v2

    const/16 v2, 0x9f

    const/16 v3, 0x311

    aput v3, v1, v2

    const/16 v2, 0xa0

    const/16 v3, 0x120

    aput v3, v1, v2

    const/16 v2, 0xa1

    const/16 v3, 0x165

    aput v3, v1, v2

    const/16 v2, 0xa2

    const/16 v3, 0x352

    aput v3, v1, v2

    const/16 v2, 0xa3

    const/16 v3, 0x344

    aput v3, v1, v2

    const/16 v2, 0xa4

    const/16 v3, 0x33b

    aput v3, v1, v2

    const/16 v2, 0xa5

    const/16 v3, 0x2e0

    aput v3, v1, v2

    const/16 v2, 0xa6

    const/16 v3, 0x2c3

    aput v3, v1, v2

    const/16 v2, 0xa7

    const/16 v3, 0x5e

    aput v3, v1, v2

    const/16 v2, 0xa8

    aput v9, v1, v2

    const/16 v2, 0xa9

    const/16 v3, 0x1ee

    aput v3, v1, v2

    const/16 v2, 0xaa

    const/16 v3, 0x72

    aput v3, v1, v2

    const/16 v2, 0xab

    const/16 v3, 0x209

    aput v3, v1, v2

    const/16 v2, 0xac

    aput v5, v1, v2

    const/16 v2, 0xad

    const/16 v3, 0x1f3

    aput v3, v1, v2

    const/16 v2, 0xae

    const/16 v3, 0x353

    aput v3, v1, v2

    const/16 v2, 0xaf

    const/16 v3, 0x21f

    aput v3, v1, v2

    const/16 v2, 0xb0

    const/16 v3, 0x98

    aput v3, v1, v2

    const/16 v2, 0xb1

    const/16 v3, 0x2d9

    aput v3, v1, v2

    const/16 v2, 0xb2

    const/16 v3, 0x303

    aput v3, v1, v2

    const/16 v2, 0xb3

    const/16 v3, 0x5f

    aput v3, v1, v2

    const/16 v2, 0xb4

    const/16 v3, 0xf8

    aput v3, v1, v2

    const/16 v2, 0xb5

    const/16 v3, 0x169

    aput v3, v1, v2

    const/16 v2, 0xb6

    const/16 v3, 0x242

    aput v3, v1, v2

    const/16 v2, 0xb7

    const/16 v3, 0x143

    aput v3, v1, v2

    const/16 v2, 0xb8

    const/16 v3, 0x358

    aput v3, v1, v2

    const/16 v2, 0xb9

    const/16 v3, 0x31d

    aput v3, v1, v2

    const/16 v2, 0xba

    const/16 v3, 0x121

    aput v3, v1, v2

    const/16 v2, 0xbb

    const/16 v3, 0x33

    aput v3, v1, v2

    const/16 v2, 0xbc

    const/16 v3, 0x2ac

    aput v3, v1, v2

    const/16 v2, 0xbd

    const/16 v3, 0x1d2

    aput v3, v1, v2

    const/16 v2, 0xbe

    const/16 v3, 0x215

    aput v3, v1, v2

    const/16 v2, 0xbf

    const/16 v3, 0x334

    aput v3, v1, v2

    const/16 v2, 0xc0

    const/16 v3, 0x29d

    aput v3, v1, v2

    const/16 v2, 0xc1

    const/16 v3, 0x2d

    aput v3, v1, v2

    const/16 v2, 0xc2

    const/16 v3, 0x386

    aput v3, v1, v2

    const/16 v2, 0xc3

    const/16 v3, 0x1c4

    aput v3, v1, v2

    const/16 v2, 0xc4

    const/16 v3, 0xa7

    aput v3, v1, v2

    const/16 v2, 0xc5

    const/16 v3, 0x156

    aput v3, v1, v2

    const/16 v2, 0xc6

    const/16 v3, 0xf4

    aput v3, v1, v2

    const/16 v2, 0xc7

    const/16 v3, 0xad

    aput v3, v1, v2

    const/16 v2, 0xc8

    const/16 v3, 0x23

    aput v3, v1, v2

    const/16 v2, 0xc9

    const/16 v3, 0x1cf

    aput v3, v1, v2

    const/16 v2, 0xca

    const/16 v3, 0x28b

    aput v3, v1, v2

    const/16 v2, 0xcb

    const/16 v3, 0x33

    aput v3, v1, v2

    const/16 v2, 0xcc

    const/16 v3, 0x2bb

    aput v3, v1, v2

    const/16 v2, 0xcd

    const/16 v3, 0x24f

    aput v3, v1, v2

    const/16 v2, 0xce

    const/16 v3, 0x1c4

    aput v3, v1, v2

    const/16 v2, 0xcf

    const/16 v3, 0x242

    aput v3, v1, v2

    const/16 v2, 0xd0

    const/16 v3, 0x25

    aput v3, v1, v2

    const/16 v2, 0xd1

    const/16 v3, 0x7c

    aput v3, v1, v2

    const/16 v2, 0xd2

    const/16 v3, 0x12a

    aput v3, v1, v2

    const/16 v2, 0xd3

    const/16 v3, 0x14c

    aput v3, v1, v2

    const/16 v2, 0xd4

    const/16 v3, 0x228

    aput v3, v1, v2

    const/16 v2, 0xd5

    const/16 v3, 0x2b

    aput v3, v1, v2

    const/16 v2, 0xd6

    const/16 v3, 0x1ab

    aput v3, v1, v2

    const/16 v2, 0xd7

    const/16 v3, 0x77

    aput v3, v1, v2

    const/16 v2, 0xd8

    const/16 v3, 0x296

    aput v3, v1, v2

    const/16 v2, 0xd9

    const/16 v3, 0x309

    aput v3, v1, v2

    const/16 v2, 0xda

    const/16 v3, 0x1db

    aput v3, v1, v2

    const/16 v2, 0xdb

    const/16 v3, 0x352

    aput v3, v1, v2

    const/16 v2, 0xdc

    const/16 v3, 0x2fc

    aput v3, v1, v2

    const/16 v2, 0xdd

    const/16 v3, 0x16c

    aput v3, v1, v2

    const/16 v2, 0xde

    const/16 v3, 0x242

    aput v3, v1, v2

    const/16 v2, 0xdf

    const/16 v3, 0x38f

    aput v3, v1, v2

    const/16 v2, 0xe0

    const/16 v3, 0x11b

    aput v3, v1, v2

    const/16 v2, 0xe1

    const/16 v3, 0x2c7

    aput v3, v1, v2

    const/16 v2, 0xe2

    const/16 v3, 0x1d8

    aput v3, v1, v2

    const/16 v2, 0xe3

    const/16 v3, 0x1a4

    aput v3, v1, v2

    const/16 v2, 0xe4

    const/16 v3, 0xf5

    aput v3, v1, v2

    const/16 v2, 0xe5

    const/16 v3, 0x120

    aput v3, v1, v2

    const/16 v2, 0xe6

    const/16 v3, 0x252

    aput v3, v1, v2

    const/16 v2, 0xe7

    const/16 v3, 0x18a

    aput v3, v1, v2

    const/16 v2, 0xe8

    const/16 v3, 0x1ff

    aput v3, v1, v2

    const/16 v2, 0xe9

    const/16 v3, 0x147

    aput v3, v1, v2

    const/16 v2, 0xea

    const/16 v3, 0x24d

    aput v3, v1, v2

    const/16 v2, 0xeb

    const/16 v3, 0x309

    aput v3, v1, v2

    const/16 v2, 0xec

    const/16 v3, 0x2bb

    aput v3, v1, v2

    const/16 v2, 0xed

    const/16 v3, 0x2b0

    aput v3, v1, v2

    const/16 v2, 0xee

    const/16 v3, 0x2b

    aput v3, v1, v2

    const/16 v2, 0xef

    const/16 v3, 0x198

    aput v3, v1, v2

    const/16 v2, 0xf0

    const/16 v3, 0x34a

    aput v3, v1, v2

    const/16 v2, 0xf1

    const/16 v3, 0x17f

    aput v3, v1, v2

    const/16 v2, 0xf2

    const/16 v3, 0x2d1

    aput v3, v1, v2

    const/16 v2, 0xf3

    const/16 v3, 0x209

    aput v3, v1, v2

    const/16 v2, 0xf4

    const/16 v3, 0x230

    aput v3, v1, v2

    const/16 v2, 0xf5

    const/16 v3, 0x284

    aput v3, v1, v2

    const/16 v2, 0xf6

    const/16 v3, 0x2ca

    aput v3, v1, v2

    const/16 v2, 0xf7

    const/16 v3, 0x22f

    aput v3, v1, v2

    const/16 v2, 0xf8

    const/16 v3, 0x3e

    aput v3, v1, v2

    const/16 v2, 0xf9

    const/16 v3, 0x91

    aput v3, v1, v2

    const/16 v2, 0xfa

    const/16 v3, 0x369

    aput v3, v1, v2

    const/16 v2, 0xfb

    const/16 v3, 0x297

    aput v3, v1, v2

    const/16 v2, 0xfc

    const/16 v3, 0x2c9

    aput v3, v1, v2

    const/16 v2, 0xfd

    const/16 v3, 0x9f

    aput v3, v1, v2

    const/16 v2, 0xfe

    const/16 v3, 0x2a0

    aput v3, v1, v2

    const/16 v2, 0xff

    const/16 v3, 0x2d9

    aput v3, v1, v2

    const/16 v2, 0x100

    const/16 v3, 0x270

    aput v3, v1, v2

    const/16 v2, 0x101

    const/16 v3, 0x3b

    aput v3, v1, v2

    const/16 v2, 0x102

    const/16 v3, 0xc1

    aput v3, v1, v2

    const/16 v2, 0x103

    const/16 v3, 0x1a1

    aput v3, v1, v2

    const/16 v2, 0x104

    const/16 v3, 0x9e

    aput v3, v1, v2

    const/16 v2, 0x105

    const/16 v3, 0xd1

    aput v3, v1, v2

    const/16 v2, 0x106

    const/16 v3, 0x233

    aput v3, v1, v2

    const/16 v2, 0x107

    const/16 v3, 0x234

    aput v3, v1, v2

    const/16 v2, 0x108

    const/16 v3, 0x157

    aput v3, v1, v2

    const/16 v2, 0x109

    const/16 v3, 0x2b5

    aput v3, v1, v2

    const/16 v2, 0x10a

    const/16 v3, 0x6d

    aput v3, v1, v2

    const/16 v2, 0x10b

    const/16 v3, 0x260

    aput v3, v1, v2

    const/16 v2, 0x10c

    const/16 v3, 0x233

    aput v3, v1, v2

    const/16 v2, 0x10d

    const/16 v3, 0x16d

    aput v3, v1, v2

    const/16 v2, 0x10e

    const/16 v3, 0xb5

    aput v3, v1, v2

    const/16 v2, 0x10f

    const/16 v3, 0x304

    aput v3, v1, v2

    const/16 v2, 0x110

    const/16 v3, 0x2a5

    aput v3, v1, v2

    const/16 v2, 0x111

    const/16 v3, 0x136

    aput v3, v1, v2

    const/16 v2, 0x112

    const/16 v3, 0xf8

    aput v3, v1, v2

    const/16 v2, 0x113

    const/16 v3, 0x161

    aput v3, v1, v2

    const/16 v2, 0x114

    const/16 v3, 0x2c4

    aput v3, v1, v2

    const/16 v2, 0x115

    const/16 v3, 0x19a

    aput v3, v1, v2

    const/16 v2, 0x116

    const/16 v3, 0x243

    aput v3, v1, v2

    const/16 v2, 0x117

    const/16 v3, 0x366

    aput v3, v1, v2

    const/16 v2, 0x118

    const/16 v3, 0x269

    aput v3, v1, v2

    const/16 v2, 0x119

    const/16 v3, 0x349

    aput v3, v1, v2

    const/16 v2, 0x11a

    const/16 v3, 0x278

    aput v3, v1, v2

    const/16 v2, 0x11b

    const/16 v3, 0x35c

    aput v3, v1, v2

    const/16 v2, 0x11c

    const/16 v3, 0x121

    aput v3, v1, v2

    const/16 v2, 0x11d

    const/16 v3, 0x218

    aput v3, v1, v2

    const/16 v2, 0x11e

    const/16 v3, 0x23

    aput v3, v1, v2

    const/16 v2, 0x11f

    const/16 v3, 0x309

    aput v3, v1, v2

    const/16 v2, 0x120

    const/16 v3, 0x26a

    aput v3, v1, v2

    const/16 v2, 0x121

    const/16 v3, 0x24a

    aput v3, v1, v2

    const/16 v2, 0x122

    const/16 v3, 0x1a8

    aput v3, v1, v2

    const/16 v2, 0x123

    const/16 v3, 0x341

    aput v3, v1, v2

    const/16 v2, 0x124

    const/16 v3, 0x4d

    aput v3, v1, v2

    const/16 v2, 0x125

    const/16 v3, 0x255

    aput v3, v1, v2

    const/16 v2, 0x126

    const/16 v3, 0x15a

    aput v3, v1, v2

    const/16 v2, 0x127

    const/16 v3, 0x10d

    aput v3, v1, v2

    const/16 v2, 0x128

    const/16 v3, 0x2f5

    aput v3, v1, v2

    const/16 v2, 0x129

    const/16 v3, 0x278

    aput v3, v1, v2

    const/16 v2, 0x12a

    const/16 v3, 0x2b7

    aput v3, v1, v2

    const/16 v2, 0x12b

    const/16 v3, 0x2ef

    aput v3, v1, v2

    const/16 v2, 0x12c

    const/16 v3, 0x14b

    aput v3, v1, v2

    const/16 v2, 0x12d

    const/16 v3, 0xf7

    aput v3, v1, v2

    const/16 v2, 0x12e

    const/16 v3, 0xb8

    aput v3, v1, v2

    const/16 v2, 0x12f

    const/16 v3, 0x2d

    aput v3, v1, v2

    const/16 v2, 0x130

    const/16 v3, 0x313

    aput v3, v1, v2

    const/16 v2, 0x131

    const/16 v3, 0x2a8

    aput v3, v1, v2

    const/16 v2, 0x132

    const/16 v3, 0x12

    aput v3, v1, v2

    const/16 v2, 0x133

    const/16 v3, 0x42

    aput v3, v1, v2

    const/16 v2, 0x134

    const/16 v3, 0x197

    aput v3, v1, v2

    const/16 v2, 0x135

    const/16 v3, 0x171

    aput v3, v1, v2

    const/16 v2, 0x136

    const/16 v3, 0x36

    aput v3, v1, v2

    const/16 v2, 0x137

    const/16 v3, 0x1ec

    aput v3, v1, v2

    const/16 v2, 0x138

    const/16 v3, 0xe4

    aput v3, v1, v2

    const/16 v2, 0x139

    const/16 v3, 0x265

    aput v3, v1, v2

    const/16 v2, 0x13a

    const/16 v3, 0x33e

    aput v3, v1, v2

    const/16 v2, 0x13b

    const/16 v3, 0x39a

    aput v3, v1, v2

    const/16 v2, 0x13c

    const/16 v3, 0x1b5

    aput v3, v1, v2

    const/16 v2, 0x13d

    const/16 v3, 0x207

    aput v3, v1, v2

    const/16 v2, 0x13e

    const/16 v3, 0x284

    aput v3, v1, v2

    const/16 v2, 0x13f

    const/16 v3, 0x389

    aput v3, v1, v2

    const/16 v2, 0x140

    const/16 v3, 0x315

    aput v3, v1, v2

    const/16 v2, 0x141

    const/16 v3, 0x1a4

    aput v3, v1, v2

    const/16 v2, 0x142

    const/16 v3, 0x131

    aput v3, v1, v2

    const/16 v2, 0x143

    const/16 v3, 0x1b9

    aput v3, v1, v2

    const/16 v2, 0x144

    const/16 v3, 0xcf

    aput v3, v1, v2

    const/16 v2, 0x145

    const/16 v3, 0x12c

    aput v3, v1, v2

    const/16 v2, 0x146

    const/16 v3, 0x37c

    aput v3, v1, v2

    const/16 v2, 0x147

    const/16 v3, 0x33b

    aput v3, v1, v2

    const/16 v2, 0x148

    const/16 v3, 0x8d

    aput v3, v1, v2

    const/16 v2, 0x149

    const/16 v3, 0x219

    aput v3, v1, v2

    const/16 v2, 0x14a

    const/16 v3, 0x17d

    aput v3, v1, v2

    const/16 v2, 0x14b

    const/16 v3, 0x296

    aput v3, v1, v2

    const/16 v2, 0x14c

    const/16 v3, 0x201

    aput v3, v1, v2

    const/16 v2, 0x14d

    const/16 v3, 0x38

    aput v3, v1, v2

    const/16 v2, 0x14e

    const/16 v3, 0xfc

    aput v3, v1, v2

    const/16 v2, 0x14f

    const/16 v3, 0x155

    aput v3, v1, v2

    const/16 v2, 0x150

    const/16 v3, 0xf2

    aput v3, v1, v2

    const/16 v2, 0x151

    const/16 v3, 0x31d

    aput v3, v1, v2

    const/16 v2, 0x152

    const/16 v3, 0x346

    aput v3, v1, v2

    const/16 v2, 0x153

    const/16 v3, 0x345

    aput v3, v1, v2

    const/16 v2, 0x154

    const/16 v3, 0x2d0

    aput v3, v1, v2

    const/16 v2, 0x155

    const/16 v3, 0xe0

    aput v3, v1, v2

    const/16 v2, 0x156

    const/16 v3, 0x133

    aput v3, v1, v2

    const/16 v2, 0x157

    const/16 v3, 0x277

    aput v3, v1, v2

    const/16 v2, 0x158

    const/16 v3, 0x3d

    aput v3, v1, v2

    const/16 v2, 0x159

    const/16 v3, 0x57

    aput v3, v1, v2

    const/16 v2, 0x15a

    const/16 v3, 0x230

    aput v3, v1, v2

    const/16 v2, 0x15b

    const/16 v3, 0x136

    aput v3, v1, v2

    const/16 v2, 0x15c

    const/16 v3, 0x2f4

    aput v3, v1, v2

    const/16 v2, 0x15d

    const/16 v3, 0x299

    aput v3, v1, v2

    const/16 v2, 0x15e

    const/16 v3, 0x18d

    aput v3, v1, v2

    const/16 v2, 0x15f

    const/16 v3, 0x328

    aput v3, v1, v2

    const/16 v2, 0x160

    const/16 v3, 0x353

    aput v3, v1, v2

    const/16 v2, 0x161

    const/16 v3, 0x135

    aput v3, v1, v2

    const/16 v2, 0x162

    const/16 v3, 0x1d9

    aput v3, v1, v2

    const/16 v2, 0x163

    const/16 v3, 0x31b

    aput v3, v1, v2

    const/16 v2, 0x164

    const/16 v3, 0x17a

    aput v3, v1, v2

    const/16 v2, 0x165

    const/16 v3, 0x1f

    aput v3, v1, v2

    const/16 v2, 0x166

    const/16 v3, 0x287

    aput v3, v1, v2

    const/16 v2, 0x167

    const/16 v3, 0x393

    aput v3, v1, v2

    const/16 v2, 0x168

    const/16 v3, 0x1cb

    aput v3, v1, v2

    const/16 v2, 0x169

    const/16 v3, 0x326

    aput v3, v1, v2

    const/16 v2, 0x16a

    const/16 v3, 0x24e

    aput v3, v1, v2

    const/16 v2, 0x16b

    const/16 v3, 0x2db

    aput v3, v1, v2

    const/16 v2, 0x16c

    const/16 v3, 0x1a9

    aput v3, v1, v2

    const/16 v2, 0x16d

    const/16 v3, 0xd8

    aput v3, v1, v2

    const/16 v2, 0x16e

    const/16 v3, 0x224

    aput v3, v1, v2

    const/16 v2, 0x16f

    const/16 v3, 0xf9

    aput v3, v1, v2

    const/16 v2, 0x170

    const/16 v3, 0x141

    aput v3, v1, v2

    const/16 v2, 0x171

    const/16 v3, 0x371

    aput v3, v1, v2

    const/16 v2, 0x172

    const/16 v3, 0x2bb

    aput v3, v1, v2

    const/16 v2, 0x173

    const/16 v3, 0x217

    aput v3, v1, v2

    const/16 v2, 0x174

    const/16 v3, 0x2a1

    aput v3, v1, v2

    const/16 v2, 0x175

    const/16 v3, 0x30e

    aput v3, v1, v2

    const/16 v2, 0x176

    const/16 v3, 0xd2

    aput v3, v1, v2

    const/16 v2, 0x177

    const/16 v3, 0x32f

    aput v3, v1, v2

    const/16 v2, 0x178

    const/16 v3, 0x389

    aput v3, v1, v2

    const/16 v2, 0x179

    const/16 v3, 0x12f

    aput v3, v1, v2

    const/16 v2, 0x17a

    const/16 v3, 0x34b

    aput v3, v1, v2

    const/16 v2, 0x17b

    const/16 v3, 0x39a

    aput v3, v1, v2

    const/16 v2, 0x17c

    const/16 v3, 0x119

    aput v3, v1, v2

    const/16 v2, 0x17d

    const/16 v3, 0x49

    aput v3, v1, v2

    const/16 v2, 0x17e

    const/16 v3, 0x1d5

    aput v3, v1, v2

    const/16 v2, 0x17f

    const/16 v3, 0x317

    aput v3, v1, v2

    const/16 v2, 0x180

    const/16 v3, 0x294

    aput v3, v1, v2

    const/16 v2, 0x181

    const/16 v3, 0xa2

    aput v3, v1, v2

    const/16 v2, 0x182

    const/16 v3, 0x1f2

    aput v3, v1, v2

    const/16 v2, 0x183

    const/16 v3, 0x134

    aput v3, v1, v2

    const/16 v2, 0x184

    const/16 v3, 0x9b

    aput v3, v1, v2

    const/16 v2, 0x185

    const/16 v3, 0x1a6

    aput v3, v1, v2

    const/16 v2, 0x186

    const/16 v3, 0x38b

    aput v3, v1, v2

    const/16 v2, 0x187

    const/16 v3, 0x331

    aput v3, v1, v2

    const/16 v2, 0x188

    const/16 v3, 0xbb

    aput v3, v1, v2

    const/16 v2, 0x189

    const/16 v3, 0x3e

    aput v3, v1, v2

    const/16 v2, 0x18a

    const/16 v3, 0x10

    aput v3, v1, v2

    const/16 v2, 0x18b

    const/16 v3, 0x1a9

    aput v3, v1, v2

    const/16 v2, 0x18c

    const/16 v3, 0x217

    aput v3, v1, v2

    const/16 v2, 0x18d

    const/16 v3, 0x150

    aput v3, v1, v2

    const/16 v2, 0x18e

    const/16 v3, 0x11e

    aput v3, v1, v2

    const/16 v2, 0x18f

    const/16 v3, 0x1b5

    aput v3, v1, v2

    const/16 v2, 0x190

    const/16 v3, 0x177

    aput v3, v1, v2

    const/16 v2, 0x191

    const/16 v3, 0x111

    aput v3, v1, v2

    const/16 v2, 0x192

    const/16 v3, 0x262

    aput v3, v1, v2

    const/16 v2, 0x193

    const/16 v3, 0x128

    aput v3, v1, v2

    const/16 v2, 0x194

    const/16 v3, 0xb7

    aput v3, v1, v2

    const/16 v2, 0x195

    const/16 v3, 0x39b

    aput v3, v1, v2

    const/16 v2, 0x196

    const/16 v3, 0x74

    aput v3, v1, v2

    const/16 v2, 0x197

    const/16 v3, 0x29b

    aput v3, v1, v2

    const/16 v2, 0x198

    const/16 v3, 0x2ef

    aput v3, v1, v2

    const/16 v2, 0x199

    const/16 v3, 0x161

    aput v3, v1, v2

    const/16 v2, 0x19a

    const/16 v3, 0x3e

    aput v3, v1, v2

    const/16 v2, 0x19b

    const/16 v3, 0x16e

    aput v3, v1, v2

    const/16 v2, 0x19c

    const/16 v3, 0x2b3

    aput v3, v1, v2

    const/16 v2, 0x19d

    const/16 v3, 0x17b

    aput v3, v1, v2

    const/16 v2, 0x19e

    const/16 v3, 0x2af

    aput v3, v1, v2

    const/16 v2, 0x19f

    const/16 v3, 0x34a

    aput v3, v1, v2

    const/16 v2, 0x1a0

    const/16 v3, 0x25

    aput v3, v1, v2

    const/16 v2, 0x1a1

    const/16 v3, 0x165

    aput v3, v1, v2

    const/16 v2, 0x1a2

    const/16 v3, 0x2d0

    aput v3, v1, v2

    const/16 v2, 0x1a3

    const/16 v3, 0x2e6

    aput v3, v1, v2

    const/16 v2, 0x1a4

    const/16 v3, 0x14a

    aput v3, v1, v2

    const/16 v2, 0x1a5

    const/4 v3, 0x5

    aput v3, v1, v2

    const/16 v2, 0x1a6

    const/16 v3, 0x27

    aput v3, v1, v2

    const/16 v2, 0x1a7

    const/16 v3, 0x39b

    aput v3, v1, v2

    const/16 v2, 0x1a8

    const/16 v3, 0x137

    aput v3, v1, v2

    const/16 v2, 0x1a9

    const/16 v3, 0x1a8

    aput v3, v1, v2

    const/16 v2, 0x1aa

    const/16 v3, 0xf2

    aput v3, v1, v2

    const/16 v2, 0x1ab

    const/16 v3, 0x2ed

    aput v3, v1, v2

    const/16 v2, 0x1ac

    const/16 v3, 0x141

    aput v3, v1, v2

    const/16 v2, 0x1ad

    const/16 v3, 0x36

    aput v3, v1, v2

    const/16 v2, 0x1ae

    const/16 v3, 0x29d

    aput v3, v1, v2

    const/16 v2, 0x1af

    const/16 v3, 0x13c

    aput v3, v1, v2

    const/16 v2, 0x1b0

    const/16 v3, 0x156

    aput v3, v1, v2

    const/16 v2, 0x1b1

    const/16 v3, 0x12b

    aput v3, v1, v2

    const/16 v2, 0x1b2

    const/16 v3, 0x216

    aput v3, v1, v2

    const/16 v2, 0x1b3

    const/16 v3, 0x69

    aput v3, v1, v2

    const/16 v2, 0x1b4

    const/16 v3, 0x29b

    aput v3, v1, v2

    const/16 v2, 0x1b5

    const/16 v3, 0x1e8

    aput v3, v1, v2

    const/16 v2, 0x1b6

    const/16 v3, 0x280

    aput v3, v1, v2

    const/16 v2, 0x1b7

    const/16 v3, 0x2a0

    aput v3, v1, v2

    const/16 v2, 0x1b8

    const/16 v3, 0x240

    aput v3, v1, v2

    const/16 v2, 0x1b9

    const/16 v3, 0x21c

    aput v3, v1, v2

    const/16 v2, 0x1ba

    const/16 v3, 0x13c

    aput v3, v1, v2

    const/16 v2, 0x1bb

    const/16 v3, 0x1e6

    aput v3, v1, v2

    const/16 v2, 0x1bc

    const/16 v3, 0x2d1

    aput v3, v1, v2

    const/16 v2, 0x1bd

    const/16 v3, 0x262

    aput v3, v1, v2

    const/16 v2, 0x1be

    const/16 v3, 0x2e

    aput v3, v1, v2

    const/16 v2, 0x1bf

    const/16 v3, 0x290

    aput v3, v1, v2

    const/16 v2, 0x1c0

    const/16 v3, 0x1bf

    aput v3, v1, v2

    const/16 v2, 0x1c1

    const/16 v3, 0xab

    aput v3, v1, v2

    const/16 v2, 0x1c2

    const/16 v3, 0x268

    aput v3, v1, v2

    const/16 v2, 0x1c3

    const/16 v3, 0x1d0

    aput v3, v1, v2

    const/16 v2, 0x1c4

    const/16 v3, 0xbe

    aput v3, v1, v2

    const/16 v2, 0x1c5

    const/16 v3, 0x213

    aput v3, v1, v2

    const/16 v2, 0x1c6

    const/16 v3, 0x129

    aput v3, v1, v2

    const/16 v2, 0x1c7

    const/16 v3, 0x141

    aput v3, v1, v2

    const/16 v2, 0x1c8

    const/16 v3, 0x2fa

    aput v3, v1, v2

    const/16 v2, 0x1c9

    const/16 v3, 0x2f0

    aput v3, v1, v2

    const/16 v2, 0x1ca

    const/16 v3, 0x215

    aput v3, v1, v2

    const/16 v2, 0x1cb

    const/16 v3, 0xaf

    aput v3, v1, v2

    const/16 v2, 0x1cc

    const/16 v3, 0x86

    aput v3, v1, v2

    const/16 v2, 0x1cd

    const/16 v3, 0xe

    aput v3, v1, v2

    const/16 v2, 0x1ce

    const/16 v3, 0x17d

    aput v3, v1, v2

    const/16 v2, 0x1cf

    const/16 v3, 0x1b1

    aput v3, v1, v2

    const/16 v2, 0x1d0

    const/16 v3, 0x2cd

    aput v3, v1, v2

    const/16 v2, 0x1d1

    const/16 v3, 0x2d

    aput v3, v1, v2

    const/16 v2, 0x1d2

    const/16 v3, 0x6f

    aput v3, v1, v2

    const/16 v2, 0x1d3

    const/16 v3, 0x14

    aput v3, v1, v2

    const/16 v2, 0x1d4

    const/16 v3, 0x254

    aput v3, v1, v2

    const/16 v2, 0x1d5

    const/16 v3, 0x11c

    aput v3, v1, v2

    const/16 v2, 0x1d6

    const/16 v3, 0x2e0

    aput v3, v1, v2

    const/16 v2, 0x1d7

    const/16 v3, 0x8a

    aput v3, v1, v2

    const/16 v2, 0x1d8

    const/16 v3, 0x286

    aput v3, v1, v2

    const/16 v2, 0x1d9

    const/16 v3, 0x19b

    aput v3, v1, v2

    const/16 v2, 0x1da

    const/16 v3, 0x36d

    aput v3, v1, v2

    const/16 v2, 0x1db

    const/16 v3, 0x29d

    aput v3, v1, v2

    const/16 v2, 0x1dc

    const/16 v3, 0x8d

    aput v3, v1, v2

    const/16 v2, 0x1dd

    const/16 v3, 0x397

    aput v3, v1, v2

    const/16 v2, 0x1de

    const/16 v3, 0x2d

    aput v3, v1, v2

    const/16 v2, 0x1df

    const/16 v3, 0x30c

    aput v3, v1, v2

    const/16 v2, 0x1e0

    const/16 v3, 0x197

    aput v3, v1, v2

    const/16 v2, 0x1e1

    const/16 v3, 0xa4

    aput v3, v1, v2

    const/16 v2, 0x1e2

    const/16 v3, 0x14c

    aput v3, v1, v2

    const/16 v2, 0x1e3

    const/16 v3, 0x383

    aput v3, v1, v2

    const/16 v2, 0x1e4

    const/16 v3, 0xa5

    aput v3, v1, v2

    const/16 v2, 0x1e5

    const/16 v3, 0x2d6

    aput v3, v1, v2

    const/16 v2, 0x1e6

    const/16 v3, 0x258

    aput v3, v1, v2

    const/16 v2, 0x1e7

    const/16 v3, 0x145

    aput v3, v1, v2

    const/16 v2, 0x1e8

    const/16 v3, 0x1f2

    aput v3, v1, v2

    const/16 v2, 0x1e9

    const/16 v3, 0x28f

    aput v3, v1, v2

    const/16 v2, 0x1ea

    const/16 v3, 0x165

    aput v3, v1, v2

    const/16 v2, 0x1eb

    const/16 v3, 0x2f0

    aput v3, v1, v2

    const/16 v2, 0x1ec

    const/16 v3, 0x300

    aput v3, v1, v2

    const/16 v2, 0x1ed

    const/16 v3, 0xdf

    aput v3, v1, v2

    const/16 v2, 0x1ee

    const/16 v3, 0x351

    aput v3, v1, v2

    const/16 v2, 0x1ef

    const/16 v3, 0x287

    aput v3, v1, v2

    const/16 v2, 0x1f0

    const/16 v3, 0x3f

    aput v3, v1, v2

    const/16 v2, 0x1f1

    const/16 v3, 0x136

    aput v3, v1, v2

    const/16 v2, 0x1f2

    const/16 v3, 0x35f

    aput v3, v1, v2

    const/16 v2, 0x1f3

    const/16 v3, 0xfb

    aput v3, v1, v2

    const/16 v2, 0x1f4

    const/16 v3, 0x16e

    aput v3, v1, v2

    const/16 v2, 0x1f5

    const/16 v3, 0x130

    aput v3, v1, v2

    const/16 v2, 0x1f6

    const/16 v3, 0x11a

    aput v3, v1, v2

    const/16 v2, 0x1f7

    const/16 v3, 0x2e2

    aput v3, v1, v2

    const/16 v2, 0x1f8

    const/16 v3, 0x2a3

    aput v3, v1, v2

    const/16 v2, 0x1f9

    const/16 v3, 0x19a

    aput v3, v1, v2

    const/16 v2, 0x1fa

    const/16 v3, 0x185

    aput v3, v1, v2

    const/16 v2, 0x1fb

    const/16 v3, 0xf4

    aput v3, v1, v2

    const/16 v2, 0x1fc

    const/16 v3, 0x1f

    aput v3, v1, v2

    const/16 v2, 0x1fd

    const/16 v3, 0x79

    aput v3, v1, v2

    const/16 v2, 0x1fe

    const/16 v3, 0x12f

    aput v3, v1, v2

    const/16 v2, 0x1ff

    const/16 v3, 0x107

    aput v3, v1, v2

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generateErrorCorrection(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->getErrorCorrectionCodewordCount(I)I

    move-result v3

    new-array v0, v3, [C

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-gez v2, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-char v10, v0, v10

    add-int/2addr v9, v10

    rem-int/lit16 v6, v9, 0x3a1

    add-int/lit8 v2, v3, -0x1

    :goto_2
    const/4 v9, 0x1

    if-ge v2, v9, :cond_1

    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    aget-object v9, v9, p1

    aget v9, v9, v11

    mul-int/2addr v9, v6

    rem-int/lit16 v7, v9, 0x3a1

    rsub-int v8, v7, 0x3a1

    rem-int/lit16 v9, v8, 0x3a1

    int-to-char v9, v9

    int-to-char v9, v9

    aput-char v9, v0, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;->EC_COEFFICIENTS:[[I

    aget-object v9, v9, p1

    aget v9, v9, v2

    mul-int/2addr v9, v6

    rem-int/lit16 v7, v9, 0x3a1

    rsub-int v8, v7, 0x3a1

    add-int/lit8 v9, v2, -0x1

    aget-char v9, v0, v9

    add-int/2addr v9, v8

    rem-int/lit16 v9, v9, 0x3a1

    int-to-char v9, v9

    int-to-char v9, v9

    aput-char v9, v0, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    aget-char v9, v0, v2

    if-nez v9, :cond_3

    :goto_3
    aget-char v9, v0, v2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    aget-char v9, v0, v2

    rsub-int v9, v9, 0x3a1

    int-to-char v9, v9

    int-to-char v9, v9

    aput-char v9, v0, v2

    goto :goto_3
.end method

.method static getErrorCorrectionCodewordCount(I)I
    .locals 2

    if-gez p0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Error correction level must be between 0 and 8!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method
