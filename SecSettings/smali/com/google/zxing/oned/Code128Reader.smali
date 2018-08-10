.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field static final CODE_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v5, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v5, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v5, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v6, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v6, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v6, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v6, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v6, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v6, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v4, v1, v4

    aput v6, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v6, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v6, v1, v3

    aput v4, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v6, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v6, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v4, v1, v3

    aput v6, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v4, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v4, v1, v4

    aput v3, v1, v5

    aput v4, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v5, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v5, v1, v2

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v5, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v3, v1, v7

    aput v3, v1, v3

    aput v6, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v5, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v6, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v6, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v3, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v6, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v6, v1, v2

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v3, v1, v3

    aput v3, v1, v4

    aput v4, v1, v5

    aput v5, v1, v6

    const/4 v2, 0x5

    aput v4, v1, v2

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const/4 v1, 0x7

    new-array v1, v1, [I

    aput v4, v1, v7

    aput v5, v1, v3

    aput v5, v1, v4

    aput v3, v1, v5

    aput v3, v1, v6

    const/4 v2, 0x5

    aput v3, v1, v2

    const/4 v2, 0x6

    aput v4, v1, v2

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method
