.class public Ljavax/crypto/spec/DESKeySpec;
.super Ljava/lang/Object;
.source "DESKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_KEY_LEN:I = 0x8

.field private static final WEAK_KEYS:[[B


# instance fields
.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 64
    const/16 v0, 0x10

    new-array v0, v0, [[B

    .line 66
    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 69
    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 75
    new-array v1, v3, [B

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    new-array v1, v3, [B

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 81
    new-array v1, v3, [B

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    new-array v1, v3, [B

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 87
    new-array v1, v3, [B

    fill-array-data v1, :array_7

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 90
    new-array v1, v3, [B

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    .line 93
    new-array v1, v3, [B

    fill-array-data v1, :array_9

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 96
    new-array v1, v3, [B

    fill-array-data v1, :array_a

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 99
    new-array v1, v3, [B

    fill-array-data v1, :array_b

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 102
    new-array v1, v3, [B

    fill-array-data v1, :array_c

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 105
    new-array v1, v3, [B

    fill-array-data v1, :array_d

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 108
    new-array v1, v3, [B

    fill-array-data v1, :array_e

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 111
    new-array v1, v3, [B

    fill-array-data v1, :array_f

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    .line 37
    return-void

    .line 66
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 69
    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        -0x2t
    .end array-data

    .line 72
    :array_2
    .array-data 1
        0x1ft
        0x1ft
        0x1ft
        0x1ft
        0xet
        0xet
        0xet
        0xet
    .end array-data

    .line 75
    :array_3
    .array-data 1
        -0x20t
        -0x20t
        -0x20t
        -0x20t
        -0xft
        -0xft
        -0xft
        -0xft
    .end array-data

    .line 78
    :array_4
    .array-data 1
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
    .end array-data

    .line 81
    :array_5
    .array-data 1
        0x1ft
        -0x20t
        0x1ft
        -0x20t
        0xet
        -0xft
        0xet
        -0xft
    .end array-data

    .line 84
    :array_6
    .array-data 1
        0x1t
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
    .end array-data

    .line 87
    :array_7
    .array-data 1
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
        -0x2t
    .end array-data

    .line 90
    :array_8
    .array-data 1
        0x1t
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
    .end array-data

    .line 93
    :array_9
    .array-data 1
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
        -0x2t
    .end array-data

    .line 96
    :array_a
    .array-data 1
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
        -0x2t
        0x1t
    .end array-data

    .line 99
    :array_b
    .array-data 1
        -0x20t
        0x1ft
        -0x20t
        0x1ft
        -0xft
        0xet
        -0xft
        0xet
    .end array-data

    .line 102
    :array_c
    .array-data 1
        -0x20t
        0x1t
        -0x20t
        0x1t
        -0xft
        0x1t
        -0xft
        0x1t
    .end array-data

    .line 105
    :array_d
    .array-data 1
        -0x2t
        0x1ft
        -0x2t
        0x1ft
        -0x2t
        0xet
        -0x2t
        0xet
    .end array-data

    .line 108
    :array_e
    .array-data 1
        0x1ft
        0x1t
        0x1ft
        0x1t
        0xet
        0x1t
        0xet
        0x1t
    .end array-data

    .line 111
    :array_f
    .array-data 1
        -0x2t
        -0x20t
        -0x2t
        -0x20t
        -0x2t
        -0xft
        -0x2t
        -0xft
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/DESKeySpec;-><init>([BI)V

    .line 130
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_0

    .line 155
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key size"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    .line 158
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 153
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 188
    if-nez p0, :cond_0

    .line 189
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "null key"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    :cond_0
    array-length v3, p0

    sub-int/2addr v3, p1

    if-ge v3, v5, :cond_1

    .line 192
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Wrong key size"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 195
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .end local p1    # "offset":I
    .local v2, "offset":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 196
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    .line 197
    .local v1, "k":I
    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_2

    .line 198
    return v4

    .line 195
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, p1

    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_0

    .line 202
    .end local v1    # "k":I
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static isWeak([BI)Z
    .locals 6
    .param p0, "key"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 221
    if-nez p0, :cond_0

    .line 222
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "null key"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    :cond_0
    array-length v3, p0

    sub-int/2addr v3, p1

    if-ge v3, v5, :cond_1

    .line 225
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Wrong key size"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    array-length v3, v3

    if-ge v1, v3, :cond_5

    .line 228
    const/4 v0, 0x1

    .line 229
    .local v0, "found":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v5, :cond_3

    if-eqz v0, :cond_3

    .line 230
    sget-object v3, Ljavax/crypto/spec/DESKeySpec;->WEAK_KEYS:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v2

    add-int v4, v2, p1

    aget-byte v4, p0, v4

    if-eq v3, v4, :cond_2

    .line 231
    const/4 v0, 0x0

    .line 229
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_3
    if-eqz v0, :cond_4

    .line 235
    return v0

    .line 227
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "found":Z
    .end local v2    # "j":I
    :cond_5
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ljavax/crypto/spec/DESKeySpec;->key:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
