.class public final Lcom/android/server/enterprise/otp/engine/common/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final base32Chars:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field private static final base32Lookup:[B

.field private static final errorCanonicalEnd:Ljava/lang/String; = "non canonical bits at end of Base32 string"

.field private static final errorCanonicalLength:Ljava/lang/String; = "non canonical Base32 string length"

.field private static final errorInvalidChar:Ljava/lang/String; = "invalid character in Base32 string"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    return-void

    :array_0
    .array-data 1
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v9, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_0

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical Base32 string length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_2

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    shl-int/lit8 v8, v1, 0x3

    int-to-byte v5, v8

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_3

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_4

    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v1, 0x2

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x6

    int-to-byte v5, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_8

    if-eqz v5, :cond_6

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    :cond_7
    :goto_1
    return-object v0

    :cond_8
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_9

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_a

    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_b

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_b
    shl-int/lit8 v8, v1, 0x1

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_c

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_d

    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_e

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_e
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v5, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_f

    if-eqz v5, :cond_7

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_10

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_11

    :cond_10
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_11
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_12

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_12
    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v1, 0x1

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    and-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x7

    int-to-byte v5, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_14

    if-eqz v5, :cond_13

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    move v2, v3

    move v6, v7

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_15

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_16

    :cond_15
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_16
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_17

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_17
    shl-int/lit8 v8, v1, 0x2

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_18

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_19

    :cond_18
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_19
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_1a

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1a
    add-int/lit8 v6, v7, 0x1

    shr-int/lit8 v8, v1, 0x3

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    and-int/lit8 v8, v1, 0x7

    shl-int/lit8 v8, v8, 0x5

    int-to-byte v5, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_1c

    if-eqz v5, :cond_1b

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1b
    move v2, v3

    goto/16 :goto_1

    :cond_1c
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    if-ltz v4, :cond_1d

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_1e

    :cond_1d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1e
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    if-ne v1, v9, :cond_1f

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1f
    add-int/lit8 v7, v6, 0x1

    or-int v8, v5, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    move v6, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v2, v5, 0x2

    array-length v5, p0

    if-lt v4, v5, :cond_1

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    add-int/lit8 v3, v4, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x6

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x1

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v1, 0x1

    shl-int/lit8 v2, v5, 0x4

    array-length v5, p0

    if-lt v3, v5, :cond_2

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x4

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v2, v5, 0x1

    array-length v5, p0

    if-lt v4, v5, :cond_3

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v4, 0x1

    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x7

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v2, v5, 0x3

    array-length v5, p0

    if-lt v3, v5, :cond_4

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x5

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    and-int/lit8 v6, v1, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    goto/16 :goto_0
.end method
