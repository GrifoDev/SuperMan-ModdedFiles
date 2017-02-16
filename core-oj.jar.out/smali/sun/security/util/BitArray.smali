.class public Lsun/security/util/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field private static final BITS_PER_UNIT:I = 0x8

.field private static final BYTES_PER_LINE:I = 0x8

.field private static final NYBBLE:[[B


# instance fields
.field private length:I

.field private repn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 219
    const/16 v0, 0x10

    new-array v0, v0, [[B

    .line 220
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 221
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 222
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 223
    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 224
    new-array v1, v3, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    .line 225
    new-array v1, v3, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 226
    new-array v1, v3, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 227
    new-array v1, v3, [B

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 228
    new-array v1, v3, [B

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 229
    new-array v1, v3, [B

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 230
    new-array v1, v3, [B

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 231
    new-array v1, v3, [B

    fill-array-data v1, :array_b

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 232
    new-array v1, v3, [B

    fill-array-data v1, :array_c

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 233
    new-array v1, v3, [B

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 234
    new-array v1, v3, [B

    fill-array-data v1, :array_e

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 235
    new-array v1, v3, [B

    fill-array-data v1, :array_f

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 219
    sput-object v0, Lsun/security/util/BitArray;->NYBBLE:[[B

    .line 38
    return-void

    .line 220
    nop

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    .line 221
    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    .line 222
    :array_2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    .line 223
    :array_3
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    .line 224
    :array_4
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    .line 225
    :array_5
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    .line 226
    :array_6
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    .line 227
    :array_7
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    .line 228
    :array_8
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    .line 229
    :array_9
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    .line 230
    :array_a
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    .line 231
    :array_b
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    .line 232
    :array_c
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    .line 233
    :array_d
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    .line 234
    :array_e
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    .line 235
    :array_f
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-gez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative length for BitArray"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 63
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 56
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 6
    .param p1, "length"    # I
    .param p2, "a"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-gez p1, :cond_0

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Negative length for BitArray"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 79
    :cond_0
    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    if-ge v3, p1, :cond_1

    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Byte array too short to represent bit array of given length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_1
    iput p1, p0, Lsun/security/util/BitArray;->length:I

    .line 86
    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v1, v3, 0x8

    .line 87
    .local v1, "repLength":I
    mul-int/lit8 v3, v1, 0x8

    sub-int v2, v3, p1

    .line 88
    .local v2, "unusedBits":I
    const/16 v3, 0xff

    shl-int/2addr v3, v2

    int-to-byte v0, v3

    .line 95
    .local v0, "bitMask":B
    new-array v3, v1, [B

    iput-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    .line 96
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 97
    if-lez v1, :cond_2

    .line 98
    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v5, v3, v4

    and-int/2addr v5, v0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 74
    :cond_2
    return-void
.end method

.method private constructor <init>(Lsun/security/util/BitArray;)V
    .locals 1
    .param p1, "ba"    # Lsun/security/util/BitArray;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget v0, p1, Lsun/security/util/BitArray;->length:I

    iput v0, p0, Lsun/security/util/BitArray;->length:I

    .line 121
    iget-object v0, p1, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    .line 119
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 2
    .param p1, "bits"    # [Z

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    array-length v1, p1

    iput v1, p0, Lsun/security/util/BitArray;->length:I

    .line 108
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v1, :cond_0

    .line 111
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lsun/security/util/BitArray;->set(IZ)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private static position(I)I
    .locals 2
    .param p0, "idx"    # I

    .prologue
    .line 50
    rem-int/lit8 v0, p0, 0x8

    rsub-int/lit8 v0, v0, 0x7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static subscript(I)I
    .locals 1
    .param p0, "idx"    # I

    .prologue
    .line 46
    div-int/lit8 v0, p0, 0x8

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, p0}, Lsun/security/util/BitArray;-><init>(Lsun/security/util/BitArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    if-ne p1, p0, :cond_0

    return v5

    .line 175
    :cond_0
    if-eqz p1, :cond_1

    instance-of v2, p1, Lsun/security/util/BitArray;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 177
    check-cast v0, Lsun/security/util/BitArray;

    .line 179
    .local v0, "ba":Lsun/security/util/BitArray;
    iget v2, v0, Lsun/security/util/BitArray;->length:I

    iget v3, p0, Lsun/security/util/BitArray;->length:I

    if-eq v2, v3, :cond_2

    return v4

    .line 175
    .end local v0    # "ba":Lsun/security/util/BitArray;
    :cond_1
    return v4

    .line 181
    .restart local v0    # "ba":Lsun/security/util/BitArray;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 182
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v2, v2, v1

    iget-object v3, v0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_3

    return v4

    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_4
    return v5
.end method

.method public get(I)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    if-ltz p1, :cond_0

    iget v1, p0, Lsun/security/util/BitArray;->length:I

    if-lt p1, v1, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget-object v1, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v2

    aget-byte v1, v1, v2

    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    xor-int/2addr v2, v0

    return v2
.end method

.method public length()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lsun/security/util/BitArray;->length:I

    return v0
.end method

.method public set(IZ)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 140
    if-ltz p1, :cond_0

    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-lt p1, v2, :cond_1

    .line 141
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 143
    :cond_1
    invoke-static {p1}, Lsun/security/util/BitArray;->subscript(I)I

    move-result v1

    .line 144
    .local v1, "idx":I
    invoke-static {p1}, Lsun/security/util/BitArray;->position(I)I

    move-result v0

    .line 146
    .local v0, "bit":I
    if-eqz p2, :cond_2

    .line 147
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v1

    or-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 139
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v2, v1

    not-int v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    goto :goto_0
.end method

.method public toBooleanArray()[Z
    .locals 3

    .prologue
    .line 191
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    new-array v0, v2, [Z

    .line 193
    .local v0, "bits":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_0

    .line 194
    invoke-virtual {p0, v1}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lsun/security/util/BitArray;->repn:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 244
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 247
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    sget-object v2, Lsun/security/util/BitArray;->NYBBLE:[[B

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    aget-byte v3, v3, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 250
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 251
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 258
    :cond_1
    iget-object v2, p0, Lsun/security/util/BitArray;->repn:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v0, v2, 0x8

    :goto_2
    iget v2, p0, Lsun/security/util/BitArray;->length:I

    if-ge v0, v2, :cond_3

    .line 259
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 259
    :cond_2
    const/16 v2, 0x30

    goto :goto_3

    .line 262
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public truncate()Lsun/security/util/BitArray;
    .locals 5

    .prologue
    .line 267
    iget v1, p0, Lsun/security/util/BitArray;->length:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 268
    invoke-virtual {p0, v0}, Lsun/security/util/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v1, Lsun/security/util/BitArray;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lsun/security/util/BitArray;->repn:[B

    add-int/lit8 v4, v0, 0x8

    div-int/lit8 v4, v4, 0x8

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lsun/security/util/BitArray;-><init>(I[B)V

    return-object v1

    .line 267
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Lsun/security/util/BitArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>(I)V

    return-object v1
.end method
