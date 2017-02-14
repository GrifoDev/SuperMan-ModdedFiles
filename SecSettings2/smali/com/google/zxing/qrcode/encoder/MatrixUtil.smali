.class final Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final POSITION_ADJUSTMENT_PATTERN:[[I

.field private static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field private static final POSITION_DETECTION_PATTERN:[[I

.field private static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v7, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    aput v7, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v7, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v7, v2, v9

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v7, v2, v3

    const/4 v3, 0x5

    aput v7, v2, v3

    aput v5, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    const/4 v2, 0x5

    aput v5, v1, v2

    aput v5, v1, v8

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v5, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v7, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v7, v1, v5

    aput v5, v1, v9

    const/4 v2, 0x3

    aput v7, v1, v2

    const/4 v2, 0x4

    aput v5, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v7, v2, v5

    aput v7, v2, v9

    const/4 v3, 0x3

    aput v7, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v5, v2, v7

    aput v5, v2, v5

    aput v5, v2, v9

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v0, 0x28

    new-array v0, v0, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v6, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x12

    aput v2, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x16

    aput v2, v1, v5

    aput v6, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v9

    const/4 v1, 0x3

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    aput v6, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v8, v1, v7

    const/16 v2, 0x16

    aput v2, v1, v5

    const/16 v2, 0x26

    aput v2, v1, v9

    const/4 v2, 0x3

    aput v6, v1, v2

    const/4 v2, 0x4

    aput v6, v1, v2

    const/4 v2, 0x5

    aput v6, v1, v2

    aput v6, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x7

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x18

    aput v3, v2, v5

    const/16 v3, 0x2a

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x2e

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    aput v6, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x2e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x42

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x30

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x46

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x38

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v6, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x48

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x5e

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x62

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x50

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6a

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x54

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x76

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x62

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7a

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7e

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x34

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x68

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x82

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x38

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6c

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x86

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3c

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x70

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8a

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8e

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x22

    aput v3, v2, v5

    const/16 v3, 0x3e

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x5a

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x76

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x92

    aput v4, v2, v3

    aput v6, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4e

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x7e

    aput v4, v2, v3

    const/16 v3, 0x96

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x18

    aput v3, v2, v5

    const/16 v3, 0x32

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x4c

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x66

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x80

    aput v4, v2, v3

    const/16 v3, 0x9a

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1c

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x50

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6a

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x84

    aput v4, v2, v3

    const/16 v3, 0x9e

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x20

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x54

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x88

    aput v4, v2, v3

    const/16 v3, 0xa2

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1a

    aput v3, v2, v5

    const/16 v3, 0x36

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x52

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x6e

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8a

    aput v4, v2, v3

    const/16 v3, 0xa6

    aput v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v8, v2, v7

    const/16 v3, 0x1e

    aput v3, v2, v5

    const/16 v3, 0x3a

    aput v3, v2, v9

    const/4 v3, 0x3

    const/16 v4, 0x56

    aput v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x72

    aput v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x8e

    aput v4, v2, v3

    const/16 v3, 0xaa

    aput v3, v2, v8

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    const/16 v0, 0xf

    new-array v0, v0, [[I

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v7, v1, v5

    aput-object v1, v0, v7

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v5, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    aput v9, v1, v5

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x3

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x4

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/4 v3, 0x5

    aput v3, v2, v5

    aput-object v2, v0, v1

    new-array v1, v9, [I

    const/16 v2, 0x8

    aput v2, v1, v7

    const/4 v2, 0x7

    aput v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-array v2, v9, [I

    const/16 v3, 0x8

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [I

    const/4 v3, 0x7

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v9, [I

    const/4 v3, 0x5

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v9, [I

    const/4 v3, 0x4

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v9, [I

    const/4 v3, 0x3

    aput v3, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v9, [I

    aput v9, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v9, [I

    aput v5, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v9, [I

    aput v7, v2, v7

    const/16 v3, 0x8

    aput v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p2, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p3, p4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method static calculateBCHCode(II)I
    .locals 2

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    :goto_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    if-ge v1, v0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->findMSBSet(I)I

    move-result v1

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0
.end method

.method static clearMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->clear(B)V

    return-void
.end method

.method static embedBasicPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p0, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedDarkDotAtLeftBottomCorner(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0
.end method

.method static embedDataBits(Lcom/google/zxing/common/BitArray;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    :goto_0
    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ne v1, v7, :cond_a

    return-void

    :cond_0
    const/4 v8, 0x6

    if-eq v4, v8, :cond_2

    :goto_1
    if-gez v6, :cond_3

    :cond_1
    neg-int v2, v2

    add-int/2addr v6, v2

    add-int/lit8 v4, v4, -0x2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_1

    const/4 v3, 0x0

    :goto_2
    const/4 v8, 0x2

    if-lt v3, v8, :cond_4

    add-int/2addr v6, v2

    goto :goto_1

    :cond_4
    sub-int v5, v4, v3

    invoke-virtual {p2, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    if-lt v1, v8, :cond_7

    const/4 v0, 0x0

    :goto_3
    const/4 v8, -0x1

    if-ne p1, v8, :cond_8

    :cond_5
    :goto_4
    invoke-virtual {p2, v5, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-static {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->getDataMaskBit(III)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_9

    move v0, v7

    :goto_5
    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    new-instance v7, Lcom/google/zxing/WriterException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not all bits consumed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v1, p0, v0

    invoke-virtual {p2, v1, p1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1
.end method

.method private static embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v2, p0, v0

    add-int v3, p1, v1

    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    invoke-virtual {p2, v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static embedPositionDetectionPatternsAndSeparators(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v2, 0x0

    sget-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v1, v1, v2

    array-length v0, v1

    invoke-static {v2, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v2, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v1, v3, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v2, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v3, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v2, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x7

    invoke-static {v3, v1, p0}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-void
.end method

.method private static embedTimingPatterns(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v3, 0x6

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v0, v2, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    goto :goto_2
.end method

.method static embedTypeInfo(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v9, 0x8

    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-lt v1, v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x0

    aget v3, v7, v8

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x1

    aget v5, v7, v8

    invoke-virtual {p2, v3, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    if-lt v1, v9, :cond_1

    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x7

    add-int/lit8 v8, v1, -0x8

    add-int v6, v7, v8

    invoke-virtual {p2, v9, v6, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v4, v7, -0x1

    invoke-virtual {p2, v4, v9, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    goto :goto_1
.end method

.method private static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int v1, p1, v0

    invoke-virtual {p2, p0, v1, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1}, Lcom/google/zxing/WriterException;-><init>()V

    throw v1
.end method

.method static findMSBSet(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-nez p0, :cond_0

    return v0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static makeTypeInfoBits(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;ILcom/google/zxing/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v4, 0xf

    invoke-static {p1}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->getBits()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int v2, v3, p1

    const/4 v3, 0x5

    invoke-virtual {p2, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v3, 0x537

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v3, 0xa

    invoke-virtual {p2, v0, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v1, Lcom/google/zxing/common/BitArray;

    invoke-direct {v1}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v3, 0x5412

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p2, v1}, Lcom/google/zxing/common/BitArray;->xor(Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    if-ne v3, v4, :cond_1

    return-void

    :cond_0
    new-instance v3, Lcom/google/zxing/WriterException;

    const-string/jumbo v4, "Invalid mask pattern"

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Lcom/google/zxing/WriterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "should not happen but we got: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v1

    const/16 v2, 0x1f25

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should not happen but we got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static maybeEmbedPositionAdjustmentPatterns(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 10

    const/4 v9, -0x1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v0, v7, v2

    sget-object v7, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v7, v7, v2

    array-length v4, v7

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget v6, v0, v1

    aget v5, v0, v3

    if-ne v5, v9, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v6, v9, :cond_3

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v5, -0x2

    add-int/lit8 v8, v6, -0x2

    invoke-static {v7, v8, p1}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionAdjustmentPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    goto :goto_2
.end method

.method static maybeEmbedVersionInfo(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionNumber()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_0

    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-static {p0, v4}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->makeVersionInfoBits(Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/common/BitArray;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x6

    if-lt v2, v5, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x3

    if-lt v3, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0xb

    add-int/2addr v5, v3

    invoke-virtual {p1, v5, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
