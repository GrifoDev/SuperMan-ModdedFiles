.class public final Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# static fields
.field private static final ALOG:[I

.field private static final FACTORS:[[I

.field private static final FACTOR_SETS:[I

.field private static final LOG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/16 v2, 0x10

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v7, v2, v3

    const/4 v3, 0x7

    aput v3, v2, v11

    const/16 v3, 0xa

    aput v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0xb

    aput v4, v2, v3

    const/16 v3, 0xc

    aput v3, v2, v10

    const/16 v3, 0xe

    aput v3, v2, v7

    const/4 v3, 0x6

    const/16 v4, 0x12

    aput v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x14

    aput v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x18

    aput v4, v2, v3

    const/16 v3, 0x1c

    aput v3, v2, v9

    const/16 v3, 0xa

    const/16 v4, 0x24

    aput v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x2a

    aput v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x30

    aput v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x38

    aput v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x3e

    aput v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x44

    aput v4, v2, v3

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    const/4 v3, 0x0

    new-array v4, v7, [I

    const/4 v5, 0x0

    const/16 v6, 0xe4

    aput v6, v4, v5

    const/16 v5, 0x30

    aput v5, v4, v11

    const/16 v5, 0xf

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x6f

    aput v6, v4, v5

    const/16 v5, 0x3e

    aput v5, v4, v10

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x17

    aput v5, v3, v4

    const/16 v4, 0x44

    aput v4, v3, v11

    const/16 v4, 0x90

    aput v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0x86

    aput v5, v3, v4

    const/16 v4, 0xf0

    aput v4, v3, v10

    const/16 v4, 0x5c

    aput v4, v3, v7

    const/4 v4, 0x6

    const/16 v5, 0xfe

    aput v5, v3, v4

    aput-object v3, v2, v11

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput v5, v3, v4

    const/16 v4, 0x18

    aput v4, v3, v11

    const/16 v4, 0xb9

    aput v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0xa6

    aput v5, v3, v4

    const/16 v4, 0xdf

    aput v4, v3, v10

    const/16 v4, 0xf8

    aput v4, v3, v7

    const/4 v4, 0x6

    const/16 v5, 0x74

    aput v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0xff

    aput v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x6e

    aput v5, v3, v4

    const/16 v4, 0x3d

    aput v4, v3, v9

    aput-object v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0xb

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0x8a

    aput v5, v4, v11

    const/16 v5, 0xcd

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xc

    aput v6, v4, v5

    const/16 v5, 0xc2

    aput v5, v4, v10

    const/16 v5, 0xa8

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x27

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x3c

    aput v6, v4, v5

    const/16 v5, 0x61

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x78

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x29

    aput v5, v3, v4

    const/16 v4, 0x99

    aput v4, v3, v11

    const/16 v4, 0x9e

    aput v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0x5b

    aput v5, v3, v4

    const/16 v4, 0x3d

    aput v4, v3, v10

    const/16 v4, 0x2a

    aput v4, v3, v7

    const/4 v4, 0x6

    const/16 v5, 0x8e

    aput v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0xd5

    aput v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x61

    aput v5, v3, v4

    const/16 v4, 0xb2

    aput v4, v3, v9

    const/16 v4, 0xa

    const/16 v5, 0x64

    aput v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0xf2

    aput v5, v3, v4

    aput-object v3, v2, v10

    const/16 v3, 0xe

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x9c

    aput v5, v3, v4

    const/16 v4, 0x61

    aput v4, v3, v11

    const/16 v4, 0xc0

    aput v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0xfc

    aput v5, v3, v4

    const/16 v4, 0x5f

    aput v4, v3, v10

    aput v9, v3, v7

    const/4 v4, 0x6

    const/16 v5, 0x9d

    aput v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0x77

    aput v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x8a

    aput v5, v3, v4

    const/16 v4, 0x2d

    aput v4, v3, v9

    const/16 v4, 0xa

    const/16 v5, 0x12

    aput v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0xba

    aput v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0x53

    aput v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, 0xb9

    aput v5, v3, v4

    aput-object v3, v2, v7

    const/4 v3, 0x6

    const/16 v4, 0x12

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x53

    aput v6, v4, v5

    const/16 v5, 0xc3

    aput v5, v4, v11

    const/16 v5, 0x64

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x27

    aput v6, v4, v5

    const/16 v5, 0xbc

    aput v5, v4, v10

    const/16 v5, 0x4b

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x42

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x3d

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xf1

    aput v6, v4, v5

    const/16 v5, 0xd5

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x6d

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x81

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x5e

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xfe

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xe1

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x30

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x5a

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0xbc

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x14

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf

    aput v6, v4, v5

    const/16 v5, 0xc3

    aput v5, v4, v11

    const/16 v5, 0xf4

    aput v5, v4, v8

    const/4 v5, 0x3

    aput v9, v4, v5

    const/16 v5, 0xe9

    aput v5, v4, v10

    const/16 v5, 0x47

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0xa8

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v8, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xbc

    aput v6, v4, v5

    const/16 v5, 0xa0

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x99

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0x91

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xfd

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x4f

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x6c

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x52

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x1b

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0xae

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0xba

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0xac

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x18

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x34

    aput v6, v4, v5

    const/16 v5, 0xbe

    aput v5, v4, v11

    const/16 v5, 0x58

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xcd

    aput v6, v4, v5

    const/16 v5, 0x6d

    aput v5, v4, v10

    const/16 v5, 0x27

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0xb0

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x15

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x9b

    aput v6, v4, v5

    const/16 v5, 0xc5

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0xfb

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xdf

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x9b

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x15

    aput v6, v4, v5

    const/16 v5, 0xe

    aput v7, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xac

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xfe

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x7c

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0xc

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0xb5

    aput v6, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0xb8

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x60

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x32

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0xc1

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xd3

    aput v5, v3, v4

    const/16 v4, 0xe7

    aput v4, v3, v11

    const/16 v4, 0x2b

    aput v4, v3, v8

    const/4 v4, 0x3

    const/16 v5, 0x61

    aput v5, v3, v4

    const/16 v4, 0x47

    aput v4, v3, v10

    const/16 v4, 0x60

    aput v4, v3, v7

    const/4 v4, 0x6

    const/16 v5, 0x67

    aput v5, v3, v4

    const/4 v4, 0x7

    const/16 v5, 0xae

    aput v5, v3, v4

    const/16 v4, 0x8

    const/16 v5, 0x25

    aput v5, v3, v4

    const/16 v4, 0x97

    aput v4, v3, v9

    const/16 v4, 0xa

    const/16 v5, 0xaa

    aput v5, v3, v4

    const/16 v4, 0xb

    const/16 v5, 0x35

    aput v5, v3, v4

    const/16 v4, 0xc

    const/16 v5, 0x4b

    aput v5, v3, v4

    const/16 v4, 0xd

    const/16 v5, 0x22

    aput v5, v3, v4

    const/16 v4, 0xe

    const/16 v5, 0xf9

    aput v5, v3, v4

    const/16 v4, 0xf

    const/16 v5, 0x79

    aput v5, v3, v4

    const/16 v4, 0x10

    const/16 v5, 0x11

    aput v5, v3, v4

    const/16 v4, 0x11

    const/16 v5, 0x8a

    aput v5, v3, v4

    const/16 v4, 0x12

    const/16 v5, 0x6e

    aput v5, v3, v4

    const/16 v4, 0x13

    const/16 v5, 0xd5

    aput v5, v3, v4

    const/16 v4, 0x14

    const/16 v5, 0x8d

    aput v5, v3, v4

    const/16 v4, 0x15

    const/16 v5, 0x88

    aput v5, v3, v4

    const/16 v4, 0x16

    const/16 v5, 0x78

    aput v5, v3, v4

    const/16 v4, 0x17

    const/16 v5, 0x97

    aput v5, v3, v4

    const/16 v4, 0x18

    const/16 v5, 0xe9

    aput v5, v3, v4

    const/16 v4, 0x19

    const/16 v5, 0xa8

    aput v5, v3, v4

    const/16 v4, 0x1a

    const/16 v5, 0x5d

    aput v5, v3, v4

    const/16 v4, 0x1b

    const/16 v5, 0xff

    aput v5, v3, v4

    aput-object v3, v2, v9

    const/16 v3, 0xa

    const/16 v4, 0x24

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0x7f

    aput v5, v4, v11

    const/16 v5, 0xf2

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xda

    aput v6, v4, v5

    const/16 v5, 0x82

    aput v5, v4, v10

    const/16 v5, 0xfa

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0xa2

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0xb5

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x66

    aput v6, v4, v5

    const/16 v5, 0x78

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x54

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xb3

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xdc

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xfb

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x50

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xb6

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xe5

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x12

    aput v6, v4, v5

    const/16 v5, 0x12

    aput v8, v4, v5

    const/16 v5, 0x13

    aput v10, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0x44

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x21

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x65

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x89

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0x5f

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0x77

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0x73

    aput v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0x2c

    aput v6, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0xb8

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x3b

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x19

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0xe1

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x62

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x51

    aput v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0x70

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x2a

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x4d

    aput v6, v4, v5

    const/16 v5, 0xc1

    aput v5, v4, v11

    const/16 v5, 0x89

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x1f

    aput v6, v4, v5

    const/16 v5, 0x13

    aput v5, v4, v10

    const/16 v5, 0x26

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x16

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x99

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xf7

    aput v6, v4, v5

    const/16 v5, 0x69

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x7a

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v8, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x85

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xf2

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x8

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x5f

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x64

    aput v6, v4, v5

    const/16 v5, 0x13

    aput v9, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0xa7

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x69

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0xd6

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x6f

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0x39

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0x79

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0x15

    aput v6, v4, v5

    const/16 v5, 0x1b

    aput v11, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0xfd

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0x39

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x36

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x65

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0xf8

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0xca

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x45

    aput v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0x32

    aput v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0x96

    aput v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0xb1

    aput v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0xe2

    aput v6, v4, v5

    const/16 v5, 0x27

    aput v7, v4, v5

    const/16 v5, 0x28

    aput v9, v4, v5

    const/16 v5, 0x29

    aput v7, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0x30

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0x84

    aput v5, v4, v11

    const/16 v5, 0xac

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xdf

    aput v6, v4, v5

    const/16 v5, 0x60

    aput v5, v4, v10

    const/16 v5, 0x20

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x75

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x16

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xee

    aput v6, v4, v5

    const/16 v5, 0x85

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0xee

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xe7

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xcd

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xbc

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xed

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x57

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xbf

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x6a

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x10

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0x93

    aput v6, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0x76

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x17

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x25

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x5a

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0xaa

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0xcd

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0x83

    aput v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0x58

    aput v6, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0x78

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0x64

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x42

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x8a

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0xba

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0xf0

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x52

    aput v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0x2c

    aput v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0xb0

    aput v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0x57

    aput v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0xbb

    aput v6, v4, v5

    const/16 v5, 0x27

    const/16 v6, 0x93

    aput v6, v4, v5

    const/16 v5, 0x28

    const/16 v6, 0xa0

    aput v6, v4, v5

    const/16 v5, 0x29

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0x45

    aput v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0xd5

    aput v6, v4, v5

    const/16 v5, 0x2c

    const/16 v6, 0x5c

    aput v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0xfd

    aput v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xe1

    aput v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x13

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0x38

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xaf

    aput v6, v4, v5

    aput v9, v4, v11

    const/16 v5, 0xdf

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0xee

    aput v6, v4, v5

    const/16 v5, 0xc

    aput v5, v4, v10

    const/16 v5, 0x11

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0xdc

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0xd0

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x64

    aput v6, v4, v5

    const/16 v5, 0x1d

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xaa

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0xe6

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0xc0

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xd7

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0xeb

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0x96

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x9f

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x24

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0xdf

    aput v6, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0x26

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0xc8

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x84

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0x36

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0xe4

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0x92

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0xda

    aput v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0xea

    aput v6, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0x75

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0xcb

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x1d

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0xe8

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0x90

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0xee

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x16

    aput v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0x96

    aput v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0xc9

    aput v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0x75

    aput v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0x3e

    aput v6, v4, v5

    const/16 v5, 0x27

    const/16 v6, 0xcf

    aput v6, v4, v5

    const/16 v5, 0x28

    const/16 v6, 0xa4

    aput v6, v4, v5

    const/16 v5, 0x29

    const/16 v6, 0xd

    aput v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0x89

    aput v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0x2c

    const/16 v6, 0x7f

    aput v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0x43

    aput v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xf7

    aput v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x1c

    aput v6, v4, v5

    const/16 v5, 0x30

    const/16 v6, 0x9b

    aput v6, v4, v5

    const/16 v5, 0x31

    const/16 v6, 0x2b

    aput v6, v4, v5

    const/16 v5, 0x32

    const/16 v6, 0xcb

    aput v6, v4, v5

    const/16 v5, 0x33

    const/16 v6, 0x6b

    aput v6, v4, v5

    const/16 v5, 0x34

    const/16 v6, 0xe9

    aput v6, v4, v5

    const/16 v5, 0x35

    const/16 v6, 0x35

    aput v6, v4, v5

    const/16 v5, 0x36

    const/16 v6, 0x8f

    aput v6, v4, v5

    const/16 v5, 0x37

    const/16 v6, 0x2e

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0x3e

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xf2

    aput v6, v4, v5

    const/16 v5, 0x5d

    aput v5, v4, v11

    const/16 v5, 0xa9

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x32

    aput v6, v4, v5

    const/16 v5, 0x90

    aput v5, v4, v10

    const/16 v5, 0xd2

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x27

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x76

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0xca

    aput v6, v4, v5

    const/16 v5, 0xbc

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0xc9

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xbd

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x8f

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x6c

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0xc4

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x25

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xb9

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x70

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0x86

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0xe6

    aput v6, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0xf5

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0x3f

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0xc5

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0xbe

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0xfa

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0x6a

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0xb9

    aput v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0xdd

    aput v6, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0xaf

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0x40

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0x72

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0x47

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0xa1

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x2c

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x93

    aput v6, v4, v5

    const/16 v5, 0x23

    const/4 v6, 0x6

    aput v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0x1b

    aput v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0xda

    aput v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0x33

    aput v6, v4, v5

    const/16 v5, 0x27

    const/16 v6, 0x3f

    aput v6, v4, v5

    const/16 v5, 0x28

    const/16 v6, 0x57

    aput v6, v4, v5

    const/16 v5, 0x29

    const/16 v6, 0xa

    aput v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0x28

    aput v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0x82

    aput v6, v4, v5

    const/16 v5, 0x2c

    const/16 v6, 0xbc

    aput v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0x11

    aput v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xa3

    aput v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0x1f

    aput v6, v4, v5

    const/16 v5, 0x30

    const/16 v6, 0xb0

    aput v6, v4, v5

    const/16 v5, 0x31

    const/16 v6, 0xaa

    aput v6, v4, v5

    const/16 v5, 0x32

    aput v10, v4, v5

    const/16 v5, 0x33

    const/16 v6, 0x6b

    aput v6, v4, v5

    const/16 v5, 0x34

    const/16 v6, 0xe8

    aput v6, v4, v5

    const/16 v5, 0x35

    const/4 v6, 0x7

    aput v6, v4, v5

    const/16 v5, 0x36

    const/16 v6, 0x5e

    aput v6, v4, v5

    const/16 v5, 0x37

    const/16 v6, 0xa6

    aput v6, v4, v5

    const/16 v5, 0x38

    const/16 v6, 0xe0

    aput v6, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0x7c

    aput v6, v4, v5

    const/16 v5, 0x3a

    const/16 v6, 0x56

    aput v6, v4, v5

    const/16 v5, 0x3b

    const/16 v6, 0x2f

    aput v6, v4, v5

    const/16 v5, 0x3c

    const/16 v6, 0xb

    aput v6, v4, v5

    const/16 v5, 0x3d

    const/16 v6, 0xcc

    aput v6, v4, v5

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0x44

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xdc

    aput v6, v4, v5

    const/16 v5, 0xe4

    aput v5, v4, v11

    const/16 v5, 0xad

    aput v5, v4, v8

    const/4 v5, 0x3

    const/16 v6, 0x59

    aput v6, v4, v5

    const/16 v5, 0xfb

    aput v5, v4, v10

    const/16 v5, 0x95

    aput v5, v4, v7

    const/4 v5, 0x6

    const/16 v6, 0x9f

    aput v6, v4, v5

    const/4 v5, 0x7

    const/16 v6, 0x38

    aput v6, v4, v5

    const/16 v5, 0x8

    const/16 v6, 0x59

    aput v6, v4, v5

    const/16 v5, 0x21

    aput v5, v4, v9

    const/16 v5, 0xa

    const/16 v6, 0x93

    aput v6, v4, v5

    const/16 v5, 0xb

    const/16 v6, 0xf4

    aput v6, v4, v5

    const/16 v5, 0xc

    const/16 v6, 0x9a

    aput v6, v4, v5

    const/16 v5, 0xd

    const/16 v6, 0x24

    aput v6, v4, v5

    const/16 v5, 0xe

    const/16 v6, 0x49

    aput v6, v4, v5

    const/16 v5, 0xf

    const/16 v6, 0x7f

    aput v6, v4, v5

    const/16 v5, 0x10

    const/16 v6, 0xd5

    aput v6, v4, v5

    const/16 v5, 0x11

    const/16 v6, 0x88

    aput v6, v4, v5

    const/16 v5, 0x12

    const/16 v6, 0xf8

    aput v6, v4, v5

    const/16 v5, 0x13

    const/16 v6, 0xb4

    aput v6, v4, v5

    const/16 v5, 0x14

    const/16 v6, 0xea

    aput v6, v4, v5

    const/16 v5, 0x15

    const/16 v6, 0xc5

    aput v6, v4, v5

    const/16 v5, 0x16

    const/16 v6, 0x9e

    aput v6, v4, v5

    const/16 v5, 0x17

    const/16 v6, 0xb1

    aput v6, v4, v5

    const/16 v5, 0x18

    const/16 v6, 0x44

    aput v6, v4, v5

    const/16 v5, 0x19

    const/16 v6, 0x7a

    aput v6, v4, v5

    const/16 v5, 0x1a

    const/16 v6, 0x5d

    aput v6, v4, v5

    const/16 v5, 0x1b

    const/16 v6, 0xd5

    aput v6, v4, v5

    const/16 v5, 0x1c

    const/16 v6, 0xf

    aput v6, v4, v5

    const/16 v5, 0x1d

    const/16 v6, 0xa0

    aput v6, v4, v5

    const/16 v5, 0x1e

    const/16 v6, 0xe3

    aput v6, v4, v5

    const/16 v5, 0x1f

    const/16 v6, 0xec

    aput v6, v4, v5

    const/16 v5, 0x20

    const/16 v6, 0x42

    aput v6, v4, v5

    const/16 v5, 0x21

    const/16 v6, 0x8b

    aput v6, v4, v5

    const/16 v5, 0x22

    const/16 v6, 0x99

    aput v6, v4, v5

    const/16 v5, 0x23

    const/16 v6, 0xb9

    aput v6, v4, v5

    const/16 v5, 0x24

    const/16 v6, 0xca

    aput v6, v4, v5

    const/16 v5, 0x25

    const/16 v6, 0xa7

    aput v6, v4, v5

    const/16 v5, 0x26

    const/16 v6, 0xb3

    aput v6, v4, v5

    const/16 v5, 0x27

    const/16 v6, 0x19

    aput v6, v4, v5

    const/16 v5, 0x28

    const/16 v6, 0xdc

    aput v6, v4, v5

    const/16 v5, 0x29

    const/16 v6, 0xe8

    aput v6, v4, v5

    const/16 v5, 0x2a

    const/16 v6, 0x60

    aput v6, v4, v5

    const/16 v5, 0x2b

    const/16 v6, 0xd2

    aput v6, v4, v5

    const/16 v5, 0x2c

    const/16 v6, 0xe7

    aput v6, v4, v5

    const/16 v5, 0x2d

    const/16 v6, 0x88

    aput v6, v4, v5

    const/16 v5, 0x2e

    const/16 v6, 0xdf

    aput v6, v4, v5

    const/16 v5, 0x2f

    const/16 v6, 0xef

    aput v6, v4, v5

    const/16 v5, 0x30

    const/16 v6, 0xb5

    aput v6, v4, v5

    const/16 v5, 0x31

    const/16 v6, 0xf1

    aput v6, v4, v5

    const/16 v5, 0x32

    const/16 v6, 0x3b

    aput v6, v4, v5

    const/16 v5, 0x33

    const/16 v6, 0x34

    aput v6, v4, v5

    const/16 v5, 0x34

    const/16 v6, 0xac

    aput v6, v4, v5

    const/16 v5, 0x35

    const/16 v6, 0x19

    aput v6, v4, v5

    const/16 v5, 0x36

    const/16 v6, 0x31

    aput v6, v4, v5

    const/16 v5, 0x37

    const/16 v6, 0xe8

    aput v6, v4, v5

    const/16 v5, 0x38

    const/16 v6, 0xd3

    aput v6, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xbd

    aput v6, v4, v5

    const/16 v5, 0x3a

    const/16 v6, 0x40

    aput v6, v4, v5

    const/16 v5, 0x3b

    const/16 v6, 0x36

    aput v6, v4, v5

    const/16 v5, 0x3c

    const/16 v6, 0x6c

    aput v6, v4, v5

    const/16 v5, 0x3d

    const/16 v6, 0x99

    aput v6, v4, v5

    const/16 v5, 0x3e

    const/16 v6, 0x84

    aput v6, v4, v5

    const/16 v5, 0x3f

    const/16 v6, 0x3f

    aput v6, v4, v5

    const/16 v5, 0x40

    const/16 v6, 0x60

    aput v6, v4, v5

    const/16 v5, 0x41

    const/16 v6, 0x67

    aput v6, v4, v5

    const/16 v5, 0x42

    const/16 v6, 0x52

    aput v6, v4, v5

    const/16 v5, 0x43

    const/16 v6, 0xba

    aput v6, v4, v5

    aput-object v4, v2, v3

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    const/16 v2, 0x100

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    const/16 v2, 0xff

    new-array v2, v2, [I

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xff

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    aput v1, v2, v0

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aput v0, v2, v1

    shl-int/lit8 v1, v1, 0x1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    xor-int/lit16 v1, v1, 0x12d

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createECCBlock(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .locals 12

    const/4 v6, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    array-length v7, v7

    if-lt v2, v7, :cond_0

    :goto_1
    if-ltz v6, :cond_2

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTORS:[[I

    aget-object v5, v7, v6

    new-array v0, p3, [C

    const/4 v2, 0x0

    :goto_2
    if-lt v2, p3, :cond_3

    move v2, p1

    :goto_3
    add-int v7, p1, p2

    if-lt v2, v7, :cond_4

    new-array v1, p3, [C

    const/4 v2, 0x0

    :goto_4
    if-lt v2, p3, :cond_a

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_0
    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    aget v7, v7, v2

    if-eq v7, p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Illegal number of error correction codewords specified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    const/4 v7, 0x0

    aput-char v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, p3, -0x1

    aget-char v7, v0, v7

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    xor-int v4, v7, v8

    add-int/lit8 v3, p3, -0x1

    :goto_5
    if-gtz v3, :cond_6

    if-nez v4, :cond_9

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-char v8, v0, v7

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_8

    :cond_7
    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    int-to-char v7, v7

    aput-char v7, v0, v3

    :goto_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_8
    aget v7, v5, v3

    if-eqz v7, :cond_7

    add-int/lit8 v7, v3, -0x1

    aget-char v7, v0, v7

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v9, v9, v4

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v11, v5, v3

    aget v10, v10, v11

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    xor-int/2addr v7, v8

    int-to-char v7, v7

    int-to-char v7, v7

    aput-char v7, v0, v3

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    aget v7, v5, v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v9, v9, v4

    sget-object v10, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    const/4 v11, 0x0

    aget v11, v5, v11

    aget v10, v10, v11

    add-int/2addr v9, v10

    rem-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    int-to-char v8, v8

    int-to-char v8, v8

    aput-char v8, v0, v7

    goto :goto_6

    :cond_a
    sub-int v7, p3, v2

    add-int/lit8 v7, v7, -0x1

    aget-char v7, v0, v7

    int-to-char v7, v7

    aput-char v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4
.end method

.method public static encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v15

    if-ne v14, v15, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getInterleavedBlockCount()I

    move-result v2

    const/4 v14, 0x1

    if-eq v2, v14, :cond_1

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->capacity()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    new-array v4, v2, [I

    new-array v7, v2, [I

    new-array v12, v2, [I

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_4

    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "The number of codewords does not match the selected symbol"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorCodewords()I

    move-result v14

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataLengthForInterleavedBlock(I)I

    move-result v14

    aput v14, v4, v8

    add-int/lit8 v14, v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getErrorLengthForInterleavedBlock(I)I

    move-result v14

    aput v14, v7, v8

    const/4 v14, 0x0

    aput v14, v12, v8

    if-gtz v8, :cond_3

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v14, v8, -0x1

    aget v14, v12, v14

    aget v15, v4, v8

    add-int/2addr v14, v15

    aput v14, v12, v8

    goto :goto_3

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    aget v14, v4, v1

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v1

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    if-lt v3, v14, :cond_5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aget v15, v7, v1

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move v5, v1

    :goto_5
    aget v14, v7, v1

    mul-int/2addr v14, v2

    if-lt v5, v14, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v2

    goto :goto_4

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v14

    add-int/2addr v14, v5

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/2addr v5, v2

    move v9, v10

    goto :goto_5
.end method
