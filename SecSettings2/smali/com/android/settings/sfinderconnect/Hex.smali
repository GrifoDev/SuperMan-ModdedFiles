.class public Lcom/android/settings/sfinderconnect/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[B

.field private static final FIRST_CHAR:[C

.field private static final HEX_DIGITS:[C

.field private static final SECOND_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x100

    const/16 v5, 0xa

    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    new-array v2, v6, [C

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    new-array v2, v6, [C

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    sget-object v3, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    sget-object v3, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x67

    new-array v2, v2, [B

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_2

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x30

    aput-byte v0, v2, v3

    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x41

    add-int/lit8 v4, v0, 0xa

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x61

    add-int/lit8 v4, v0, 0xa

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_3

    :cond_3
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHex([BZ)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    aget-byte v5, p0, v1

    and-int/lit16 v2, v5, 0xff

    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    :cond_1
    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x20

    aput-char v5, v0, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x56

    aput-char v5, v0, v4

    goto :goto_1
.end method
