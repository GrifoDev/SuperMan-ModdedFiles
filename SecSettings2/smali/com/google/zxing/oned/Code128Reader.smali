.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field static final CODE_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v4, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v8

    aput v5, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v6, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v8

    aput v5, v1, v4

    aput v4, v1, v5

    aput v6, v1, v6

    aput v5, v1, v7

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v6, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v5, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v7, v2, v4

    aput v5, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v7, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v5, v2, v4

    aput v7, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v5, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v5, v2, v5

    aput v4, v2, v6

    aput v5, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v6, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v6, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v6, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v4, v2, v8

    aput v4, v2, v4

    aput v7, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v6, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v7, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v7, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v4, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v7, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v7, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v4, v2, v4

    aput v4, v2, v5

    aput v5, v2, v6

    aput v6, v2, v7

    const/4 v3, 0x5

    aput v5, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const/4 v2, 0x7

    new-array v2, v2, [I

    aput v5, v2, v8

    aput v6, v2, v4

    aput v6, v2, v5

    aput v4, v2, v6

    aput v4, v2, v7

    const/4 v3, 0x5

    aput v4, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method
