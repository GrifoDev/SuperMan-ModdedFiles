.class Ljava/util/prefs/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final altBase64ToInt:[B

.field private static final base64ToInt:[B

.field private static final intToAltBase64:[C

.field private static final intToBase64:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 100
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/prefs/Base64;->intToBase64:[C

    .line 115
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/prefs/Base64;->intToAltBase64:[C

    .line 214
    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/prefs/Base64;->base64ToInt:[B

    .line 228
    const/16 v0, 0x7f

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    .line 36
    return-void

    .line 100
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    .line 115
    :array_1
    .array-data 2
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2cs
        0x2ds
        0x2es
        0x3as
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5ds
        0x5es
        0x60s
        0x5fs
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x3fs
    .end array-data

    .line 214
    :array_2
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
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
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data

    .line 228
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
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
        -0x1t
        0x3et
        0x9t
        0xat
        0xbt
        -0x1t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xct
        0xdt
        0xet
        -0x1t
        0xft
        0x3ft
        0x10t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x11t
        -0x1t
        0x12t
        0x13t
        0x15t
        0x14t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static altBase64ToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static base64ToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64ToByteArray(Ljava/lang/String;Z)[B
    .locals 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "alternate"    # Z

    .prologue
    .line 147
    if-eqz p1, :cond_0

    sget-object v2, Ljava/util/prefs/Base64;->altBase64ToInt:[B

    .line 148
    .local v2, "alphaToInt":[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    .line 149
    .local v16, "sLen":I
    div-int/lit8 v12, v16, 0x4

    .line 150
    .local v12, "numGroups":I
    mul-int/lit8 v17, v12, 0x4

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 151
    new-instance v17, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string/jumbo v18, "String length must be a multiple of four."

    .line 151
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 147
    .end local v2    # "alphaToInt":[B
    .end local v12    # "numGroups":I
    .end local v16    # "sLen":I
    :cond_0
    sget-object v2, Ljava/util/prefs/Base64;->base64ToInt:[B

    .restart local v2    # "alphaToInt":[B
    goto :goto_0

    .line 153
    .restart local v12    # "numGroups":I
    .restart local v16    # "sLen":I
    :cond_1
    const/4 v10, 0x0

    .line 154
    .local v10, "missingBytesInLastGroup":I
    move v11, v12

    .line 155
    .local v11, "numFullGroups":I
    if-eqz v16, :cond_3

    .line 156
    add-int/lit8 v17, v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 157
    const/4 v10, 0x1

    .line 158
    add-int/lit8 v11, v12, -0x1

    .line 160
    :cond_2
    add-int/lit8 v17, v16, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 161
    add-int/lit8 v10, v10, 0x1

    .line 163
    :cond_3
    mul-int/lit8 v17, v12, 0x3

    sub-int v17, v17, v10

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 166
    .local v15, "result":[B
    const/4 v8, 0x0

    .local v8, "inCursor":I
    const/4 v13, 0x0

    .line 167
    .local v13, "outCursor":I
    const/4 v7, 0x0

    .local v7, "i":I
    move v14, v13

    .end local v13    # "outCursor":I
    .local v14, "outCursor":I
    move v9, v8

    .end local v8    # "inCursor":I
    .local v9, "inCursor":I
    :goto_1
    if-ge v7, v11, :cond_4

    .line 168
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v3

    .line 169
    .local v3, "ch0":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v4

    .line 170
    .local v4, "ch1":I
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v5

    .line 171
    .local v5, "ch2":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v6

    .line 172
    .local v6, "ch3":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v3, 0x2

    shr-int/lit8 v18, v4, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 173
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    shl-int/lit8 v17, v4, 0x4

    shr-int/lit8 v18, v5, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v13

    .line 174
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v5, 0x6

    or-int v17, v17, v6

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 167
    add-int/lit8 v7, v7, 0x1

    move v14, v13

    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    goto :goto_1

    .line 178
    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v5    # "ch2":I
    .end local v6    # "ch3":I
    :cond_4
    if-eqz v10, :cond_6

    .line 179
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v3

    .line 180
    .restart local v3    # "ch0":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "inCursor":I
    .restart local v9    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v4

    .line 181
    .restart local v4    # "ch1":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    shl-int/lit8 v17, v3, 0x2

    shr-int/lit8 v18, v4, 0x4

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v14

    .line 183
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_5

    .line 184
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/prefs/Base64;->base64toInt(C[B)I

    move-result v5

    .line 185
    .restart local v5    # "ch2":I
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "outCursor":I
    .restart local v14    # "outCursor":I
    shl-int/lit8 v17, v4, 0x4

    shr-int/lit8 v18, v5, 0x2

    or-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v13

    move v13, v14

    .line 190
    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v5    # "ch2":I
    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    :goto_2
    return-object v15

    .end local v8    # "inCursor":I
    .restart local v3    # "ch0":I
    .restart local v4    # "ch1":I
    .restart local v9    # "inCursor":I
    :cond_5
    move v8, v9

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    goto :goto_2

    .end local v3    # "ch0":I
    .end local v4    # "ch1":I
    .end local v8    # "inCursor":I
    .end local v13    # "outCursor":I
    .restart local v9    # "inCursor":I
    .restart local v14    # "outCursor":I
    :cond_6
    move v13, v14

    .end local v14    # "outCursor":I
    .restart local v13    # "outCursor":I
    move v8, v9

    .end local v9    # "inCursor":I
    .restart local v8    # "inCursor":I
    goto :goto_2
.end method

.method private static base64toInt(C[B)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "alphaToInt"    # [B

    .prologue
    .line 201
    aget-byte v0, p1, p0

    .line 202
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal character "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_0
    return v0
.end method

.method static byteArrayToAltBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static byteArrayToBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static byteArrayToBase64([BZ)Ljava/lang/String;
    .locals 14
    .param p0, "a"    # [B
    .param p1, "alternate"    # Z

    .prologue
    .line 56
    array-length v0, p0

    .line 57
    .local v0, "aLen":I
    div-int/lit8 v9, v0, 0x3

    .line 58
    .local v9, "numFullGroups":I
    mul-int/lit8 v12, v9, 0x3

    sub-int v8, v0, v12

    .line 59
    .local v8, "numBytesInPartialGroup":I
    add-int/lit8 v12, v0, 0x2

    div-int/lit8 v12, v12, 0x3

    mul-int/lit8 v11, v12, 0x4

    .line 60
    .local v11, "resultLen":I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 61
    .local v10, "result":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    sget-object v7, Ljava/util/prefs/Base64;->intToAltBase64:[C

    .line 64
    .local v7, "intToAlpha":[C
    :goto_0
    const/4 v5, 0x0

    .line 65
    .local v5, "inCursor":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v6, v5

    .end local v5    # "inCursor":I
    .local v6, "inCursor":I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 66
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    and-int/lit16 v1, v12, 0xff

    .line 67
    .local v1, "byte0":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    aget-byte v12, p0, v5

    and-int/lit16 v2, v12, 0xff

    .line 68
    .local v2, "byte1":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    and-int/lit16 v3, v12, 0xff

    .line 69
    .local v3, "byte2":I
    shr-int/lit8 v12, v1, 0x2

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v2, 0x4

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    shl-int/lit8 v12, v2, 0x2

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v3, 0x6

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    and-int/lit8 v12, v3, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    goto :goto_1

    .line 61
    .end local v1    # "byte0":I
    .end local v2    # "byte1":I
    .end local v3    # "byte2":I
    .end local v4    # "i":I
    .end local v6    # "inCursor":I
    .end local v7    # "intToAlpha":[C
    :cond_0
    sget-object v7, Ljava/util/prefs/Base64;->intToBase64:[C

    .restart local v7    # "intToAlpha":[C
    goto :goto_0

    .line 76
    .restart local v4    # "i":I
    .restart local v6    # "inCursor":I
    :cond_1
    if-eqz v8, :cond_3

    .line 77
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    aget-byte v12, p0, v6

    and-int/lit16 v1, v12, 0xff

    .line 78
    .restart local v1    # "byte0":I
    shr-int/lit8 v12, v1, 0x2

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 80
    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-string/jumbo v12, "=="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .end local v1    # "byte0":I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 84
    .restart local v1    # "byte0":I
    :cond_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    aget-byte v12, p0, v5

    and-int/lit16 v2, v12, 0xff

    .line 85
    .restart local v2    # "byte1":I
    shl-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3f

    shr-int/lit8 v13, v2, 0x4

    or-int/2addr v12, v13

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    shl-int/lit8 v12, v2, 0x2

    and-int/lit8 v12, v12, 0x3f

    aget-char v12, v7, v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const/16 v12, 0x3d

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v5, v6

    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    goto :goto_2

    .end local v1    # "byte0":I
    .end local v2    # "byte1":I
    .end local v5    # "inCursor":I
    .restart local v6    # "inCursor":I
    :cond_3
    move v5, v6

    .end local v6    # "inCursor":I
    .restart local v5    # "inCursor":I
    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 240
    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 241
    .local v6, "numRuns":I
    const/4 v9, 0x1

    aget-object v9, p0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 242
    .local v5, "numBytes":I
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 243
    .local v7, "rnd":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_4

    .line 244
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 245
    new-array v0, v3, [B

    .line 246
    .local v0, "arr":[B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v3, :cond_0

    .line 247
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v4

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 249
    :cond_0
    invoke-static {v0}, Ljava/util/prefs/Base64;->byteArrayToBase64([B)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, "s":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/prefs/Base64;->base64ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 251
    .local v1, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_1

    .line 252
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Dismal failure!"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    :cond_1
    invoke-static {v0}, Ljava/util/prefs/Base64;->byteArrayToAltBase64([B)Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-static {v8}, Ljava/util/prefs/Base64;->altBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 257
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "Alternate dismal failure!"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "arr":[B
    .end local v1    # "b":[B
    .end local v4    # "k":I
    .end local v8    # "s":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    .end local v3    # "j":I
    :cond_4
    return-void
.end method
