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

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromIPv4MappedAddress([B)[B
    .locals 4
    .param p0, "addr"    # [B

    .prologue
    const/4 v3, 0x4

    .line 270
    invoke-static {p0}, Lsun/net/util/IPAddressUtil;->isIPv4MappedAddress([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    new-array v0, v3, [B

    .line 272
    .local v0, "newAddr":[B
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 273
    return-object v0

    .line 275
    .end local v0    # "newAddr":[B
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isIPv4LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 251
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
    .param p0, "addr"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 286
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 287
    return v2

    .line 289
    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    aget-byte v0, p0, v4

    if-nez v0, :cond_1

    .line 290
    const/4 v0, 0x2

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 291
    const/4 v0, 0x4

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 292
    const/4 v0, 0x6

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 293
    const/16 v0, 0x8

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    aget-byte v0, p0, v0

    if-nez v0, :cond_1

    .line 294
    const/16 v0, 0xa

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_1

    .line 295
    const/16 v0, 0xb

    aget-byte v0, p0, v0

    if-ne v0, v3, :cond_1

    .line 296
    return v4

    .line 298
    :cond_1
    return v2
.end method

.method public static isIPv6LiteralAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 259
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
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0xff

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 43
    return-object v8

    .line 46
    :cond_0
    new-array v2, v9, [B

    .line 47
    .local v2, "res":[B
    const-string/jumbo v6, "\\."

    const/4 v7, -0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "s":[Ljava/lang/String;
    :try_start_0
    array-length v6, v3

    packed-switch v6, :pswitch_data_0

    .line 115
    return-object v8

    .line 107
    :pswitch_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_3

    .line 108
    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v4, v6

    .line 109
    .local v4, "val":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    cmp-long v6, v4, v10

    if-lez v6, :cond_2

    .line 110
    :cond_1
    return-object v8

    .line 111
    :cond_2
    and-long v6, v4, v10

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "i":I
    .end local v4    # "val":J
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v8

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    :cond_3
    return-object v2

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 25
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 137
    const/16 v23, 0x0

    return-object v23

    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v19

    .line 145
    .local v19, "srcb":[C
    const/16 v23, 0x10

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 147
    .local v7, "dst":[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 148
    .local v20, "srcb_length":I
    const-string/jumbo v23, "%"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 149
    .local v17, "pc":I
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 150
    const/16 v23, 0x0

    return-object v23

    .line 153
    :cond_1
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 154
    move/from16 v20, v17

    .line 157
    :cond_2
    const/4 v4, -0x1

    .line 158
    .local v4, "colonp":I
    const/4 v8, 0x0

    .local v8, "i":I
    const/4 v12, 0x0

    .line 160
    .local v12, "j":I
    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 161
    const/4 v8, 0x1

    aget-char v23, v19, v8

    const/16 v24, 0x3a

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 162
    const/16 v23, 0x0

    return-object v23

    .line 163
    :cond_3
    move v5, v8

    .line 164
    .local v5, "curtok":I
    const/16 v18, 0x0

    .line 165
    .local v18, "saw_xdigit":Z
    const/16 v22, 0x0

    .local v22, "val":I
    move v13, v12

    .end local v12    # "j":I
    .local v13, "j":I
    move v9, v8

    .line 166
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v9, v0, :cond_17

    .line 167
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    aget-char v2, v19, v9

    .line 168
    .local v2, "ch":C
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 169
    .local v3, "chval":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_5

    .line 170
    shl-int/lit8 v22, v22, 0x4

    .line 171
    or-int v22, v22, v3

    .line 172
    const v23, 0xffff

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 173
    const/16 v23, 0x0

    return-object v23

    .line 174
    :cond_4
    const/16 v18, 0x1

    move v9, v8

    .line 175
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 177
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_5
    const/16 v23, 0x3a

    move/from16 v0, v23

    if-ne v2, v0, :cond_a

    .line 178
    move v5, v8

    .line 179
    if-nez v18, :cond_7

    .line 180
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_6

    .line 181
    const/16 v23, 0x0

    return-object v23

    .line 182
    :cond_6
    move v4, v13

    move v9, v8

    .line 183
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 184
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_7
    move/from16 v0, v20

    if-ne v8, v0, :cond_8

    .line 185
    const/16 v23, 0x0

    return-object v23

    .line 187
    :cond_8
    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 188
    const/16 v23, 0x0

    return-object v23

    .line 189
    :cond_9
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    .line 190
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    .line 191
    const/16 v18, 0x0

    .line 192
    const/16 v22, 0x0

    move v9, v8

    .line 193
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 195
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_a
    const/16 v23, 0x2e

    move/from16 v0, v23

    if-ne v2, v0, :cond_f

    add-int/lit8 v23, v13, 0x4

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_f

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "ia4":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "dot_count":I
    const/4 v11, 0x0

    .line 199
    .local v11, "index":I
    :goto_1
    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_b

    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 201
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 203
    :cond_b
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v6, v0, :cond_c

    .line 204
    const/16 v23, 0x0

    return-object v23

    .line 206
    :cond_c
    invoke-static {v10}, Lsun/net/util/IPAddressUtil;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v21

    .line 207
    .local v21, "v4addr":[B
    if-nez v21, :cond_d

    .line 208
    const/16 v23, 0x0

    return-object v23

    .line 210
    :cond_d
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_2
    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_e

    .line 211
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    aget-byte v23, v21, v14

    aput-byte v23, v7, v13

    .line 210
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12    # "j":I
    .restart local v13    # "j":I
    goto :goto_2

    .line 213
    :cond_e
    const/16 v18, 0x0

    .line 218
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    .end local v6    # "dot_count":I
    .end local v10    # "ia4":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v14    # "k":I
    .end local v21    # "v4addr":[B
    :goto_3
    if-eqz v18, :cond_16

    .line 219
    add-int/lit8 v23, v13, 0x2

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    .line 220
    const/16 v23, 0x0

    return-object v23

    .line 216
    .restart local v2    # "ch":C
    .restart local v3    # "chval":I
    :cond_f
    const/16 v23, 0x0

    return-object v23

    .line 221
    .end local v2    # "ch":C
    .end local v3    # "chval":I
    :cond_10
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "j":I
    .restart local v12    # "j":I
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v13

    .line 222
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "j":I
    .restart local v13    # "j":I
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v12

    move v12, v13

    .line 225
    .end local v13    # "j":I
    .restart local v12    # "j":I
    :goto_4
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_13

    .line 226
    sub-int v15, v12, v4

    .line 228
    .local v15, "n":I
    const/16 v23, 0x10

    move/from16 v0, v23

    if-ne v12, v0, :cond_11

    .line 229
    const/16 v23, 0x0

    return-object v23

    .line 230
    :cond_11
    const/4 v8, 0x1

    :goto_5
    if-gt v8, v15, :cond_12

    .line 231
    rsub-int/lit8 v23, v8, 0x10

    add-int v24, v4, v15

    sub-int v24, v24, v8

    aget-byte v24, v7, v24

    aput-byte v24, v7, v23

    .line 232
    add-int v23, v4, v15

    sub-int v23, v23, v8

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    .line 230
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 234
    :cond_12
    const/16 v12, 0x10

    .line 236
    .end local v15    # "n":I
    :cond_13
    const/16 v23, 0x10

    move/from16 v0, v23

    if-eq v12, v0, :cond_14

    .line 237
    const/16 v23, 0x0

    return-object v23

    .line 238
    :cond_14
    invoke-static {v7}, Lsun/net/util/IPAddressUtil;->convertFromIPv4MappedAddress([B)[B

    move-result-object v16

    .line 239
    .local v16, "newdst":[B
    if-eqz v16, :cond_15

    .line 240
    return-object v16

    .line 242
    :cond_15
    return-object v7

    .end local v12    # "j":I
    .end local v16    # "newdst":[B
    .restart local v13    # "j":I
    :cond_16
    move v12, v13

    .end local v13    # "j":I
    .restart local v12    # "j":I
    goto :goto_4

    .end local v8    # "i":I
    .end local v12    # "j":I
    .restart local v9    # "i":I
    .restart local v13    # "j":I
    :cond_17
    move v8, v9

    .end local v9    # "i":I
    .restart local v8    # "i":I
    goto :goto_3
.end method
