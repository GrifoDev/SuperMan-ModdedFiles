.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x7c94

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x85bc

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x9a99

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xa4d3

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0xbbf6

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xc762

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xd847

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xe60d

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0xf928

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x10b78

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1145d

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x12a17

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x13532

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x149a6

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x15683

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x168c9

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x177ec

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x18ec4

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x191e1

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x1afab

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x1b08e

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x1cc1a

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1d33f

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x1ed75

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x1f250

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x209d5

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x216f0

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x228ba

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2379f

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x24b0b

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x2542e

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x26a64

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x27541

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x28c69

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    aget-object v7, p3, v8

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v2

    aget-object v7, p3, v8

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    iput v6, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void

    :cond_0
    aget-object v1, v0, v4

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v8

    add-int/2addr v8, v2

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 14

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v8, 0x7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x11

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x12

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x22

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x1c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x16

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xf

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x37

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x50

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x20

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x16

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x26

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x4e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x18

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x2a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x61

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x27

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x12

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x2e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xa

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1c

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xb

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x51

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x33

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xc

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xd

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xe

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x2e

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x42

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x28

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xf

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x30

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x46

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x57

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x58

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x10

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x62

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x63

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x11

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x12

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x38

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x52

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x13

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x56

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x71

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x14

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3e

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x5a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x15

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1c

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x48

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x5e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x16

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4a

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x62

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x6f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x70

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x17

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4e

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x66

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x18

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1c

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x50

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x19

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x54

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x6a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1a

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x56

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x72

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1b

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3e

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x5a

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x76

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4a

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x62

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x7a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1d

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4e

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x66

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x7e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1e

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x34

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4e

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x68

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x82

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1f

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x38

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x52

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6c

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x86

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x20

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3c

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x56

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x70

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x21

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x56

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x72

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x22

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x22

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3e

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x5a

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x76

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x92

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x23

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4e

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x66

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x7e

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x96

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x24

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x18

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x32

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x4c

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x66

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x80

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x9a

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x25

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1c

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x50

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6a

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x84

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0x9e

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x31

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x26

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x20

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x54

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6e

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x88

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0xa2

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x30

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x27

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1a

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x36

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x52

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x6e

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8a

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0xa6

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x28

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x43

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x28

    const/4 v4, 0x7

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x1e

    aput v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x3a

    aput v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0x56

    aput v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0x72

    aput v6, v4, v5

    const/4 v5, 0x5

    const/16 v6, 0x8e

    aput v6, v4, v5

    const/4 v5, 0x6

    const/16 v6, 0xaa

    aput v6, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x77

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3d

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0x28

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getDimensionForVersion()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
