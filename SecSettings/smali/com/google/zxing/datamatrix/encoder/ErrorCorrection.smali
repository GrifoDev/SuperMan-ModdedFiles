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
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/16 v8, 0x9

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/16 v2, 0x10

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v6, v2, v3

    const/4 v3, 0x7

    aput v3, v2, v10

    const/16 v3, 0xa

    aput v3, v2, v7

    const/16 v3, 0xb

    const/4 v4, 0x3

    aput v3, v2, v4

    const/16 v3, 0xc

    aput v3, v2, v9

    const/16 v3, 0xe

    aput v3, v2, v6

    const/16 v3, 0x12

    const/4 v4, 0x6

    aput v3, v2, v4

    const/16 v3, 0x14

    const/4 v4, 0x7

    aput v3, v2, v4

    const/16 v3, 0x18

    const/16 v4, 0x8

    aput v3, v2, v4

    const/16 v3, 0x1c

    aput v3, v2, v8

    const/16 v3, 0x24

    const/16 v4, 0xa

    aput v3, v2, v4

    const/16 v3, 0x2a

    const/16 v4, 0xb

    aput v3, v2, v4

    const/16 v3, 0x30

    const/16 v4, 0xc

    aput v3, v2, v4

    const/16 v3, 0x38

    const/16 v4, 0xd

    aput v3, v2, v4

    const/16 v3, 0x3e

    const/16 v4, 0xe

    aput v3, v2, v4

    const/16 v3, 0x44

    const/16 v4, 0xf

    aput v3, v2, v4

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->FACTOR_SETS:[I

    const/16 v2, 0x10

    new-array v2, v2, [[I

    new-array v3, v6, [I

    const/16 v4, 0xe4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x30

    aput v4, v3, v10

    const/16 v4, 0xf

    aput v4, v3, v7

    const/16 v4, 0x6f

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x3e

    aput v4, v3, v9

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0x17

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x44

    aput v4, v3, v10

    const/16 v4, 0x90

    aput v4, v3, v7

    const/16 v4, 0x86

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xf0

    aput v4, v3, v9

    const/16 v4, 0x5c

    aput v4, v3, v6

    const/16 v4, 0xfe

    const/4 v5, 0x6

    aput v4, v3, v5

    aput-object v3, v2, v10

    const/16 v3, 0xa

    new-array v3, v3, [I

    const/16 v4, 0x1c

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x18

    aput v4, v3, v10

    const/16 v4, 0xb9

    aput v4, v3, v7

    const/16 v4, 0xa6

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xdf

    aput v4, v3, v9

    const/16 v4, 0xf8

    aput v4, v3, v6

    const/16 v4, 0x74

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xff

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x6e

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x3d

    aput v4, v3, v8

    aput-object v3, v2, v7

    const/16 v3, 0xb

    new-array v3, v3, [I

    const/16 v4, 0xaf

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x8a

    aput v4, v3, v10

    const/16 v4, 0xcd

    aput v4, v3, v7

    const/16 v4, 0xc

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xc2

    aput v4, v3, v9

    const/16 v4, 0xa8

    aput v4, v3, v6

    const/16 v4, 0x27

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xf5

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x3c

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x61

    aput v4, v3, v8

    const/16 v4, 0x78

    const/16 v5, 0xa

    aput v4, v3, v5

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/16 v3, 0xc

    new-array v3, v3, [I

    const/16 v4, 0x29

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x99

    aput v4, v3, v10

    const/16 v4, 0x9e

    aput v4, v3, v7

    const/16 v4, 0x5b

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x3d

    aput v4, v3, v9

    const/16 v4, 0x2a

    aput v4, v3, v6

    const/16 v4, 0x8e

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xd5

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x61

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0xb2

    aput v4, v3, v8

    const/16 v4, 0x64

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xf2

    const/16 v5, 0xb

    aput v4, v3, v5

    aput-object v3, v2, v9

    const/16 v3, 0xe

    new-array v3, v3, [I

    const/16 v4, 0x9c

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x61

    aput v4, v3, v10

    const/16 v4, 0xc0

    aput v4, v3, v7

    const/16 v4, 0xfc

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x5f

    aput v4, v3, v9

    aput v8, v3, v6

    const/16 v4, 0x9d

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x77

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x8a

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x2d

    aput v4, v3, v8

    const/16 v4, 0x12

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xba

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x53

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0xb9

    const/16 v5, 0xd

    aput v4, v3, v5

    aput-object v3, v2, v6

    const/16 v3, 0x12

    new-array v3, v3, [I

    const/16 v4, 0x53

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xc3

    aput v4, v3, v10

    const/16 v4, 0x64

    aput v4, v3, v7

    const/16 v4, 0x27

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xbc

    aput v4, v3, v9

    const/16 v4, 0x4b

    aput v4, v3, v6

    const/16 v4, 0x42

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x3d

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0xf1

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0xd5

    aput v4, v3, v8

    const/16 v4, 0x6d

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0x81

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x5e

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0xfe

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xe1

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x30

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0x5a

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0xbc

    const/16 v5, 0x11

    aput v4, v3, v5

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const/16 v3, 0x14

    new-array v3, v3, [I

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xc3

    aput v4, v3, v10

    const/16 v4, 0xf4

    aput v4, v3, v7

    const/4 v4, 0x3

    aput v8, v3, v4

    const/16 v4, 0xe9

    aput v4, v3, v9

    const/16 v4, 0x47

    aput v4, v3, v6

    const/16 v4, 0xa8

    const/4 v5, 0x6

    aput v4, v3, v5

    const/4 v4, 0x7

    aput v7, v3, v4

    const/16 v4, 0xbc

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0xa0

    aput v4, v3, v8

    const/16 v4, 0x99

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0x91

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0xfd

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x4f

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0x6c

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x52

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0x1b

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0xae

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0xba

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xac

    const/16 v5, 0x13

    aput v4, v3, v5

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const/16 v3, 0x18

    new-array v3, v3, [I

    const/16 v4, 0x34

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xbe

    aput v4, v3, v10

    const/16 v4, 0x58

    aput v4, v3, v7

    const/16 v4, 0xcd

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x6d

    aput v4, v3, v9

    const/16 v4, 0x27

    aput v4, v3, v6

    const/16 v4, 0xb0

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x15

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x9b

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0xc5

    aput v4, v3, v8

    const/16 v4, 0xfb

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xdf

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x9b

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x15

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xe

    aput v6, v3, v4

    const/16 v4, 0xac

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xfe

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x7c

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0xc

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xb5

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0xb8

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x60

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x32

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0xc1

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v3, 0x1c

    new-array v3, v3, [I

    const/16 v4, 0xd3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xe7

    aput v4, v3, v10

    const/16 v4, 0x2b

    aput v4, v3, v7

    const/16 v4, 0x61

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x47

    aput v4, v3, v9

    const/16 v4, 0x60

    aput v4, v3, v6

    const/16 v4, 0x67

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xae

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x25

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x97

    aput v4, v3, v8

    const/16 v4, 0xaa

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0x35

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x4b

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x22

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xf9

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x79

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0x11

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x8a

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x6e

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xd5

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0x8d

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x88

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x78

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0x97

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0xe9

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0xa8

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0x5d

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0xff

    const/16 v5, 0x1b

    aput v4, v3, v5

    aput-object v3, v2, v8

    const/16 v3, 0x24

    new-array v3, v3, [I

    const/16 v4, 0xf5

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x7f

    aput v4, v3, v10

    const/16 v4, 0xf2

    aput v4, v3, v7

    const/16 v4, 0xda

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x82

    aput v4, v3, v9

    const/16 v4, 0xfa

    aput v4, v3, v6

    const/16 v4, 0xa2

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xb5

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x66

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x78

    aput v4, v3, v8

    const/16 v4, 0x54

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xb3

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0xdc

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0xfb

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0x50

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0xb6

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xe5

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x12

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x12

    aput v7, v3, v4

    const/16 v4, 0x13

    aput v9, v3, v4

    const/16 v4, 0x44

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x21

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x65

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0x89

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0x5f

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0x77

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0x73

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0x2c

    const/16 v5, 0x1b

    aput v4, v3, v5

    const/16 v4, 0xaf

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0xb8

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0x3b

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0x19

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0xe1

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0x62

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x51

    const/16 v5, 0x22

    aput v4, v3, v5

    const/16 v4, 0x70

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const/16 v3, 0x2a

    new-array v3, v3, [I

    const/16 v4, 0x4d

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xc1

    aput v4, v3, v10

    const/16 v4, 0x89

    aput v4, v3, v7

    const/16 v4, 0x1f

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x13

    aput v4, v3, v9

    const/16 v4, 0x26

    aput v4, v3, v6

    const/16 v4, 0x16

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x99

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0xf7

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x69

    aput v4, v3, v8

    const/16 v4, 0x7a

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xb

    aput v7, v3, v4

    const/16 v4, 0xf5

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x85

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xf2

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x8

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xaf

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x5f

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x64

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0x13

    aput v8, v3, v4

    const/16 v4, 0xa7

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x69

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0xd6

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0x6f

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0x39

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0x79

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0x15

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0x1b

    aput v10, v3, v4

    const/16 v4, 0xfd

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0x39

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0x36

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0x65

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0xf8

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0xca

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x45

    const/16 v5, 0x22

    aput v4, v3, v5

    const/16 v4, 0x32

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0x96

    const/16 v5, 0x24

    aput v4, v3, v5

    const/16 v4, 0xb1

    const/16 v5, 0x25

    aput v4, v3, v5

    const/16 v4, 0xe2

    const/16 v5, 0x26

    aput v4, v3, v5

    const/16 v4, 0x27

    aput v6, v3, v4

    const/16 v4, 0x28

    aput v8, v3, v4

    const/16 v4, 0x29

    aput v6, v3, v4

    const/16 v4, 0xb

    aput-object v3, v2, v4

    const/16 v3, 0x30

    new-array v3, v3, [I

    const/16 v4, 0xf5

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x84

    aput v4, v3, v10

    const/16 v4, 0xac

    aput v4, v3, v7

    const/16 v4, 0xdf

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x60

    aput v4, v3, v9

    const/16 v4, 0x20

    aput v4, v3, v6

    const/16 v4, 0x75

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x16

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0xee

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x85

    aput v4, v3, v8

    const/16 v4, 0xee

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xe7

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0xcd

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0xbc

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xed

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x57

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xbf

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x6a

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x10

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0x93

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0x76

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x17

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x25

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0x5a

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0xaa

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0xcd

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0x83

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0x58

    const/16 v5, 0x1b

    aput v4, v3, v5

    const/16 v4, 0x78

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0x64

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0x42

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0x8a

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0xba

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0xf0

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x52

    const/16 v5, 0x22

    aput v4, v3, v5

    const/16 v4, 0x2c

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0xb0

    const/16 v5, 0x24

    aput v4, v3, v5

    const/16 v4, 0x57

    const/16 v5, 0x25

    aput v4, v3, v5

    const/16 v4, 0xbb

    const/16 v5, 0x26

    aput v4, v3, v5

    const/16 v4, 0x93

    const/16 v5, 0x27

    aput v4, v3, v5

    const/16 v4, 0xa0

    const/16 v5, 0x28

    aput v4, v3, v5

    const/16 v4, 0xaf

    const/16 v5, 0x29

    aput v4, v3, v5

    const/16 v4, 0x45

    const/16 v5, 0x2a

    aput v4, v3, v5

    const/16 v4, 0xd5

    const/16 v5, 0x2b

    aput v4, v3, v5

    const/16 v4, 0x5c

    const/16 v5, 0x2c

    aput v4, v3, v5

    const/16 v4, 0xfd

    const/16 v5, 0x2d

    aput v4, v3, v5

    const/16 v4, 0xe1

    const/16 v5, 0x2e

    aput v4, v3, v5

    const/16 v4, 0x13

    const/16 v5, 0x2f

    aput v4, v3, v5

    const/16 v4, 0xc

    aput-object v3, v2, v4

    const/16 v3, 0x38

    new-array v3, v3, [I

    const/16 v4, 0xaf

    const/4 v5, 0x0

    aput v4, v3, v5

    aput v8, v3, v10

    const/16 v4, 0xdf

    aput v4, v3, v7

    const/16 v4, 0xee

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xc

    aput v4, v3, v9

    const/16 v4, 0x11

    aput v4, v3, v6

    const/16 v4, 0xdc

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0xd0

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x64

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x1d

    aput v4, v3, v8

    const/16 v4, 0xaf

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xaa

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0xe6

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0xc0

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xd7

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0xeb

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0x96

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x9f

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x24

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xdf

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0x26

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0xc8

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x84

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0x36

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0xe4

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0x92

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0xda

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0xea

    const/16 v5, 0x1b

    aput v4, v3, v5

    const/16 v4, 0x75

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0xcb

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0x1d

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0xe8

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0x90

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0xee

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x16

    const/16 v5, 0x22

    aput v4, v3, v5

    const/16 v4, 0x96

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0xc9

    const/16 v5, 0x24

    aput v4, v3, v5

    const/16 v4, 0x75

    const/16 v5, 0x25

    aput v4, v3, v5

    const/16 v4, 0x3e

    const/16 v5, 0x26

    aput v4, v3, v5

    const/16 v4, 0xcf

    const/16 v5, 0x27

    aput v4, v3, v5

    const/16 v4, 0xa4

    const/16 v5, 0x28

    aput v4, v3, v5

    const/16 v4, 0xd

    const/16 v5, 0x29

    aput v4, v3, v5

    const/16 v4, 0x89

    const/16 v5, 0x2a

    aput v4, v3, v5

    const/16 v4, 0xf5

    const/16 v5, 0x2b

    aput v4, v3, v5

    const/16 v4, 0x7f

    const/16 v5, 0x2c

    aput v4, v3, v5

    const/16 v4, 0x43

    const/16 v5, 0x2d

    aput v4, v3, v5

    const/16 v4, 0xf7

    const/16 v5, 0x2e

    aput v4, v3, v5

    const/16 v4, 0x1c

    const/16 v5, 0x2f

    aput v4, v3, v5

    const/16 v4, 0x9b

    const/16 v5, 0x30

    aput v4, v3, v5

    const/16 v4, 0x2b

    const/16 v5, 0x31

    aput v4, v3, v5

    const/16 v4, 0xcb

    const/16 v5, 0x32

    aput v4, v3, v5

    const/16 v4, 0x6b

    const/16 v5, 0x33

    aput v4, v3, v5

    const/16 v4, 0xe9

    const/16 v5, 0x34

    aput v4, v3, v5

    const/16 v4, 0x35

    const/16 v5, 0x35

    aput v4, v3, v5

    const/16 v4, 0x8f

    const/16 v5, 0x36

    aput v4, v3, v5

    const/16 v4, 0x2e

    const/16 v5, 0x37

    aput v4, v3, v5

    const/16 v4, 0xd

    aput-object v3, v2, v4

    const/16 v3, 0x3e

    new-array v3, v3, [I

    const/16 v4, 0xf2

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x5d

    aput v4, v3, v10

    const/16 v4, 0xa9

    aput v4, v3, v7

    const/16 v4, 0x32

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0x90

    aput v4, v3, v9

    const/16 v4, 0xd2

    aput v4, v3, v6

    const/16 v4, 0x27

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x76

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0xca

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0xbc

    aput v4, v3, v8

    const/16 v4, 0xc9

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xbd

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x8f

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x6c

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0xc4

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x25

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xb9

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x70

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0x86

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xe6

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0xf5

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0x3f

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0xc5

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0xbe

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0xfa

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0x6a

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0xb9

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0xdd

    const/16 v5, 0x1b

    aput v4, v3, v5

    const/16 v4, 0xaf

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0x40

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0x72

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0x47

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0xa1

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0x2c

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x93

    const/16 v5, 0x22

    aput v4, v3, v5

    const/4 v4, 0x6

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0x1b

    const/16 v5, 0x24

    aput v4, v3, v5

    const/16 v4, 0xda

    const/16 v5, 0x25

    aput v4, v3, v5

    const/16 v4, 0x33

    const/16 v5, 0x26

    aput v4, v3, v5

    const/16 v4, 0x3f

    const/16 v5, 0x27

    aput v4, v3, v5

    const/16 v4, 0x57

    const/16 v5, 0x28

    aput v4, v3, v5

    const/16 v4, 0xa

    const/16 v5, 0x29

    aput v4, v3, v5

    const/16 v4, 0x28

    const/16 v5, 0x2a

    aput v4, v3, v5

    const/16 v4, 0x82

    const/16 v5, 0x2b

    aput v4, v3, v5

    const/16 v4, 0xbc

    const/16 v5, 0x2c

    aput v4, v3, v5

    const/16 v4, 0x11

    const/16 v5, 0x2d

    aput v4, v3, v5

    const/16 v4, 0xa3

    const/16 v5, 0x2e

    aput v4, v3, v5

    const/16 v4, 0x1f

    const/16 v5, 0x2f

    aput v4, v3, v5

    const/16 v4, 0xb0

    const/16 v5, 0x30

    aput v4, v3, v5

    const/16 v4, 0xaa

    const/16 v5, 0x31

    aput v4, v3, v5

    const/16 v4, 0x32

    aput v9, v3, v4

    const/16 v4, 0x6b

    const/16 v5, 0x33

    aput v4, v3, v5

    const/16 v4, 0xe8

    const/16 v5, 0x34

    aput v4, v3, v5

    const/4 v4, 0x7

    const/16 v5, 0x35

    aput v4, v3, v5

    const/16 v4, 0x5e

    const/16 v5, 0x36

    aput v4, v3, v5

    const/16 v4, 0xa6

    const/16 v5, 0x37

    aput v4, v3, v5

    const/16 v4, 0xe0

    const/16 v5, 0x38

    aput v4, v3, v5

    const/16 v4, 0x7c

    const/16 v5, 0x39

    aput v4, v3, v5

    const/16 v4, 0x56

    const/16 v5, 0x3a

    aput v4, v3, v5

    const/16 v4, 0x2f

    const/16 v5, 0x3b

    aput v4, v3, v5

    const/16 v4, 0xb

    const/16 v5, 0x3c

    aput v4, v3, v5

    const/16 v4, 0xcc

    const/16 v5, 0x3d

    aput v4, v3, v5

    const/16 v4, 0xe

    aput-object v3, v2, v4

    const/16 v3, 0x44

    new-array v3, v3, [I

    const/16 v4, 0xdc

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0xe4

    aput v4, v3, v10

    const/16 v4, 0xad

    aput v4, v3, v7

    const/16 v4, 0x59

    const/4 v5, 0x3

    aput v4, v3, v5

    const/16 v4, 0xfb

    aput v4, v3, v9

    const/16 v4, 0x95

    aput v4, v3, v6

    const/16 v4, 0x9f

    const/4 v5, 0x6

    aput v4, v3, v5

    const/16 v4, 0x38

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v4, 0x59

    const/16 v5, 0x8

    aput v4, v3, v5

    const/16 v4, 0x21

    aput v4, v3, v8

    const/16 v4, 0x93

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v4, 0xf4

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v4, 0x9a

    const/16 v5, 0xc

    aput v4, v3, v5

    const/16 v4, 0x24

    const/16 v5, 0xd

    aput v4, v3, v5

    const/16 v4, 0x49

    const/16 v5, 0xe

    aput v4, v3, v5

    const/16 v4, 0x7f

    const/16 v5, 0xf

    aput v4, v3, v5

    const/16 v4, 0xd5

    const/16 v5, 0x10

    aput v4, v3, v5

    const/16 v4, 0x88

    const/16 v5, 0x11

    aput v4, v3, v5

    const/16 v4, 0xf8

    const/16 v5, 0x12

    aput v4, v3, v5

    const/16 v4, 0xb4

    const/16 v5, 0x13

    aput v4, v3, v5

    const/16 v4, 0xea

    const/16 v5, 0x14

    aput v4, v3, v5

    const/16 v4, 0xc5

    const/16 v5, 0x15

    aput v4, v3, v5

    const/16 v4, 0x9e

    const/16 v5, 0x16

    aput v4, v3, v5

    const/16 v4, 0xb1

    const/16 v5, 0x17

    aput v4, v3, v5

    const/16 v4, 0x44

    const/16 v5, 0x18

    aput v4, v3, v5

    const/16 v4, 0x7a

    const/16 v5, 0x19

    aput v4, v3, v5

    const/16 v4, 0x5d

    const/16 v5, 0x1a

    aput v4, v3, v5

    const/16 v4, 0xd5

    const/16 v5, 0x1b

    aput v4, v3, v5

    const/16 v4, 0xf

    const/16 v5, 0x1c

    aput v4, v3, v5

    const/16 v4, 0xa0

    const/16 v5, 0x1d

    aput v4, v3, v5

    const/16 v4, 0xe3

    const/16 v5, 0x1e

    aput v4, v3, v5

    const/16 v4, 0xec

    const/16 v5, 0x1f

    aput v4, v3, v5

    const/16 v4, 0x42

    const/16 v5, 0x20

    aput v4, v3, v5

    const/16 v4, 0x8b

    const/16 v5, 0x21

    aput v4, v3, v5

    const/16 v4, 0x99

    const/16 v5, 0x22

    aput v4, v3, v5

    const/16 v4, 0xb9

    const/16 v5, 0x23

    aput v4, v3, v5

    const/16 v4, 0xca

    const/16 v5, 0x24

    aput v4, v3, v5

    const/16 v4, 0xa7

    const/16 v5, 0x25

    aput v4, v3, v5

    const/16 v4, 0xb3

    const/16 v5, 0x26

    aput v4, v3, v5

    const/16 v4, 0x19

    const/16 v5, 0x27

    aput v4, v3, v5

    const/16 v4, 0xdc

    const/16 v5, 0x28

    aput v4, v3, v5

    const/16 v4, 0xe8

    const/16 v5, 0x29

    aput v4, v3, v5

    const/16 v4, 0x60

    const/16 v5, 0x2a

    aput v4, v3, v5

    const/16 v4, 0xd2

    const/16 v5, 0x2b

    aput v4, v3, v5

    const/16 v4, 0xe7

    const/16 v5, 0x2c

    aput v4, v3, v5

    const/16 v4, 0x88

    const/16 v5, 0x2d

    aput v4, v3, v5

    const/16 v4, 0xdf

    const/16 v5, 0x2e

    aput v4, v3, v5

    const/16 v4, 0xef

    const/16 v5, 0x2f

    aput v4, v3, v5

    const/16 v4, 0xb5

    const/16 v5, 0x30

    aput v4, v3, v5

    const/16 v4, 0xf1

    const/16 v5, 0x31

    aput v4, v3, v5

    const/16 v4, 0x3b

    const/16 v5, 0x32

    aput v4, v3, v5

    const/16 v4, 0x34

    const/16 v5, 0x33

    aput v4, v3, v5

    const/16 v4, 0xac

    const/16 v5, 0x34

    aput v4, v3, v5

    const/16 v4, 0x19

    const/16 v5, 0x35

    aput v4, v3, v5

    const/16 v4, 0x31

    const/16 v5, 0x36

    aput v4, v3, v5

    const/16 v4, 0xe8

    const/16 v5, 0x37

    aput v4, v3, v5

    const/16 v4, 0xd3

    const/16 v5, 0x38

    aput v4, v3, v5

    const/16 v4, 0xbd

    const/16 v5, 0x39

    aput v4, v3, v5

    const/16 v4, 0x40

    const/16 v5, 0x3a

    aput v4, v3, v5

    const/16 v4, 0x36

    const/16 v5, 0x3b

    aput v4, v3, v5

    const/16 v4, 0x6c

    const/16 v5, 0x3c

    aput v4, v3, v5

    const/16 v4, 0x99

    const/16 v5, 0x3d

    aput v4, v3, v5

    const/16 v4, 0x84

    const/16 v5, 0x3e

    aput v4, v3, v5

    const/16 v4, 0x3f

    const/16 v5, 0x3f

    aput v4, v3, v5

    const/16 v4, 0x60

    const/16 v5, 0x40

    aput v4, v3, v5

    const/16 v4, 0x67

    const/16 v5, 0x41

    aput v4, v3, v5

    const/16 v4, 0x52

    const/16 v5, 0x42

    aput v4, v3, v5

    const/16 v4, 0xba

    const/16 v5, 0x43

    aput v4, v3, v5

    const/16 v4, 0xf

    aput-object v3, v2, v4

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

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->createECCBlock(Ljava/lang/CharSequence;III)Ljava/lang/String;

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

    aput-char v7, v0, v8

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

    sget-object v7, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->ALOG:[I

    sget-object v8, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    aget v8, v8, v4

    sget-object v9, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->LOG:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    aget v9, v9, v10

    add-int/2addr v8, v9

    rem-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    int-to-char v7, v7

    int-to-char v7, v7

    const/4 v8, 0x0

    aput-char v7, v0, v8

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
