.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0x30

    aput v1, v0, v5

    const/16 v1, 0x2c

    aput v1, v0, v3

    const/16 v1, 0x18

    aput v1, v0, v6

    const/16 v1, 0x14

    aput v1, v0, v4

    const/16 v1, 0x12

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x10

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    new-array v0, v7, [I

    aput v3, v0, v5

    aput v3, v0, v3

    aput v3, v0, v6

    aput v3, v0, v4

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    new-array v0, v4, [I

    aput v3, v0, v5

    aput v3, v0, v3

    aput v4, v0, v6

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v3, v1, v3

    aput v4, v1, v6

    aput v4, v1, v4

    aput v3, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v5

    aput v3, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v4, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v4, v1, v5

    aput v4, v1, v3

    aput v3, v1, v6

    aput v3, v1, v4

    aput v3, v1, v7

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [I

    aput v3, v1, v5

    aput v3, v1, v3

    aput v4, v1, v6

    aput v3, v1, v4

    aput v4, v1, v7

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v4, v2, v5

    aput v3, v2, v3

    aput v4, v2, v6

    aput v3, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v3

    aput v4, v2, v6

    aput v3, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v3, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v4, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v4, v2, v5

    aput v3, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v3

    aput v3, v2, v6

    aput v4, v2, v4

    aput v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method
