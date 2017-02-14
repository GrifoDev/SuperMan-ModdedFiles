.class public Lsun/net/util/IPAddressUtil;
.super Ljava/lang/Object;
.source "IPAddressUtil.java"


# static fields
.field private static final INADDR16SZ:I = 0x10

.field private static final INADDR4SZ:I = 0x4

.field private static final INT16SZ:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromIPv4MappedAddress([B)[B
    .locals 4

    const/4 v3, 0x4

    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v0, v3, [B

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isIPv4LiteralAddress(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    aget-byte v0, p0, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_1

    const/16 v0, 0xb

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_1

    return v4

    :cond_1
    return v2
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 12

    const-wide/16 v10, 0xff

    const/4 v9, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    return-object v8

    :cond_0
    new-array v2, v9, [B

    const-string/jumbo v6, "\\."

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    :try_start_0
    array-length v6, v3

    packed-switch v6, :pswitch_data_0

    return-object v8

    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_3

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    cmp-long v6, v4, v10

    if-lez v6, :cond_2

    :cond_1
    return-object v8

    :cond_2
    and-long v6, v4, v10

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v8

    :cond_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    const/16 v23, 0x0

    return-object v23

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v7, v0, [B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const-string/jumbo v23, "%"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v23, 0x0

    return-object v23

    :cond_1
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move/from16 v20, v17

    :cond_2
    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v8, 0x1

    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v23, 0x0

    return-object v23

    :cond_3
    move v5, v8

    const/16 v18, 0x0

    const/16 v22, 0x0

    move v13, v12

    move v9, v8

    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_17

    add-int/lit8 v8, v9, 0x1

    aget-char v2, v19, v9

    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_5

    shl-int/lit8 v22, v22, 0x4

    or-int v22, v22, v3

    const v23, 0xffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/16 v23, 0x0

    return-object v23

    :cond_4
    const/16 v18, 0x1

    move v9, v8

    goto :goto_0

    :cond_5
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-ne v2, v0, :cond_a

    move v5, v8

    if-nez v18, :cond_7

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_6

    const/16 v23, 0x0

    return-object v23

    :cond_6
    move v4, v13

    move v9, v8

    goto :goto_0

    :cond_7
    move/from16 v0, v20

    if-ne v8, v0, :cond_8

    const/16 v23, 0x0

    return-object v23

    :cond_8
    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    const/16 v23, 0x0

    return-object v23

    :cond_9
    add-int/lit8 v12, v13, 0x1

    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    add-int/lit8 v13, v12, 0x1

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    const/16 v18, 0x0

    const/16 v22, 0x0

    move v9, v8

    goto :goto_0

    :cond_a
    const/16 v23, 0x2e

    move/from16 v0, v23

    if-ne v2, v0, :cond_f

    add-int/lit8 v23, v13, 0x4

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_b

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_b
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v6, v0, :cond_c

    const/16 v23, 0x0

    return-object v23

    :cond_c
    invoke-static {v10}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v21

    if-nez v21, :cond_d

    const/16 v23, 0x0

    return-object v23

    :cond_d
    const/4 v14, 0x0

    :goto_2
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_e

    add-int/lit8 v12, v13, 0x1

    aget-byte v23, v21, v14

    aput-byte v23, v7, v13

    add-int/lit8 v14, v14, 0x1

    move v13, v12

    goto :goto_2

    :cond_e
    const/16 v18, 0x0

    :goto_3
    if-eqz v18, :cond_16

    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    const/16 v23, 0x0

    return-object v23

    :cond_f
    const/16 v23, 0x0

    return-object v23

    :cond_10
    add-int/lit8 v12, v13, 0x1

    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    add-int/lit8 v13, v12, 0x1

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    move v12, v13

    :goto_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_13

    sub-int v15, v12, v4

    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_11

    const/16 v23, 0x0

    return-object v23

    :cond_11
    const/4 v8, 0x1

    :goto_5
    if-gt v8, v15, :cond_12

    rsub-int/lit8 v23, v8, 0x10

    add-int v24, v4, v15

    sub-int v24, v24, v8

    aget-byte v24, v7, v24

    aput-byte v24, v7, v23

    add-int v23, v4, v15

    sub-int v23, v23, v8

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_12
    const/16 v12, 0x10

    :cond_13
    const/16 v23, 0x10

    move/from16 v0, v23

    if-eq v12, v0, :cond_14

    const/16 v23, 0x0

    return-object v23

    :cond_14
    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v16

    if-eqz v16, :cond_15

    return-object v16

    :cond_15
    return-object v7

    :cond_16
    move v12, v13

    goto :goto_4

    :cond_17
    move v8, v9

    goto :goto_3
.end method
