.class final Lcom/google/zxing/pdf417/encoder/PDF417ErrorCorrection;
.super Ljava/lang/Object;
.source "PDF417ErrorCorrection.java"


# static fields
.field private static final EC_COEFFICIENTS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0x1b

    aput v2, v1, v6

    const/16 v2, 0x395

    aput v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v5, [I

    const/16 v2, 0x20a

    aput v2, v1, v6

    const/16 v2, 0x238

    aput v2, v1, v7

    const/16 v2, 0x2d3

    aput v2, v1, v4

    const/16 v2, 0x329

    const/4 v3, 0x3

    aput v2, v1, v3

    aput-object v1, v0, v7

    new-array v1, v8, [I

    const/16 v2, 0xed

    aput v2, v1, v6

    const/16 v2, 0x134

    aput v2, v1, v7

    const/16 v2, 0x1b4

    aput v2, v1, v4

    const/16 v2, 0x11c

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x286

    aput v2, v1, v5

    const/16 v2, 0x28d

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x1ac

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x17b

    const/4 v3, 0x7

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/16 v1, 0x10

    new-array v1, v1, [I

    const/16 v2, 0x112

    aput v2, v1, v6

    const/16 v2, 0x232

    aput v2, v1, v7

    const/16 v2, 0xe8

    aput v2, v1, v4

    const/16 v2, 0x2f3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x257

    aput v2, v1, v5

    const/16 v2, 0x20c

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x321

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x84

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x127

    aput v2, v1, v8

    const/16 v2, 0x74

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x1ba

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x1ac

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x127

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x2a

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0xb0

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x41

    const/16 v3, 0xf

    aput v2, v1, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x20

    new-array v1, v1, [I

    const/16 v2, 0x169

    aput v2, v1, v6

    const/16 v2, 0x23f

    aput v2, v1, v7

    const/16 v2, 0x39a

    aput v2, v1, v4

    const/16 v2, 0x20d

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0xb0

    aput v2, v1, v5

    const/16 v2, 0x24a

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x280

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x141

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x218

    aput v2, v1, v8

    const/16 v2, 0x2e6

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x2a5

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x2e6

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x2af

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x11c

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x205

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x111

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x1ee

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x107

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x93

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x251

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0x320

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x23b

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x140

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x323

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x85

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0xe7

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x186

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x2ad

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x14a

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x3f

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x19a

    const/16 v3, 0x1f

    aput v2, v1, v3

    aput-object v1, v0, v5

    const/16 v1, 0x40

    new-array v1, v1, [I

    const/16 v2, 0x21b

    aput v2, v1, v6

    const/16 v2, 0x1a6

    aput v2, v1, v7

    const/4 v2, 0x6

    aput v2, v1, v4

    const/16 v2, 0x5d

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x35e

    aput v2, v1, v5

    const/16 v2, 0x303

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x1c5

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x6a

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x262

    aput v2, v1, v8

    const/16 v2, 0x11f

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x6b

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x1f9

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x2dd

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x36d

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0x17d

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x264

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x2d3

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x1dc

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x1ce

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0xac

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x1ae

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0x261

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x35a

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x336

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x21f

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x178

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0x1ff

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x190

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x2a0

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x2fa

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x11b

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0xb8

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x1b8

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x23

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x207

    const/16 v3, 0x22

    aput v2, v1, v3

    const/16 v2, 0x1f

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x1cc

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x252

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0xe1

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v2, 0x217

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x205

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x160

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v2, 0x25d

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x9e

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x28b

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/16 v2, 0xc9

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x1e8

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x1f6

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0x288

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0x2dd

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x2cd

    const/16 v3, 0x32

    aput v2, v1, v3

    const/16 v2, 0x53

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x194

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x61

    const/16 v3, 0x35

    aput v2, v1, v3

    const/16 v2, 0x118

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x303

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x348

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0x275

    const/16 v3, 0x39

    aput v2, v1, v3

    const/16 v2, 0x3a

    aput v5, v1, v2

    const/16 v2, 0x17d

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x34b

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x26f

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x108

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/16 v2, 0x21f

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x80

    new-array v1, v1, [I

    const/16 v2, 0x209

    aput v2, v1, v6

    const/16 v2, 0x136

    aput v2, v1, v7

    const/16 v2, 0x360

    aput v2, v1, v4

    const/16 v2, 0x223

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x35a

    aput v2, v1, v5

    const/16 v2, 0x244

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x128

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0x17b

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x35

    aput v2, v1, v8

    const/16 v2, 0x30b

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x381

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x1bc

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x190

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x39d

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0x2ed

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x19f

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x336

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x5d

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0xd9

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0xd0

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x3a0

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0xf4

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x247

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x26c

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0xf6

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x94

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0x1bf

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x277

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x124

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x38c

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x1ea

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x2c0

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x204

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x102

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x1c9

    const/16 v3, 0x22

    aput v2, v1, v3

    const/16 v2, 0x38b

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x252

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x2d3

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0x2a2

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v2, 0x124

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x110

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x60

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v2, 0x2ac

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x1b0

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x2ae

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/16 v2, 0x25e

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x35c

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x239

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0xdb

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x81

    const/16 v3, 0x32

    aput v2, v1, v3

    const/16 v2, 0xba

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0xec

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x11f

    const/16 v3, 0x35

    aput v2, v1, v3

    const/16 v2, 0xc0

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x307

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x116

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0xad

    const/16 v3, 0x39

    aput v2, v1, v3

    const/16 v2, 0x28

    const/16 v3, 0x3a

    aput v2, v1, v3

    const/16 v2, 0x17b

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x2c8

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x1cf

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x286

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/16 v2, 0x308

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/16 v2, 0xab

    const/16 v3, 0x40

    aput v2, v1, v3

    const/16 v2, 0x1eb

    const/16 v3, 0x41

    aput v2, v1, v3

    const/16 v2, 0x129

    const/16 v3, 0x42

    aput v2, v1, v3

    const/16 v2, 0x2fb

    const/16 v3, 0x43

    aput v2, v1, v3

    const/16 v2, 0x9c

    const/16 v3, 0x44

    aput v2, v1, v3

    const/16 v2, 0x2dc

    const/16 v3, 0x45

    aput v2, v1, v3

    const/16 v2, 0x5f

    const/16 v3, 0x46

    aput v2, v1, v3

    const/16 v2, 0x10e

    const/16 v3, 0x47

    aput v2, v1, v3

    const/16 v2, 0x1bf

    const/16 v3, 0x48

    aput v2, v1, v3

    const/16 v2, 0x5a

    const/16 v3, 0x49

    aput v2, v1, v3

    const/16 v2, 0x1fb

    const/16 v3, 0x4a

    aput v2, v1, v3

    const/16 v2, 0x30

    const/16 v3, 0x4b

    aput v2, v1, v3

    const/16 v2, 0xe4

    const/16 v3, 0x4c

    aput v2, v1, v3

    const/16 v2, 0x335

    const/16 v3, 0x4d

    aput v2, v1, v3

    const/16 v2, 0x328

    const/16 v3, 0x4e

    aput v2, v1, v3

    const/16 v2, 0x382

    const/16 v3, 0x4f

    aput v2, v1, v3

    const/16 v2, 0x310

    const/16 v3, 0x50

    aput v2, v1, v3

    const/16 v2, 0x297

    const/16 v3, 0x51

    aput v2, v1, v3

    const/16 v2, 0x273

    const/16 v3, 0x52

    aput v2, v1, v3

    const/16 v2, 0x17a

    const/16 v3, 0x53

    aput v2, v1, v3

    const/16 v2, 0x17e

    const/16 v3, 0x54

    aput v2, v1, v3

    const/16 v2, 0x106

    const/16 v3, 0x55

    aput v2, v1, v3

    const/16 v2, 0x17c

    const/16 v3, 0x56

    aput v2, v1, v3

    const/16 v2, 0x25a

    const/16 v3, 0x57

    aput v2, v1, v3

    const/16 v2, 0x2f2

    const/16 v3, 0x58

    aput v2, v1, v3

    const/16 v2, 0x150

    const/16 v3, 0x59

    aput v2, v1, v3

    const/16 v2, 0x59

    const/16 v3, 0x5a

    aput v2, v1, v3

    const/16 v2, 0x266

    const/16 v3, 0x5b

    aput v2, v1, v3

    const/16 v2, 0x57

    const/16 v3, 0x5c

    aput v2, v1, v3

    const/16 v2, 0x1b0

    const/16 v3, 0x5d

    aput v2, v1, v3

    const/16 v2, 0x29e

    const/16 v3, 0x5e

    aput v2, v1, v3

    const/16 v2, 0x268

    const/16 v3, 0x5f

    aput v2, v1, v3

    const/16 v2, 0x9d

    const/16 v3, 0x60

    aput v2, v1, v3

    const/16 v2, 0x176

    const/16 v3, 0x61

    aput v2, v1, v3

    const/16 v2, 0xf2

    const/16 v3, 0x62

    aput v2, v1, v3

    const/16 v2, 0x2d6

    const/16 v3, 0x63

    aput v2, v1, v3

    const/16 v2, 0x258

    const/16 v3, 0x64

    aput v2, v1, v3

    const/16 v2, 0x10d

    const/16 v3, 0x65

    aput v2, v1, v3

    const/16 v2, 0x177

    const/16 v3, 0x66

    aput v2, v1, v3

    const/16 v2, 0x382

    const/16 v3, 0x67

    aput v2, v1, v3

    const/16 v2, 0x34d

    const/16 v3, 0x68

    aput v2, v1, v3

    const/16 v2, 0x1c6

    const/16 v3, 0x69

    aput v2, v1, v3

    const/16 v2, 0x162

    const/16 v3, 0x6a

    aput v2, v1, v3

    const/16 v2, 0x82

    const/16 v3, 0x6b

    aput v2, v1, v3

    const/16 v2, 0x32e

    const/16 v3, 0x6c

    aput v2, v1, v3

    const/16 v2, 0x24b

    const/16 v3, 0x6d

    aput v2, v1, v3

    const/16 v2, 0x324

    const/16 v3, 0x6e

    aput v2, v1, v3

    const/16 v2, 0x22

    const/16 v3, 0x6f

    aput v2, v1, v3

    const/16 v2, 0xd3

    const/16 v3, 0x70

    aput v2, v1, v3

    const/16 v2, 0x14a

    const/16 v3, 0x71

    aput v2, v1, v3

    const/16 v2, 0x21b

    const/16 v3, 0x72

    aput v2, v1, v3

    const/16 v2, 0x129

    const/16 v3, 0x73

    aput v2, v1, v3

    const/16 v2, 0x33b

    const/16 v3, 0x74

    aput v2, v1, v3

    const/16 v2, 0x361

    const/16 v3, 0x75

    aput v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0x76

    aput v2, v1, v3

    const/16 v2, 0x205

    const/16 v3, 0x77

    aput v2, v1, v3

    const/16 v2, 0x342

    const/16 v3, 0x78

    aput v2, v1, v3

    const/16 v2, 0x13b

    const/16 v3, 0x79

    aput v2, v1, v3

    const/16 v2, 0x226

    const/16 v3, 0x7a

    aput v2, v1, v3

    const/16 v2, 0x56

    const/16 v3, 0x7b

    aput v2, v1, v3

    const/16 v2, 0x321

    const/16 v3, 0x7c

    aput v2, v1, v3

    const/16 v2, 0x7d

    aput v5, v1, v2

    const/16 v2, 0x6c

    const/16 v3, 0x7e

    aput v2, v1, v3

    const/16 v2, 0x21b

    const/16 v3, 0x7f

    aput v2, v1, v3

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x100

    new-array v1, v1, [I

    const/16 v2, 0x20c

    aput v2, v1, v6

    const/16 v2, 0x37e

    aput v2, v1, v7

    const/16 v2, 0x4b

    aput v2, v1, v4

    const/16 v2, 0x2fe

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x372

    aput v2, v1, v5

    const/16 v2, 0x359

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x4a

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0xcc

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x52

    aput v2, v1, v8

    const/16 v2, 0x24a

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x2c4

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0xfa

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x389

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x312

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0x8a

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x2d0

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0x35a

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0xc2

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x137

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x391

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x113

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0xbe

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0x177

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x352

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x1b6

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x2dd

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0xc2

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x118

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0xc9

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0x118

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x33c

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x2f5

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x2c6

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x32e

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x397

    const/16 v3, 0x22

    aput v2, v1, v3

    const/16 v2, 0x59

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x44

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x239

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0xb

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v2, 0xcc

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0x31c

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x25d

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v2, 0x21c

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x391

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x321

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/16 v2, 0x2bc

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x31f

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x89

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0x1b7

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0x1a2

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x250

    const/16 v3, 0x32

    aput v2, v1, v3

    const/16 v2, 0x29c

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x161

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x35b

    const/16 v3, 0x35

    aput v2, v1, v3

    const/16 v2, 0x172

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x2b6

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x145

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0xf0

    const/16 v3, 0x39

    aput v2, v1, v3

    const/16 v2, 0xd8

    const/16 v3, 0x3a

    aput v2, v1, v3

    const/16 v2, 0x101

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x11c

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x225

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0xd1

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/16 v2, 0x374

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/16 v2, 0x13b

    const/16 v3, 0x40

    aput v2, v1, v3

    const/16 v2, 0x46

    const/16 v3, 0x41

    aput v2, v1, v3

    const/16 v2, 0x149

    const/16 v3, 0x42

    aput v2, v1, v3

    const/16 v2, 0x319

    const/16 v3, 0x43

    aput v2, v1, v3

    const/16 v2, 0x1ea

    const/16 v3, 0x44

    aput v2, v1, v3

    const/16 v2, 0x112

    const/16 v3, 0x45

    aput v2, v1, v3

    const/16 v2, 0x36d

    const/16 v3, 0x46

    aput v2, v1, v3

    const/16 v2, 0xa2

    const/16 v3, 0x47

    aput v2, v1, v3

    const/16 v2, 0x2ed

    const/16 v3, 0x48

    aput v2, v1, v3

    const/16 v2, 0x32c

    const/16 v3, 0x49

    aput v2, v1, v3

    const/16 v2, 0x2ac

    const/16 v3, 0x4a

    aput v2, v1, v3

    const/16 v2, 0x1cd

    const/16 v3, 0x4b

    aput v2, v1, v3

    const/16 v2, 0x14e

    const/16 v3, 0x4c

    aput v2, v1, v3

    const/16 v2, 0x178

    const/16 v3, 0x4d

    aput v2, v1, v3

    const/16 v2, 0x351

    const/16 v3, 0x4e

    aput v2, v1, v3

    const/16 v2, 0x209

    const/16 v3, 0x4f

    aput v2, v1, v3

    const/16 v2, 0x133

    const/16 v3, 0x50

    aput v2, v1, v3

    const/16 v2, 0x123

    const/16 v3, 0x51

    aput v2, v1, v3

    const/16 v2, 0x323

    const/16 v3, 0x52

    aput v2, v1, v3

    const/16 v2, 0x2c8

    const/16 v3, 0x53

    aput v2, v1, v3

    const/16 v2, 0x13

    const/16 v3, 0x54

    aput v2, v1, v3

    const/16 v2, 0x166

    const/16 v3, 0x55

    aput v2, v1, v3

    const/16 v2, 0x18f

    const/16 v3, 0x56

    aput v2, v1, v3

    const/16 v2, 0x38c

    const/16 v3, 0x57

    aput v2, v1, v3

    const/16 v2, 0x67

    const/16 v3, 0x58

    aput v2, v1, v3

    const/16 v2, 0x1ff

    const/16 v3, 0x59

    aput v2, v1, v3

    const/16 v2, 0x33

    const/16 v3, 0x5a

    aput v2, v1, v3

    const/16 v2, 0x5b

    aput v8, v1, v2

    const/16 v2, 0x205

    const/16 v3, 0x5c

    aput v2, v1, v3

    const/16 v2, 0xe1

    const/16 v3, 0x5d

    aput v2, v1, v3

    const/16 v2, 0x121

    const/16 v3, 0x5e

    aput v2, v1, v3

    const/16 v2, 0x1d6

    const/16 v3, 0x5f

    aput v2, v1, v3

    const/16 v2, 0x27d

    const/16 v3, 0x60

    aput v2, v1, v3

    const/16 v2, 0x2db

    const/16 v3, 0x61

    aput v2, v1, v3

    const/16 v2, 0x42

    const/16 v3, 0x62

    aput v2, v1, v3

    const/16 v2, 0xff

    const/16 v3, 0x63

    aput v2, v1, v3

    const/16 v2, 0x395

    const/16 v3, 0x64

    aput v2, v1, v3

    const/16 v2, 0x10d

    const/16 v3, 0x65

    aput v2, v1, v3

    const/16 v2, 0x1cf

    const/16 v3, 0x66

    aput v2, v1, v3

    const/16 v2, 0x33e

    const/16 v3, 0x67

    aput v2, v1, v3

    const/16 v2, 0x2da

    const/16 v3, 0x68

    aput v2, v1, v3

    const/16 v2, 0x1b1

    const/16 v3, 0x69

    aput v2, v1, v3

    const/16 v2, 0x350

    const/16 v3, 0x6a

    aput v2, v1, v3

    const/16 v2, 0x249

    const/16 v3, 0x6b

    aput v2, v1, v3

    const/16 v2, 0x88

    const/16 v3, 0x6c

    aput v2, v1, v3

    const/16 v2, 0x21a

    const/16 v3, 0x6d

    aput v2, v1, v3

    const/16 v2, 0x38a

    const/16 v3, 0x6e

    aput v2, v1, v3

    const/16 v2, 0x5a

    const/16 v3, 0x6f

    aput v2, v1, v3

    const/16 v2, 0x70

    aput v4, v1, v2

    const/16 v2, 0x122

    const/16 v3, 0x71

    aput v2, v1, v3

    const/16 v2, 0x2e7

    const/16 v3, 0x72

    aput v2, v1, v3

    const/16 v2, 0xc7

    const/16 v3, 0x73

    aput v2, v1, v3

    const/16 v2, 0x28f

    const/16 v3, 0x74

    aput v2, v1, v3

    const/16 v2, 0x387

    const/16 v3, 0x75

    aput v2, v1, v3

    const/16 v2, 0x149

    const/16 v3, 0x76

    aput v2, v1, v3

    const/16 v2, 0x31

    const/16 v3, 0x77

    aput v2, v1, v3

    const/16 v2, 0x322

    const/16 v3, 0x78

    aput v2, v1, v3

    const/16 v2, 0x244

    const/16 v3, 0x79

    aput v2, v1, v3

    const/16 v2, 0x163

    const/16 v3, 0x7a

    aput v2, v1, v3

    const/16 v2, 0x24c

    const/16 v3, 0x7b

    aput v2, v1, v3

    const/16 v2, 0xbc

    const/16 v3, 0x7c

    aput v2, v1, v3

    const/16 v2, 0x1ce

    const/16 v3, 0x7d

    aput v2, v1, v3

    const/16 v2, 0xa

    const/16 v3, 0x7e

    aput v2, v1, v3

    const/16 v2, 0x86

    const/16 v3, 0x7f

    aput v2, v1, v3

    const/16 v2, 0x274

    const/16 v3, 0x80

    aput v2, v1, v3

    const/16 v2, 0x140

    const/16 v3, 0x81

    aput v2, v1, v3

    const/16 v2, 0x1df

    const/16 v3, 0x82

    aput v2, v1, v3

    const/16 v2, 0x82

    const/16 v3, 0x83

    aput v2, v1, v3

    const/16 v2, 0x2e3

    const/16 v3, 0x84

    aput v2, v1, v3

    const/16 v2, 0x47

    const/16 v3, 0x85

    aput v2, v1, v3

    const/16 v2, 0x107

    const/16 v3, 0x86

    aput v2, v1, v3

    const/16 v2, 0x13e

    const/16 v3, 0x87

    aput v2, v1, v3

    const/16 v2, 0x176

    const/16 v3, 0x88

    aput v2, v1, v3

    const/16 v2, 0x259

    const/16 v3, 0x89

    aput v2, v1, v3

    const/16 v2, 0xc0

    const/16 v3, 0x8a

    aput v2, v1, v3

    const/16 v2, 0x25d

    const/16 v3, 0x8b

    aput v2, v1, v3

    const/16 v2, 0x8e

    const/16 v3, 0x8c

    aput v2, v1, v3

    const/16 v2, 0x2a1

    const/16 v3, 0x8d

    aput v2, v1, v3

    const/16 v2, 0x2af

    const/16 v3, 0x8e

    aput v2, v1, v3

    const/16 v2, 0xea

    const/16 v3, 0x8f

    aput v2, v1, v3

    const/16 v2, 0x2d2

    const/16 v3, 0x90

    aput v2, v1, v3

    const/16 v2, 0x180

    const/16 v3, 0x91

    aput v2, v1, v3

    const/16 v2, 0xb1

    const/16 v3, 0x92

    aput v2, v1, v3

    const/16 v2, 0x2f0

    const/16 v3, 0x93

    aput v2, v1, v3

    const/16 v2, 0x25f

    const/16 v3, 0x94

    aput v2, v1, v3

    const/16 v2, 0x280

    const/16 v3, 0x95

    aput v2, v1, v3

    const/16 v2, 0x1c7

    const/16 v3, 0x96

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/16 v3, 0x97

    aput v2, v1, v3

    const/16 v2, 0x2b1

    const/16 v3, 0x98

    aput v2, v1, v3

    const/16 v2, 0x2c3

    const/16 v3, 0x99

    aput v2, v1, v3

    const/16 v2, 0x325

    const/16 v3, 0x9a

    aput v2, v1, v3

    const/16 v2, 0x281

    const/16 v3, 0x9b

    aput v2, v1, v3

    const/16 v2, 0x30

    const/16 v3, 0x9c

    aput v2, v1, v3

    const/16 v2, 0x3c

    const/16 v3, 0x9d

    aput v2, v1, v3

    const/16 v2, 0x2dc

    const/16 v3, 0x9e

    aput v2, v1, v3

    const/16 v2, 0x26d

    const/16 v3, 0x9f

    aput v2, v1, v3

    const/16 v2, 0x37f

    const/16 v3, 0xa0

    aput v2, v1, v3

    const/16 v2, 0x220

    const/16 v3, 0xa1

    aput v2, v1, v3

    const/16 v2, 0x105

    const/16 v3, 0xa2

    aput v2, v1, v3

    const/16 v2, 0x354

    const/16 v3, 0xa3

    aput v2, v1, v3

    const/16 v2, 0x28f

    const/16 v3, 0xa4

    aput v2, v1, v3

    const/16 v2, 0x135

    const/16 v3, 0xa5

    aput v2, v1, v3

    const/16 v2, 0x2b9

    const/16 v3, 0xa6

    aput v2, v1, v3

    const/16 v2, 0x2f3

    const/16 v3, 0xa7

    aput v2, v1, v3

    const/16 v2, 0x2f4

    const/16 v3, 0xa8

    aput v2, v1, v3

    const/16 v2, 0x3c

    const/16 v3, 0xa9

    aput v2, v1, v3

    const/16 v2, 0xe7

    const/16 v3, 0xaa

    aput v2, v1, v3

    const/16 v2, 0x305

    const/16 v3, 0xab

    aput v2, v1, v3

    const/16 v2, 0x1b2

    const/16 v3, 0xac

    aput v2, v1, v3

    const/16 v2, 0x1a5

    const/16 v3, 0xad

    aput v2, v1, v3

    const/16 v2, 0x2d6

    const/16 v3, 0xae

    aput v2, v1, v3

    const/16 v2, 0x210

    const/16 v3, 0xaf

    aput v2, v1, v3

    const/16 v2, 0x1f7

    const/16 v3, 0xb0

    aput v2, v1, v3

    const/16 v2, 0x76

    const/16 v3, 0xb1

    aput v2, v1, v3

    const/16 v2, 0x31

    const/16 v3, 0xb2

    aput v2, v1, v3

    const/16 v2, 0x31b

    const/16 v3, 0xb3

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0xb4

    aput v2, v1, v3

    const/16 v2, 0x90

    const/16 v3, 0xb5

    aput v2, v1, v3

    const/16 v2, 0x1f4

    const/16 v3, 0xb6

    aput v2, v1, v3

    const/16 v2, 0xee

    const/16 v3, 0xb7

    aput v2, v1, v3

    const/16 v2, 0x344

    const/16 v3, 0xb8

    aput v2, v1, v3

    const/16 v2, 0x18a

    const/16 v3, 0xb9

    aput v2, v1, v3

    const/16 v2, 0x118

    const/16 v3, 0xba

    aput v2, v1, v3

    const/16 v2, 0x236

    const/16 v3, 0xbb

    aput v2, v1, v3

    const/16 v2, 0x13f

    const/16 v3, 0xbc

    aput v2, v1, v3

    const/16 v2, 0x9

    const/16 v3, 0xbd

    aput v2, v1, v3

    const/16 v2, 0x287

    const/16 v3, 0xbe

    aput v2, v1, v3

    const/16 v2, 0x226

    const/16 v3, 0xbf

    aput v2, v1, v3

    const/16 v2, 0x49

    const/16 v3, 0xc0

    aput v2, v1, v3

    const/16 v2, 0x392

    const/16 v3, 0xc1

    aput v2, v1, v3

    const/16 v2, 0x156

    const/16 v3, 0xc2

    aput v2, v1, v3

    const/16 v2, 0x7e

    const/16 v3, 0xc3

    aput v2, v1, v3

    const/16 v2, 0x20

    const/16 v3, 0xc4

    aput v2, v1, v3

    const/16 v2, 0x2a9

    const/16 v3, 0xc5

    aput v2, v1, v3

    const/16 v2, 0x14b

    const/16 v3, 0xc6

    aput v2, v1, v3

    const/16 v2, 0x318

    const/16 v3, 0xc7

    aput v2, v1, v3

    const/16 v2, 0x26c

    const/16 v3, 0xc8

    aput v2, v1, v3

    const/16 v2, 0x3c

    const/16 v3, 0xc9

    aput v2, v1, v3

    const/16 v2, 0x261

    const/16 v3, 0xca

    aput v2, v1, v3

    const/16 v2, 0x1b9

    const/16 v3, 0xcb

    aput v2, v1, v3

    const/16 v2, 0xb4

    const/16 v3, 0xcc

    aput v2, v1, v3

    const/16 v2, 0x317

    const/16 v3, 0xcd

    aput v2, v1, v3

    const/16 v2, 0x37d

    const/16 v3, 0xce

    aput v2, v1, v3

    const/16 v2, 0x2f2

    const/16 v3, 0xcf

    aput v2, v1, v3

    const/16 v2, 0x25d

    const/16 v3, 0xd0

    aput v2, v1, v3

    const/16 v2, 0x17f

    const/16 v3, 0xd1

    aput v2, v1, v3

    const/16 v2, 0xe4

    const/16 v3, 0xd2

    aput v2, v1, v3

    const/16 v2, 0x2ed

    const/16 v3, 0xd3

    aput v2, v1, v3

    const/16 v2, 0x2f8

    const/16 v3, 0xd4

    aput v2, v1, v3

    const/16 v2, 0xd5

    const/16 v3, 0xd5

    aput v2, v1, v3

    const/16 v2, 0x36

    const/16 v3, 0xd6

    aput v2, v1, v3

    const/16 v2, 0x129

    const/16 v3, 0xd7

    aput v2, v1, v3

    const/16 v2, 0x86

    const/16 v3, 0xd8

    aput v2, v1, v3

    const/16 v2, 0x36

    const/16 v3, 0xd9

    aput v2, v1, v3

    const/16 v2, 0x342

    const/16 v3, 0xda

    aput v2, v1, v3

    const/16 v2, 0x12b

    const/16 v3, 0xdb

    aput v2, v1, v3

    const/16 v2, 0x39a

    const/16 v3, 0xdc

    aput v2, v1, v3

    const/16 v2, 0xbf

    const/16 v3, 0xdd

    aput v2, v1, v3

    const/16 v2, 0x38e

    const/16 v3, 0xde

    aput v2, v1, v3

    const/16 v2, 0x214

    const/16 v3, 0xdf

    aput v2, v1, v3

    const/16 v2, 0x261

    const/16 v3, 0xe0

    aput v2, v1, v3

    const/16 v2, 0x33d

    const/16 v3, 0xe1

    aput v2, v1, v3

    const/16 v2, 0xbd

    const/16 v3, 0xe2

    aput v2, v1, v3

    const/16 v2, 0x14

    const/16 v3, 0xe3

    aput v2, v1, v3

    const/16 v2, 0xa7

    const/16 v3, 0xe4

    aput v2, v1, v3

    const/16 v2, 0x1d

    const/16 v3, 0xe5

    aput v2, v1, v3

    const/16 v2, 0x368

    const/16 v3, 0xe6

    aput v2, v1, v3

    const/16 v2, 0x1c1

    const/16 v3, 0xe7

    aput v2, v1, v3

    const/16 v2, 0x53

    const/16 v3, 0xe8

    aput v2, v1, v3

    const/16 v2, 0x192

    const/16 v3, 0xe9

    aput v2, v1, v3

    const/16 v2, 0x29

    const/16 v3, 0xea

    aput v2, v1, v3

    const/16 v2, 0x290

    const/16 v3, 0xeb

    aput v2, v1, v3

    const/16 v2, 0x1f9

    const/16 v3, 0xec

    aput v2, v1, v3

    const/16 v2, 0x243

    const/16 v3, 0xed

    aput v2, v1, v3

    const/16 v2, 0x1e1

    const/16 v3, 0xee

    aput v2, v1, v3

    const/16 v2, 0xad

    const/16 v3, 0xef

    aput v2, v1, v3

    const/16 v2, 0x194

    const/16 v3, 0xf0

    aput v2, v1, v3

    const/16 v2, 0xfb

    const/16 v3, 0xf1

    aput v2, v1, v3

    const/16 v2, 0x2b0

    const/16 v3, 0xf2

    aput v2, v1, v3

    const/16 v2, 0x5f

    const/16 v3, 0xf3

    aput v2, v1, v3

    const/16 v2, 0x1f1

    const/16 v3, 0xf4

    aput v2, v1, v3

    const/16 v2, 0x22b

    const/16 v3, 0xf5

    aput v2, v1, v3

    const/16 v2, 0x282

    const/16 v3, 0xf6

    aput v2, v1, v3

    const/16 v2, 0x21f

    const/16 v3, 0xf7

    aput v2, v1, v3

    const/16 v2, 0x133

    const/16 v3, 0xf8

    aput v2, v1, v3

    const/16 v2, 0x9f

    const/16 v3, 0xf9

    aput v2, v1, v3

    const/16 v2, 0x39c

    const/16 v3, 0xfa

    aput v2, v1, v3

    const/16 v2, 0x22e

    const/16 v3, 0xfb

    aput v2, v1, v3

    const/16 v2, 0x288

    const/16 v3, 0xfc

    aput v2, v1, v3

    const/16 v2, 0x37

    const/16 v3, 0xfd

    aput v2, v1, v3

    const/16 v2, 0x1f1

    const/16 v3, 0xfe

    aput v2, v1, v3

    const/16 v2, 0xa

    const/16 v3, 0xff

    aput v2, v1, v3

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x200

    new-array v1, v1, [I

    const/16 v2, 0x160

    aput v2, v1, v6

    const/16 v2, 0x4d

    aput v2, v1, v7

    const/16 v2, 0x175

    aput v2, v1, v4

    const/16 v2, 0x1f8

    const/4 v3, 0x3

    aput v2, v1, v3

    const/16 v2, 0x23

    aput v2, v1, v5

    const/16 v2, 0x257

    const/4 v3, 0x5

    aput v2, v1, v3

    const/16 v2, 0x1ac

    const/4 v3, 0x6

    aput v2, v1, v3

    const/16 v2, 0xcf

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x199

    aput v2, v1, v8

    const/16 v2, 0x23e

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0x76

    const/16 v3, 0xa

    aput v2, v1, v3

    const/16 v2, 0x1f2

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0x11d

    const/16 v3, 0xc

    aput v2, v1, v3

    const/16 v2, 0x17c

    const/16 v3, 0xd

    aput v2, v1, v3

    const/16 v2, 0x15e

    const/16 v3, 0xe

    aput v2, v1, v3

    const/16 v2, 0x1ec

    const/16 v3, 0xf

    aput v2, v1, v3

    const/16 v2, 0xc5

    const/16 v3, 0x10

    aput v2, v1, v3

    const/16 v2, 0x109

    const/16 v3, 0x11

    aput v2, v1, v3

    const/16 v2, 0x398

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v2, 0x9b

    const/16 v3, 0x13

    aput v2, v1, v3

    const/16 v2, 0x392

    const/16 v3, 0x14

    aput v2, v1, v3

    const/16 v2, 0x12b

    const/16 v3, 0x15

    aput v2, v1, v3

    const/16 v2, 0xe5

    const/16 v3, 0x16

    aput v2, v1, v3

    const/16 v2, 0x283

    const/16 v3, 0x17

    aput v2, v1, v3

    const/16 v2, 0x126

    const/16 v3, 0x18

    aput v2, v1, v3

    const/16 v2, 0x367

    const/16 v3, 0x19

    aput v2, v1, v3

    const/16 v2, 0x132

    const/16 v3, 0x1a

    aput v2, v1, v3

    const/16 v2, 0x58

    const/16 v3, 0x1b

    aput v2, v1, v3

    const/16 v2, 0x57

    const/16 v3, 0x1c

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/16 v3, 0x1d

    aput v2, v1, v3

    const/16 v2, 0x160

    const/16 v3, 0x1e

    aput v2, v1, v3

    const/16 v2, 0x30d

    const/16 v3, 0x1f

    aput v2, v1, v3

    const/16 v2, 0x34e

    const/16 v3, 0x20

    aput v2, v1, v3

    const/16 v2, 0x4b

    const/16 v3, 0x21

    aput v2, v1, v3

    const/16 v2, 0x147

    const/16 v3, 0x22

    aput v2, v1, v3

    const/16 v2, 0x208

    const/16 v3, 0x23

    aput v2, v1, v3

    const/16 v2, 0x1b3

    const/16 v3, 0x24

    aput v2, v1, v3

    const/16 v2, 0x21f

    const/16 v3, 0x25

    aput v2, v1, v3

    const/16 v2, 0xcb

    const/16 v3, 0x26

    aput v2, v1, v3

    const/16 v2, 0x29a

    const/16 v3, 0x27

    aput v2, v1, v3

    const/16 v2, 0xf9

    const/16 v3, 0x28

    aput v2, v1, v3

    const/16 v2, 0x15a

    const/16 v3, 0x29

    aput v2, v1, v3

    const/16 v2, 0x30d

    const/16 v3, 0x2a

    aput v2, v1, v3

    const/16 v2, 0x26d

    const/16 v3, 0x2b

    aput v2, v1, v3

    const/16 v2, 0x280

    const/16 v3, 0x2c

    aput v2, v1, v3

    const/16 v2, 0x10c

    const/16 v3, 0x2d

    aput v2, v1, v3

    const/16 v2, 0x31a

    const/16 v3, 0x2e

    aput v2, v1, v3

    const/16 v2, 0x216

    const/16 v3, 0x2f

    aput v2, v1, v3

    const/16 v2, 0x21b

    const/16 v3, 0x30

    aput v2, v1, v3

    const/16 v2, 0x30d

    const/16 v3, 0x31

    aput v2, v1, v3

    const/16 v2, 0x198

    const/16 v3, 0x32

    aput v2, v1, v3

    const/16 v2, 0x186

    const/16 v3, 0x33

    aput v2, v1, v3

    const/16 v2, 0x284

    const/16 v3, 0x34

    aput v2, v1, v3

    const/16 v2, 0x66

    const/16 v3, 0x35

    aput v2, v1, v3

    const/16 v2, 0x1dc

    const/16 v3, 0x36

    aput v2, v1, v3

    const/16 v2, 0x1f3

    const/16 v3, 0x37

    aput v2, v1, v3

    const/16 v2, 0x122

    const/16 v3, 0x38

    aput v2, v1, v3

    const/16 v2, 0x278

    const/16 v3, 0x39

    aput v2, v1, v3

    const/16 v2, 0x221

    const/16 v3, 0x3a

    aput v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0x3b

    aput v2, v1, v3

    const/16 v2, 0x35a

    const/16 v3, 0x3c

    aput v2, v1, v3

    const/16 v2, 0x394

    const/16 v3, 0x3d

    aput v2, v1, v3

    const/16 v2, 0x228

    const/16 v3, 0x3e

    aput v2, v1, v3

    const/16 v2, 0x29

    const/16 v3, 0x3f

    aput v2, v1, v3

    const/16 v2, 0x21e

    const/16 v3, 0x40

    aput v2, v1, v3

    const/16 v2, 0x121

    const/16 v3, 0x41

    aput v2, v1, v3

    const/16 v2, 0x7a

    const/16 v3, 0x42

    aput v2, v1, v3

    const/16 v2, 0x110

    const/16 v3, 0x43

    aput v2, v1, v3

    const/16 v2, 0x17f

    const/16 v3, 0x44

    aput v2, v1, v3

    const/16 v2, 0x320

    const/16 v3, 0x45

    aput v2, v1, v3

    const/16 v2, 0x1e5

    const/16 v3, 0x46

    aput v2, v1, v3

    const/16 v2, 0x62

    const/16 v3, 0x47

    aput v2, v1, v3

    const/16 v2, 0x2f0

    const/16 v3, 0x48

    aput v2, v1, v3

    const/16 v2, 0x1d8

    const/16 v3, 0x49

    aput v2, v1, v3

    const/16 v2, 0x2f9

    const/16 v3, 0x4a

    aput v2, v1, v3

    const/16 v2, 0x6b

    const/16 v3, 0x4b

    aput v2, v1, v3

    const/16 v2, 0x310

    const/16 v3, 0x4c

    aput v2, v1, v3

    const/16 v2, 0x35c

    const/16 v3, 0x4d

    aput v2, v1, v3

    const/16 v2, 0x292

    const/16 v3, 0x4e

    aput v2, v1, v3

    const/16 v2, 0x2e5

    const/16 v3, 0x4f

    aput v2, v1, v3

    const/16 v2, 0x122

    const/16 v3, 0x50

    aput v2, v1, v3

    const/16 v2, 0xcc

    const/16 v3, 0x51

    aput v2, v1, v3

    const/16 v2, 0x2a9

    const/16 v3, 0x52

    aput v2, v1, v3

    const/16 v2, 0x197

    const/16 v3, 0x53

    aput v2, v1, v3

    const/16 v2, 0x357

    const/16 v3, 0x54

    aput v2, v1, v3

    const/16 v2, 0x55

    const/16 v3, 0x55

    aput v2, v1, v3

    const/16 v2, 0x63

    const/16 v3, 0x56

    aput v2, v1, v3

    const/16 v2, 0x3e

    const/16 v3, 0x57

    aput v2, v1, v3

    const/16 v2, 0x1e2

    const/16 v3, 0x58

    aput v2, v1, v3

    const/16 v2, 0xb4

    const/16 v3, 0x59

    aput v2, v1, v3

    const/16 v2, 0x14

    const/16 v3, 0x5a

    aput v2, v1, v3

    const/16 v2, 0x129

    const/16 v3, 0x5b

    aput v2, v1, v3

    const/16 v2, 0x1c3

    const/16 v3, 0x5c

    aput v2, v1, v3

    const/16 v2, 0x251

    const/16 v3, 0x5d

    aput v2, v1, v3

    const/16 v2, 0x391

    const/16 v3, 0x5e

    aput v2, v1, v3

    const/16 v2, 0x8e

    const/16 v3, 0x5f

    aput v2, v1, v3

    const/16 v2, 0x328

    const/16 v3, 0x60

    aput v2, v1, v3

    const/16 v2, 0x2ac

    const/16 v3, 0x61

    aput v2, v1, v3

    const/16 v2, 0x11f

    const/16 v3, 0x62

    aput v2, v1, v3

    const/16 v2, 0x218

    const/16 v3, 0x63

    aput v2, v1, v3

    const/16 v2, 0x231

    const/16 v3, 0x64

    aput v2, v1, v3

    const/16 v2, 0x4c

    const/16 v3, 0x65

    aput v2, v1, v3

    const/16 v2, 0x28d

    const/16 v3, 0x66

    aput v2, v1, v3

    const/16 v2, 0x383

    const/16 v3, 0x67

    aput v2, v1, v3

    const/16 v2, 0x2d9

    const/16 v3, 0x68

    aput v2, v1, v3

    const/16 v2, 0x237

    const/16 v3, 0x69

    aput v2, v1, v3

    const/16 v2, 0x2e8

    const/16 v3, 0x6a

    aput v2, v1, v3

    const/16 v2, 0x186

    const/16 v3, 0x6b

    aput v2, v1, v3

    const/16 v2, 0x201

    const/16 v3, 0x6c

    aput v2, v1, v3

    const/16 v2, 0xc0

    const/16 v3, 0x6d

    aput v2, v1, v3

    const/16 v2, 0x204

    const/16 v3, 0x6e

    aput v2, v1, v3

    const/16 v2, 0x102

    const/16 v3, 0x6f

    aput v2, v1, v3

    const/16 v2, 0xf0

    const/16 v3, 0x70

    aput v2, v1, v3

    const/16 v2, 0x206

    const/16 v3, 0x71

    aput v2, v1, v3

    const/16 v2, 0x31a

    const/16 v3, 0x72

    aput v2, v1, v3

    const/16 v2, 0x18b

    const/16 v3, 0x73

    aput v2, v1, v3

    const/16 v2, 0x300

    const/16 v3, 0x74

    aput v2, v1, v3

    const/16 v2, 0x350

    const/16 v3, 0x75

    aput v2, v1, v3

    const/16 v2, 0x33

    const/16 v3, 0x76

    aput v2, v1, v3

    const/16 v2, 0x262

    const/16 v3, 0x77

    aput v2, v1, v3

    const/16 v2, 0x180

    const/16 v3, 0x78

    aput v2, v1, v3

    const/16 v2, 0xa8

    const/16 v3, 0x79

    aput v2, v1, v3

    const/16 v2, 0xbe

    const/16 v3, 0x7a

    aput v2, v1, v3

    const/16 v2, 0x33a

    const/16 v3, 0x7b

    aput v2, v1, v3

    const/16 v2, 0x148

    const/16 v3, 0x7c

    aput v2, v1, v3

    const/16 v2, 0x254

    const/16 v3, 0x7d

    aput v2, v1, v3

    const/16 v2, 0x312

    const/16 v3, 0x7e

    aput v2, v1, v3

    const/16 v2, 0x12f

    const/16 v3, 0x7f

    aput v2, v1, v3

    const/16 v2, 0x23a

    const/16 v3, 0x80

    aput v2, v1, v3

    const/16 v2, 0x17d

    const/16 v3, 0x81

    aput v2, v1, v3

    const/16 v2, 0x19f

    const/16 v3, 0x82

    aput v2, v1, v3

    const/16 v2, 0x281

    const/16 v3, 0x83

    aput v2, v1, v3

    const/16 v2, 0x9c

    const/16 v3, 0x84

    aput v2, v1, v3

    const/16 v2, 0xed

    const/16 v3, 0x85

    aput v2, v1, v3

    const/16 v2, 0x97

    const/16 v3, 0x86

    aput v2, v1, v3

    const/16 v2, 0x1ad

    const/16 v3, 0x87

    aput v2, v1, v3

    const/16 v2, 0x213

    const/16 v3, 0x88

    aput v2, v1, v3

    const/16 v2, 0xcf

    const/16 v3, 0x89

    aput v2, v1, v3

    const/16 v2, 0x2a4

    const/16 v3, 0x8a

    aput v2, v1, v3

    const/16 v2, 0x2c6

    const/16 v3, 0x8b

    aput v2, v1, v3

    const/16 v2, 0x59

    const/16 v3, 0x8c

    aput v2, v1, v3

    const/16 v2, 0xa8

    const/16 v3, 0x8d

    aput v2, v1, v3

    const/16 v2, 0x130

    const/16 v3, 0x8e

    aput v2, v1, v3

    const/16 v2, 0x192

    const/16 v3, 0x8f

    aput v2, v1, v3

    const/16 v2, 0x28

    const/16 v3, 0x90

    aput v2, v1, v3

    const/16 v2, 0x2c4

    const/16 v3, 0x91

    aput v2, v1, v3

    const/16 v2, 0x23f

    const/16 v3, 0x92

    aput v2, v1, v3

    const/16 v2, 0xa2

    const/16 v3, 0x93

    aput v2, v1, v3

    const/16 v2, 0x360

    const/16 v3, 0x94

    aput v2, v1, v3

    const/16 v2, 0xe5

    const/16 v3, 0x95

    aput v2, v1, v3

    const/16 v2, 0x41

    const/16 v3, 0x96

    aput v2, v1, v3

    const/16 v2, 0x35d

    const/16 v3, 0x97

    aput v2, v1, v3

    const/16 v2, 0x349

    const/16 v3, 0x98

    aput v2, v1, v3

    const/16 v2, 0x200

    const/16 v3, 0x99

    aput v2, v1, v3

    const/16 v2, 0xa4

    const/16 v3, 0x9a

    aput v2, v1, v3

    const/16 v2, 0x1dd

    const/16 v3, 0x9b

    aput v2, v1, v3

    const/16 v2, 0xdd

    const/16 v3, 0x9c

    aput v2, v1, v3

    const/16 v2, 0x5c

    const/16 v3, 0x9d

    aput v2, v1, v3

    const/16 v2, 0x166

    const/16 v3, 0x9e

    aput v2, v1, v3

    const/16 v2, 0x311

    const/16 v3, 0x9f

    aput v2, v1, v3

    const/16 v2, 0x120

    const/16 v3, 0xa0

    aput v2, v1, v3

    const/16 v2, 0x165

    const/16 v3, 0xa1

    aput v2, v1, v3

    const/16 v2, 0x352

    const/16 v3, 0xa2

    aput v2, v1, v3

    const/16 v2, 0x344

    const/16 v3, 0xa3

    aput v2, v1, v3

    const/16 v2, 0x33b

    const/16 v3, 0xa4

    aput v2, v1, v3

    const/16 v2, 0x2e0

    const/16 v3, 0xa5

    aput v2, v1, v3

    const/16 v2, 0x2c3

    const/16 v3, 0xa6

    aput v2, v1, v3

    const/16 v2, 0x5e

    const/16 v3, 0xa7

    aput v2, v1, v3

    const/16 v2, 0xa8

    aput v8, v1, v2

    const/16 v2, 0x1ee

    const/16 v3, 0xa9

    aput v2, v1, v3

    const/16 v2, 0x72

    const/16 v3, 0xaa

    aput v2, v1, v3

    const/16 v2, 0x209

    const/16 v3, 0xab

    aput v2, v1, v3

    const/16 v2, 0xac

    aput v4, v1, v2

    const/16 v2, 0x1f3

    const/16 v3, 0xad

    aput v2, v1, v3

    const/16 v2, 0x353

    const/16 v3, 0xae

    aput v2, v1, v3

    const/16 v2, 0x21f

    const/16 v3, 0xaf

    aput v2, v1, v3

    const/16 v2, 0x98

    const/16 v3, 0xb0

    aput v2, v1, v3

    const/16 v2, 0x2d9

    const/16 v3, 0xb1

    aput v2, v1, v3

    const/16 v2, 0x303

    const/16 v3, 0xb2

    aput v2, v1, v3

    const/16 v2, 0x5f

    const/16 v3, 0xb3

    aput v2, v1, v3

    const/16 v2, 0xf8

    const/16 v3, 0xb4

    aput v2, v1, v3

    const/16 v2, 0x169

    const/16 v3, 0xb5

    aput v2, v1, v3

    const/16 v2, 0x242

    const/16 v3, 0xb6

    aput v2, v1, v3

    const/16 v2, 0x143

    const/16 v3, 0xb7

    aput v2, v1, v3

    const/16 v2, 0x358

    const/16 v3, 0xb8

    aput v2, v1, v3

    const/16 v2, 0x31d

    const/16 v3, 0xb9

    aput v2, v1, v3

    const/16 v2, 0x121

    const/16 v3, 0xba

    aput v2, v1, v3

    const/16 v2, 0x33

    const/16 v3, 0xbb

    aput v2, v1, v3

    const/16 v2, 0x2ac

    const/16 v3, 0xbc

    aput v2, v1, v3

    const/16 v2, 0x1d2

    const/16 v3, 0xbd

    aput v2, v1, v3

    const/16 v2, 0x215

    const/16 v3, 0xbe

    aput v2, v1, v3

    const/16 v2, 0x334

    const/16 v3, 0xbf

    aput v2, v1, v3

    const/16 v2, 0x29d

    const/16 v3, 0xc0

    aput v2, v1, v3

    const/16 v2, 0x2d

    const/16 v3, 0xc1

    aput v2, v1, v3

    const/16 v2, 0x386

    const/16 v3, 0xc2

    aput v2, v1, v3

    const/16 v2, 0x1c4

    const/16 v3, 0xc3

    aput v2, v1, v3

    const/16 v2, 0xa7

    const/16 v3, 0xc4

    aput v2, v1, v3

    const/16 v2, 0x156

    const/16 v3, 0xc5

    aput v2, v1, v3

    const/16 v2, 0xf4

    const/16 v3, 0xc6

    aput v2, v1, v3

    const/16 v2, 0xad

    const/16 v3, 0xc7

    aput v2, v1, v3

    const/16 v2, 0x23

    const/16 v3, 0xc8

    aput v2, v1, v3

    const/16 v2, 0x1cf

    const/16 v3, 0xc9

    aput v2, v1, v3

    const/16 v2, 0x28b

    const/16 v3, 0xca

    aput v2, v1, v3

    const/16 v2, 0x33

    const/16 v3, 0xcb

    aput v2, v1, v3

    const/16 v2, 0x2bb

    const/16 v3, 0xcc

    aput v2, v1, v3

    const/16 v2, 0x24f

    const/16 v3, 0xcd

    aput v2, v1, v3

    const/16 v2, 0x1c4

    const/16 v3, 0xce

    aput v2, v1, v3

    const/16 v2, 0x242

    const/16 v3, 0xcf

    aput v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0xd0

    aput v2, v1, v3

    const/16 v2, 0x7c

    const/16 v3, 0xd1

    aput v2, v1, v3

    const/16 v2, 0x12a

    const/16 v3, 0xd2

    aput v2, v1, v3

    const/16 v2, 0x14c

    const/16 v3, 0xd3

    aput v2, v1, v3

    const/16 v2, 0x228

    const/16 v3, 0xd4

    aput v2, v1, v3

    const/16 v2, 0x2b

    const/16 v3, 0xd5

    aput v2, v1, v3

    const/16 v2, 0x1ab

    const/16 v3, 0xd6

    aput v2, v1, v3

    const/16 v2, 0x77

    const/16 v3, 0xd7

    aput v2, v1, v3

    const/16 v2, 0x296

    const/16 v3, 0xd8

    aput v2, v1, v3

    const/16 v2, 0x309

    const/16 v3, 0xd9

    aput v2, v1, v3

    const/16 v2, 0x1db

    const/16 v3, 0xda

    aput v2, v1, v3

    const/16 v2, 0x352

    const/16 v3, 0xdb

    aput v2, v1, v3

    const/16 v2, 0x2fc

    const/16 v3, 0xdc

    aput v2, v1, v3

    const/16 v2, 0x16c

    const/16 v3, 0xdd

    aput v2, v1, v3

    const/16 v2, 0x242

    const/16 v3, 0xde

    aput v2, v1, v3

    const/16 v2, 0x38f

    const/16 v3, 0xdf

    aput v2, v1, v3

    const/16 v2, 0x11b

    const/16 v3, 0xe0

    aput v2, v1, v3

    const/16 v2, 0x2c7

    const/16 v3, 0xe1

    aput v2, v1, v3

    const/16 v2, 0x1d8

    const/16 v3, 0xe2

    aput v2, v1, v3

    const/16 v2, 0x1a4

    const/16 v3, 0xe3

    aput v2, v1, v3

    const/16 v2, 0xf5

    const/16 v3, 0xe4

    aput v2, v1, v3

    const/16 v2, 0x120

    const/16 v3, 0xe5

    aput v2, v1, v3

    const/16 v2, 0x252

    const/16 v3, 0xe6

    aput v2, v1, v3

    const/16 v2, 0x18a

    const/16 v3, 0xe7

    aput v2, v1, v3

    const/16 v2, 0x1ff

    const/16 v3, 0xe8

    aput v2, v1, v3

    const/16 v2, 0x147

    const/16 v3, 0xe9

    aput v2, v1, v3

    const/16 v2, 0x24d

    const/16 v3, 0xea

    aput v2, v1, v3

    const/16 v2, 0x309

    const/16 v3, 0xeb

    aput v2, v1, v3

    const/16 v2, 0x2bb

    const/16 v3, 0xec

    aput v2, v1, v3

    const/16 v2, 0x2b0

    const/16 v3, 0xed

    aput v2, v1, v3

    const/16 v2, 0x2b

    const/16 v3, 0xee

    aput v2, v1, v3

    const/16 v2, 0x198

    const/16 v3, 0xef

    aput v2, v1, v3

    const/16 v2, 0x34a

    const/16 v3, 0xf0

    aput v2, v1, v3

    const/16 v2, 0x17f

    const/16 v3, 0xf1

    aput v2, v1, v3

    const/16 v2, 0x2d1

    const/16 v3, 0xf2

    aput v2, v1, v3

    const/16 v2, 0x209

    const/16 v3, 0xf3

    aput v2, v1, v3

    const/16 v2, 0x230

    const/16 v3, 0xf4

    aput v2, v1, v3

    const/16 v2, 0x284

    const/16 v3, 0xf5

    aput v2, v1, v3

    const/16 v2, 0x2ca

    const/16 v3, 0xf6

    aput v2, v1, v3

    const/16 v2, 0x22f

    const/16 v3, 0xf7

    aput v2, v1, v3

    const/16 v2, 0x3e

    const/16 v3, 0xf8

    aput v2, v1, v3

    const/16 v2, 0x91

    const/16 v3, 0xf9

    aput v2, v1, v3

    const/16 v2, 0x369

    const/16 v3, 0xfa

    aput v2, v1, v3

    const/16 v2, 0x297

    const/16 v3, 0xfb

    aput v2, v1, v3

    const/16 v2, 0x2c9

    const/16 v3, 0xfc

    aput v2, v1, v3

    const/16 v2, 0x9f

    const/16 v3, 0xfd

    aput v2, v1, v3

    const/16 v2, 0x2a0

    const/16 v3, 0xfe

    aput v2, v1, v3

    const/16 v2, 0x2d9

    const/16 v3, 0xff

    aput v2, v1, v3

    const/16 v2, 0x270

    const/16 v3, 0x100

    aput v2, v1, v3

    const/16 v2, 0x3b

    const/16 v3, 0x101

    aput v2, v1, v3

    const/16 v2, 0xc1

    const/16 v3, 0x102

    aput v2, v1, v3

    const/16 v2, 0x1a1

    const/16 v3, 0x103

    aput v2, v1, v3

    const/16 v2, 0x9e

    const/16 v3, 0x104

    aput v2, v1, v3

    const/16 v2, 0xd1

    const/16 v3, 0x105

    aput v2, v1, v3

    const/16 v2, 0x233

    const/16 v3, 0x106

    aput v2, v1, v3

    const/16 v2, 0x234

    const/16 v3, 0x107

    aput v2, v1, v3

    const/16 v2, 0x157

    const/16 v3, 0x108

    aput v2, v1, v3

    const/16 v2, 0x2b5

    const/16 v3, 0x109

    aput v2, v1, v3

    const/16 v2, 0x6d

    const/16 v3, 0x10a

    aput v2, v1, v3

    const/16 v2, 0x260

    const/16 v3, 0x10b

    aput v2, v1, v3

    const/16 v2, 0x233

    const/16 v3, 0x10c

    aput v2, v1, v3

    const/16 v2, 0x16d

    const/16 v3, 0x10d

    aput v2, v1, v3

    const/16 v2, 0xb5

    const/16 v3, 0x10e

    aput v2, v1, v3

    const/16 v2, 0x304

    const/16 v3, 0x10f

    aput v2, v1, v3

    const/16 v2, 0x2a5

    const/16 v3, 0x110

    aput v2, v1, v3

    const/16 v2, 0x136

    const/16 v3, 0x111

    aput v2, v1, v3

    const/16 v2, 0xf8

    const/16 v3, 0x112

    aput v2, v1, v3

    const/16 v2, 0x161

    const/16 v3, 0x113

    aput v2, v1, v3

    const/16 v2, 0x2c4

    const/16 v3, 0x114

    aput v2, v1, v3

    const/16 v2, 0x19a

    const/16 v3, 0x115

    aput v2, v1, v3

    const/16 v2, 0x243

    const/16 v3, 0x116

    aput v2, v1, v3

    const/16 v2, 0x366

    const/16 v3, 0x117

    aput v2, v1, v3

    const/16 v2, 0x269

    const/16 v3, 0x118

    aput v2, v1, v3

    const/16 v2, 0x349

    const/16 v3, 0x119

    aput v2, v1, v3

    const/16 v2, 0x278

    const/16 v3, 0x11a

    aput v2, v1, v3

    const/16 v2, 0x35c

    const/16 v3, 0x11b

    aput v2, v1, v3

    const/16 v2, 0x121

    const/16 v3, 0x11c

    aput v2, v1, v3

    const/16 v2, 0x218

    const/16 v3, 0x11d

    aput v2, v1, v3

    const/16 v2, 0x23

    const/16 v3, 0x11e

    aput v2, v1, v3

    const/16 v2, 0x309

    const/16 v3, 0x11f

    aput v2, v1, v3

    const/16 v2, 0x26a

    const/16 v3, 0x120

    aput v2, v1, v3

    const/16 v2, 0x24a

    const/16 v3, 0x121

    aput v2, v1, v3

    const/16 v2, 0x1a8

    const/16 v3, 0x122

    aput v2, v1, v3

    const/16 v2, 0x341

    const/16 v3, 0x123

    aput v2, v1, v3

    const/16 v2, 0x4d

    const/16 v3, 0x124

    aput v2, v1, v3

    const/16 v2, 0x255

    const/16 v3, 0x125

    aput v2, v1, v3

    const/16 v2, 0x15a

    const/16 v3, 0x126

    aput v2, v1, v3

    const/16 v2, 0x10d

    const/16 v3, 0x127

    aput v2, v1, v3

    const/16 v2, 0x2f5

    const/16 v3, 0x128

    aput v2, v1, v3

    const/16 v2, 0x278

    const/16 v3, 0x129

    aput v2, v1, v3

    const/16 v2, 0x2b7

    const/16 v3, 0x12a

    aput v2, v1, v3

    const/16 v2, 0x2ef

    const/16 v3, 0x12b

    aput v2, v1, v3

    const/16 v2, 0x14b

    const/16 v3, 0x12c

    aput v2, v1, v3

    const/16 v2, 0xf7

    const/16 v3, 0x12d

    aput v2, v1, v3

    const/16 v2, 0xb8

    const/16 v3, 0x12e

    aput v2, v1, v3

    const/16 v2, 0x2d

    const/16 v3, 0x12f

    aput v2, v1, v3

    const/16 v2, 0x313

    const/16 v3, 0x130

    aput v2, v1, v3

    const/16 v2, 0x2a8

    const/16 v3, 0x131

    aput v2, v1, v3

    const/16 v2, 0x12

    const/16 v3, 0x132

    aput v2, v1, v3

    const/16 v2, 0x42

    const/16 v3, 0x133

    aput v2, v1, v3

    const/16 v2, 0x197

    const/16 v3, 0x134

    aput v2, v1, v3

    const/16 v2, 0x171

    const/16 v3, 0x135

    aput v2, v1, v3

    const/16 v2, 0x36

    const/16 v3, 0x136

    aput v2, v1, v3

    const/16 v2, 0x1ec

    const/16 v3, 0x137

    aput v2, v1, v3

    const/16 v2, 0xe4

    const/16 v3, 0x138

    aput v2, v1, v3

    const/16 v2, 0x265

    const/16 v3, 0x139

    aput v2, v1, v3

    const/16 v2, 0x33e

    const/16 v3, 0x13a

    aput v2, v1, v3

    const/16 v2, 0x39a

    const/16 v3, 0x13b

    aput v2, v1, v3

    const/16 v2, 0x1b5

    const/16 v3, 0x13c

    aput v2, v1, v3

    const/16 v2, 0x207

    const/16 v3, 0x13d

    aput v2, v1, v3

    const/16 v2, 0x284

    const/16 v3, 0x13e

    aput v2, v1, v3

    const/16 v2, 0x389

    const/16 v3, 0x13f

    aput v2, v1, v3

    const/16 v2, 0x315

    const/16 v3, 0x140

    aput v2, v1, v3

    const/16 v2, 0x1a4

    const/16 v3, 0x141

    aput v2, v1, v3

    const/16 v2, 0x131

    const/16 v3, 0x142

    aput v2, v1, v3

    const/16 v2, 0x1b9

    const/16 v3, 0x143

    aput v2, v1, v3

    const/16 v2, 0xcf

    const/16 v3, 0x144

    aput v2, v1, v3

    const/16 v2, 0x12c

    const/16 v3, 0x145

    aput v2, v1, v3

    const/16 v2, 0x37c

    const/16 v3, 0x146

    aput v2, v1, v3

    const/16 v2, 0x33b

    const/16 v3, 0x147

    aput v2, v1, v3

    const/16 v2, 0x8d

    const/16 v3, 0x148

    aput v2, v1, v3

    const/16 v2, 0x219

    const/16 v3, 0x149

    aput v2, v1, v3

    const/16 v2, 0x17d

    const/16 v3, 0x14a

    aput v2, v1, v3

    const/16 v2, 0x296

    const/16 v3, 0x14b

    aput v2, v1, v3

    const/16 v2, 0x201

    const/16 v3, 0x14c

    aput v2, v1, v3

    const/16 v2, 0x38

    const/16 v3, 0x14d

    aput v2, v1, v3

    const/16 v2, 0xfc

    const/16 v3, 0x14e

    aput v2, v1, v3

    const/16 v2, 0x155

    const/16 v3, 0x14f

    aput v2, v1, v3

    const/16 v2, 0xf2

    const/16 v3, 0x150

    aput v2, v1, v3

    const/16 v2, 0x31d

    const/16 v3, 0x151

    aput v2, v1, v3

    const/16 v2, 0x346

    const/16 v3, 0x152

    aput v2, v1, v3

    const/16 v2, 0x345

    const/16 v3, 0x153

    aput v2, v1, v3

    const/16 v2, 0x2d0

    const/16 v3, 0x154

    aput v2, v1, v3

    const/16 v2, 0xe0

    const/16 v3, 0x155

    aput v2, v1, v3

    const/16 v2, 0x133

    const/16 v3, 0x156

    aput v2, v1, v3

    const/16 v2, 0x277

    const/16 v3, 0x157

    aput v2, v1, v3

    const/16 v2, 0x3d

    const/16 v3, 0x158

    aput v2, v1, v3

    const/16 v2, 0x57

    const/16 v3, 0x159

    aput v2, v1, v3

    const/16 v2, 0x230

    const/16 v3, 0x15a

    aput v2, v1, v3

    const/16 v2, 0x136

    const/16 v3, 0x15b

    aput v2, v1, v3

    const/16 v2, 0x2f4

    const/16 v3, 0x15c

    aput v2, v1, v3

    const/16 v2, 0x299

    const/16 v3, 0x15d

    aput v2, v1, v3

    const/16 v2, 0x18d

    const/16 v3, 0x15e

    aput v2, v1, v3

    const/16 v2, 0x328

    const/16 v3, 0x15f

    aput v2, v1, v3

    const/16 v2, 0x353

    const/16 v3, 0x160

    aput v2, v1, v3

    const/16 v2, 0x135

    const/16 v3, 0x161

    aput v2, v1, v3

    const/16 v2, 0x1d9

    const/16 v3, 0x162

    aput v2, v1, v3

    const/16 v2, 0x31b

    const/16 v3, 0x163

    aput v2, v1, v3

    const/16 v2, 0x17a

    const/16 v3, 0x164

    aput v2, v1, v3

    const/16 v2, 0x1f

    const/16 v3, 0x165

    aput v2, v1, v3

    const/16 v2, 0x287

    const/16 v3, 0x166

    aput v2, v1, v3

    const/16 v2, 0x393

    const/16 v3, 0x167

    aput v2, v1, v3

    const/16 v2, 0x1cb

    const/16 v3, 0x168

    aput v2, v1, v3

    const/16 v2, 0x326

    const/16 v3, 0x169

    aput v2, v1, v3

    const/16 v2, 0x24e

    const/16 v3, 0x16a

    aput v2, v1, v3

    const/16 v2, 0x2db

    const/16 v3, 0x16b

    aput v2, v1, v3

    const/16 v2, 0x1a9

    const/16 v3, 0x16c

    aput v2, v1, v3

    const/16 v2, 0xd8

    const/16 v3, 0x16d

    aput v2, v1, v3

    const/16 v2, 0x224

    const/16 v3, 0x16e

    aput v2, v1, v3

    const/16 v2, 0xf9

    const/16 v3, 0x16f

    aput v2, v1, v3

    const/16 v2, 0x141

    const/16 v3, 0x170

    aput v2, v1, v3

    const/16 v2, 0x371

    const/16 v3, 0x171

    aput v2, v1, v3

    const/16 v2, 0x2bb

    const/16 v3, 0x172

    aput v2, v1, v3

    const/16 v2, 0x217

    const/16 v3, 0x173

    aput v2, v1, v3

    const/16 v2, 0x2a1

    const/16 v3, 0x174

    aput v2, v1, v3

    const/16 v2, 0x30e

    const/16 v3, 0x175

    aput v2, v1, v3

    const/16 v2, 0xd2

    const/16 v3, 0x176

    aput v2, v1, v3

    const/16 v2, 0x32f

    const/16 v3, 0x177

    aput v2, v1, v3

    const/16 v2, 0x389

    const/16 v3, 0x178

    aput v2, v1, v3

    const/16 v2, 0x12f

    const/16 v3, 0x179

    aput v2, v1, v3

    const/16 v2, 0x34b

    const/16 v3, 0x17a

    aput v2, v1, v3

    const/16 v2, 0x39a

    const/16 v3, 0x17b

    aput v2, v1, v3

    const/16 v2, 0x119

    const/16 v3, 0x17c

    aput v2, v1, v3

    const/16 v2, 0x49

    const/16 v3, 0x17d

    aput v2, v1, v3

    const/16 v2, 0x1d5

    const/16 v3, 0x17e

    aput v2, v1, v3

    const/16 v2, 0x317

    const/16 v3, 0x17f

    aput v2, v1, v3

    const/16 v2, 0x294

    const/16 v3, 0x180

    aput v2, v1, v3

    const/16 v2, 0xa2

    const/16 v3, 0x181

    aput v2, v1, v3

    const/16 v2, 0x1f2

    const/16 v3, 0x182

    aput v2, v1, v3

    const/16 v2, 0x134

    const/16 v3, 0x183

    aput v2, v1, v3

    const/16 v2, 0x9b

    const/16 v3, 0x184

    aput v2, v1, v3

    const/16 v2, 0x1a6

    const/16 v3, 0x185

    aput v2, v1, v3

    const/16 v2, 0x38b

    const/16 v3, 0x186

    aput v2, v1, v3

    const/16 v2, 0x331

    const/16 v3, 0x187

    aput v2, v1, v3

    const/16 v2, 0xbb

    const/16 v3, 0x188

    aput v2, v1, v3

    const/16 v2, 0x3e

    const/16 v3, 0x189

    aput v2, v1, v3

    const/16 v2, 0x10

    const/16 v3, 0x18a

    aput v2, v1, v3

    const/16 v2, 0x1a9

    const/16 v3, 0x18b

    aput v2, v1, v3

    const/16 v2, 0x217

    const/16 v3, 0x18c

    aput v2, v1, v3

    const/16 v2, 0x150

    const/16 v3, 0x18d

    aput v2, v1, v3

    const/16 v2, 0x11e

    const/16 v3, 0x18e

    aput v2, v1, v3

    const/16 v2, 0x1b5

    const/16 v3, 0x18f

    aput v2, v1, v3

    const/16 v2, 0x177

    const/16 v3, 0x190

    aput v2, v1, v3

    const/16 v2, 0x111

    const/16 v3, 0x191

    aput v2, v1, v3

    const/16 v2, 0x262

    const/16 v3, 0x192

    aput v2, v1, v3

    const/16 v2, 0x128

    const/16 v3, 0x193

    aput v2, v1, v3

    const/16 v2, 0xb7

    const/16 v3, 0x194

    aput v2, v1, v3

    const/16 v2, 0x39b

    const/16 v3, 0x195

    aput v2, v1, v3

    const/16 v2, 0x74

    const/16 v3, 0x196

    aput v2, v1, v3

    const/16 v2, 0x29b

    const/16 v3, 0x197

    aput v2, v1, v3

    const/16 v2, 0x2ef

    const/16 v3, 0x198

    aput v2, v1, v3

    const/16 v2, 0x161

    const/16 v3, 0x199

    aput v2, v1, v3

    const/16 v2, 0x3e

    const/16 v3, 0x19a

    aput v2, v1, v3

    const/16 v2, 0x16e

    const/16 v3, 0x19b

    aput v2, v1, v3

    const/16 v2, 0x2b3

    const/16 v3, 0x19c

    aput v2, v1, v3

    const/16 v2, 0x17b

    const/16 v3, 0x19d

    aput v2, v1, v3

    const/16 v2, 0x2af

    const/16 v3, 0x19e

    aput v2, v1, v3

    const/16 v2, 0x34a

    const/16 v3, 0x19f

    aput v2, v1, v3

    const/16 v2, 0x25

    const/16 v3, 0x1a0

    aput v2, v1, v3

    const/16 v2, 0x165

    const/16 v3, 0x1a1

    aput v2, v1, v3

    const/16 v2, 0x2d0

    const/16 v3, 0x1a2

    aput v2, v1, v3

    const/16 v2, 0x2e6

    const/16 v3, 0x1a3

    aput v2, v1, v3

    const/16 v2, 0x14a

    const/16 v3, 0x1a4

    aput v2, v1, v3

    const/4 v2, 0x5

    const/16 v3, 0x1a5

    aput v2, v1, v3

    const/16 v2, 0x27

    const/16 v3, 0x1a6

    aput v2, v1, v3

    const/16 v2, 0x39b

    const/16 v3, 0x1a7

    aput v2, v1, v3

    const/16 v2, 0x137

    const/16 v3, 0x1a8

    aput v2, v1, v3

    const/16 v2, 0x1a8

    const/16 v3, 0x1a9

    aput v2, v1, v3

    const/16 v2, 0xf2

    const/16 v3, 0x1aa

    aput v2, v1, v3

    const/16 v2, 0x2ed

    const/16 v3, 0x1ab

    aput v2, v1, v3

    const/16 v2, 0x141

    const/16 v3, 0x1ac

    aput v2, v1, v3

    const/16 v2, 0x36

    const/16 v3, 0x1ad

    aput v2, v1, v3

    const/16 v2, 0x29d

    const/16 v3, 0x1ae

    aput v2, v1, v3

    const/16 v2, 0x13c

    const/16 v3, 0x1af

    aput v2, v1, v3

    const/16 v2, 0x156

    const/16 v3, 0x1b0

    aput v2, v1, v3

    const/16 v2, 0x12b

    const/16 v3, 0x1b1

    aput v2, v1, v3

    const/16 v2, 0x216

    const/16 v3, 0x1b2

    aput v2, v1, v3

    const/16 v2, 0x69

    const/16 v3, 0x1b3

    aput v2, v1, v3

    const/16 v2, 0x29b

    const/16 v3, 0x1b4

    aput v2, v1, v3

    const/16 v2, 0x1e8

    const/16 v3, 0x1b5

    aput v2, v1, v3

    const/16 v2, 0x280

    const/16 v3, 0x1b6

    aput v2, v1, v3

    const/16 v2, 0x2a0

    const/16 v3, 0x1b7

    aput v2, v1, v3

    const/16 v2, 0x240

    const/16 v3, 0x1b8

    aput v2, v1, v3

    const/16 v2, 0x21c

    const/16 v3, 0x1b9

    aput v2, v1, v3

    const/16 v2, 0x13c

    const/16 v3, 0x1ba

    aput v2, v1, v3

    const/16 v2, 0x1e6

    const/16 v3, 0x1bb

    aput v2, v1, v3

    const/16 v2, 0x2d1

    const/16 v3, 0x1bc

    aput v2, v1, v3

    const/16 v2, 0x262

    const/16 v3, 0x1bd

    aput v2, v1, v3

    const/16 v2, 0x2e

    const/16 v3, 0x1be

    aput v2, v1, v3

    const/16 v2, 0x290

    const/16 v3, 0x1bf

    aput v2, v1, v3

    const/16 v2, 0x1bf

    const/16 v3, 0x1c0

    aput v2, v1, v3

    const/16 v2, 0xab

    const/16 v3, 0x1c1

    aput v2, v1, v3

    const/16 v2, 0x268

    const/16 v3, 0x1c2

    aput v2, v1, v3

    const/16 v2, 0x1d0

    const/16 v3, 0x1c3

    aput v2, v1, v3

    const/16 v2, 0xbe

    const/16 v3, 0x1c4

    aput v2, v1, v3

    const/16 v2, 0x213

    const/16 v3, 0x1c5

    aput v2, v1, v3

    const/16 v2, 0x129

    const/16 v3, 0x1c6

    aput v2, v1, v3

    const/16 v2, 0x141

    const/16 v3, 0x1c7

    aput v2, v1, v3

    const/16 v2, 0x2fa

    const/16 v3, 0x1c8

    aput v2, v1, v3

    const/16 v2, 0x2f0

    const/16 v3, 0x1c9

    aput v2, v1, v3

    const/16 v2, 0x215

    const/16 v3, 0x1ca

    aput v2, v1, v3

    const/16 v2, 0xaf

    const/16 v3, 0x1cb

    aput v2, v1, v3

    const/16 v2, 0x86

    const/16 v3, 0x1cc

    aput v2, v1, v3

    const/16 v2, 0xe

    const/16 v3, 0x1cd

    aput v2, v1, v3

    const/16 v2, 0x17d

    const/16 v3, 0x1ce

    aput v2, v1, v3

    const/16 v2, 0x1b1

    const/16 v3, 0x1cf

    aput v2, v1, v3

    const/16 v2, 0x2cd

    const/16 v3, 0x1d0

    aput v2, v1, v3

    const/16 v2, 0x2d

    const/16 v3, 0x1d1

    aput v2, v1, v3

    const/16 v2, 0x6f

    const/16 v3, 0x1d2

    aput v2, v1, v3

    const/16 v2, 0x14

    const/16 v3, 0x1d3

    aput v2, v1, v3

    const/16 v2, 0x254

    const/16 v3, 0x1d4

    aput v2, v1, v3

    const/16 v2, 0x11c

    const/16 v3, 0x1d5

    aput v2, v1, v3

    const/16 v2, 0x2e0

    const/16 v3, 0x1d6

    aput v2, v1, v3

    const/16 v2, 0x8a

    const/16 v3, 0x1d7

    aput v2, v1, v3

    const/16 v2, 0x286

    const/16 v3, 0x1d8

    aput v2, v1, v3

    const/16 v2, 0x19b

    const/16 v3, 0x1d9

    aput v2, v1, v3

    const/16 v2, 0x36d

    const/16 v3, 0x1da

    aput v2, v1, v3

    const/16 v2, 0x29d

    const/16 v3, 0x1db

    aput v2, v1, v3

    const/16 v2, 0x8d

    const/16 v3, 0x1dc

    aput v2, v1, v3

    const/16 v2, 0x397

    const/16 v3, 0x1dd

    aput v2, v1, v3

    const/16 v2, 0x2d

    const/16 v3, 0x1de

    aput v2, v1, v3

    const/16 v2, 0x30c

    const/16 v3, 0x1df

    aput v2, v1, v3

    const/16 v2, 0x197

    const/16 v3, 0x1e0

    aput v2, v1, v3

    const/16 v2, 0xa4

    const/16 v3, 0x1e1

    aput v2, v1, v3

    const/16 v2, 0x14c

    const/16 v3, 0x1e2

    aput v2, v1, v3

    const/16 v2, 0x383

    const/16 v3, 0x1e3

    aput v2, v1, v3

    const/16 v2, 0xa5

    const/16 v3, 0x1e4

    aput v2, v1, v3

    const/16 v2, 0x2d6

    const/16 v3, 0x1e5

    aput v2, v1, v3

    const/16 v2, 0x258

    const/16 v3, 0x1e6

    aput v2, v1, v3

    const/16 v2, 0x145

    const/16 v3, 0x1e7

    aput v2, v1, v3

    const/16 v2, 0x1f2

    const/16 v3, 0x1e8

    aput v2, v1, v3

    const/16 v2, 0x28f

    const/16 v3, 0x1e9

    aput v2, v1, v3

    const/16 v2, 0x165

    const/16 v3, 0x1ea

    aput v2, v1, v3

    const/16 v2, 0x2f0

    const/16 v3, 0x1eb

    aput v2, v1, v3

    const/16 v2, 0x300

    const/16 v3, 0x1ec

    aput v2, v1, v3

    const/16 v2, 0xdf

    const/16 v3, 0x1ed

    aput v2, v1, v3

    const/16 v2, 0x351

    const/16 v3, 0x1ee

    aput v2, v1, v3

    const/16 v2, 0x287

    const/16 v3, 0x1ef

    aput v2, v1, v3

    const/16 v2, 0x3f

    const/16 v3, 0x1f0

    aput v2, v1, v3

    const/16 v2, 0x136

    const/16 v3, 0x1f1

    aput v2, v1, v3

    const/16 v2, 0x35f

    const/16 v3, 0x1f2

    aput v2, v1, v3

    const/16 v2, 0xfb

    const/16 v3, 0x1f3

    aput v2, v1, v3

    const/16 v2, 0x16e

    const/16 v3, 0x1f4

    aput v2, v1, v3

    const/16 v2, 0x130

    const/16 v3, 0x1f5

    aput v2, v1, v3

    const/16 v2, 0x11a

    const/16 v3, 0x1f6

    aput v2, v1, v3

    const/16 v2, 0x2e2

    const/16 v3, 0x1f7

    aput v2, v1, v3

    const/16 v2, 0x2a3

    const/16 v3, 0x1f8

    aput v2, v1, v3

    const/16 v2, 0x19a

    const/16 v3, 0x1f9

    aput v2, v1, v3

    const/16 v2, 0x185

    const/16 v3, 0x1fa

    aput v2, v1, v3

    const/16 v2, 0xf4

    const/16 v3, 0x1fb

    aput v2, v1, v3

    const/16 v2, 0x1f

    const/16 v3, 0x1fc

    aput v2, v1, v3

    const/16 v2, 0x79

    const/16 v3, 0x1fd

    aput v2, v1, v3

    const/16 v2, 0x12f

    const/16 v3, 0x1fe

    aput v2, v1, v3

    const/16 v2, 0x107

    const/16 v3, 0x1ff

    aput v2, v1, v3

    aput-object v1, v0, v8

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
