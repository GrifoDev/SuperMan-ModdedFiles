.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field static final CHARACTER_ENCODINGS:[I

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string/jumbo v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    aput v3, v0, v4

    const/4 v1, 0x6

    aput v1, v0, v5

    const/16 v1, 0x9

    aput v1, v0, v6

    const/16 v1, 0x60

    aput v1, v0, v3

    const/16 v1, 0x12

    aput v1, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x5

    aput v1, v0, v2

    const/16 v1, 0x21

    const/4 v2, 0x6

    aput v1, v0, v2

    const/16 v1, 0x24

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v1, 0x30

    const/16 v2, 0x8

    aput v1, v0, v2

    const/16 v1, 0x48

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0x18

    const/16 v2, 0xb

    aput v1, v0, v2

    const/16 v1, 0x45

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v1, 0x51

    const/16 v2, 0xd

    aput v1, v0, v2

    const/16 v1, 0x54

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v1, 0x15

    const/16 v2, 0xf

    aput v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x10

    aput v1, v0, v2

    const/16 v1, 0x29

    const/16 v2, 0x11

    aput v1, v0, v2

    const/16 v1, 0xb

    const/16 v2, 0x12

    aput v1, v0, v2

    const/16 v1, 0xe

    const/16 v2, 0x13

    aput v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    new-array v0, v7, [C

    const/16 v1, 0x41

    aput-char v1, v0, v4

    const/16 v1, 0x42

    aput-char v1, v0, v5

    const/16 v1, 0x43

    aput-char v1, v0, v6

    const/16 v1, 0x44

    aput-char v1, v0, v3

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    return-void
.end method

.method static arrayContains([CC)Z
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    move-object v0, p0

    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, p0, v2

    if-eq v1, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    return v4
.end method
