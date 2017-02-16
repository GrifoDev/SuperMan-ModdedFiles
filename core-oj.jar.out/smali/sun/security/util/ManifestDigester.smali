.class public Lsun/security/util/ManifestDigester;
.super Ljava/lang/Object;
.source "ManifestDigester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/ManifestDigester$Entry;,
        Lsun/security/util/ManifestDigester$Position;
    }
.end annotation


# static fields
.field public static final MF_MAIN_ATTRS:Ljava/lang/String; = "Manifest-Main-Attributes"


# instance fields
.field private entries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/ManifestDigester$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private rawBytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 24
    .param p1, "bytes"    # [B

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ManifestDigester;->rawBytes:[B

    .line 111
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    .line 113
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Lsun/security/util/ManifestDigester$Position;

    invoke-direct {v10}, Lsun/security/util/ManifestDigester$Position;-><init>()V

    .line 117
    .local v10, "pos":Lsun/security/util/ManifestDigester$Position;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Manifest-Main-Attributes"

    .line 122
    new-instance v19, Lsun/security/util/ManifestDigester$Entry;

    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    .line 121
    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    .line 125
    .local v13, "start":I
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 126
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    add-int/lit8 v8, v17, 0x1

    .line 127
    .local v8, "len":I
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    add-int/lit8 v11, v17, 0x1

    .line 128
    .local v11, "sectionLen":I
    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    move/from16 v17, v0

    sub-int v12, v17, v13

    .line 130
    .local v12, "sectionLenWithBlank":I
    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v8, v0, :cond_9

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lsun/security/util/ManifestDigester;->isNameAttr([BI)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v9, "nameBuf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v18, v13, 0x6

    add-int/lit8 v19, v8, -0x6

    const-string/jumbo v20, "UTF8"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int v6, v13, v8

    .line 139
    .local v6, "i":I
    sub-int v17, v6, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_5

    .line 140
    aget-byte v17, p1, v6

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 141
    add-int/lit8 v6, v6, 0x2

    move v7, v6

    .line 147
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_1
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    .line 148
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v17, p1, v7

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 150
    move/from16 v16, v6

    .local v16, "wrapStart":I
    move v7, v6

    .line 151
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :goto_2
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_2

    .line 152
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    aget-byte v17, p1, v7

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_2

    .line 143
    .end local v7    # "i":I
    .end local v16    # "wrapStart":I
    .restart local v6    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .restart local v16    # "wrapStart":I
    :cond_2
    move v6, v7

    .line 153
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v17, v6, -0x1

    aget-byte v17, p1, v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 154
    return-void

    .line 156
    :cond_4
    add-int/lit8 v17, v6, -0x2

    aget-byte v17, p1, v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 157
    sub-int v17, v6, v16

    add-int/lit8 v15, v17, -0x2

    .line 161
    .local v15, "wrapLen":I
    :goto_3
    new-instance v17, Ljava/lang/String;

    .line 162
    const-string/jumbo v18, "UTF8"

    .line 161
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v15, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v15    # "wrapLen":I
    .end local v16    # "wrapStart":I
    :cond_5
    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    .line 159
    .end local v7    # "i":I
    .restart local v6    # "i":I
    .restart local v16    # "wrapStart":I
    :cond_6
    sub-int v17, v6, v16

    add-int/lit8 v15, v17, -0x1

    .restart local v15    # "wrapLen":I
    goto :goto_3

    .end local v6    # "i":I
    .end local v15    # "wrapLen":I
    .end local v16    # "wrapStart":I
    .restart local v7    # "i":I
    :cond_7
    move v6, v7

    .line 168
    .end local v7    # "i":I
    .restart local v6    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 169
    new-instance v19, Lsun/security/util/ManifestDigester$Entry;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    move-object/from16 v20, v0

    .line 169
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v11, v12, v1}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    .line 168
    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v6    # "i":I
    .end local v9    # "nameBuf":Ljava/lang/StringBuilder;
    :cond_9
    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    goto/16 :goto_0

    .line 172
    .restart local v9    # "nameBuf":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v14

    .line 173
    .local v14, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v17, Ljava/lang/IllegalStateException;

    .line 174
    const-string/jumbo v18, "UTF8 not available on platform"

    .line 173
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 108
    .end local v8    # "len":I
    .end local v9    # "nameBuf":Ljava/lang/StringBuilder;
    .end local v11    # "sectionLen":I
    .end local v12    # "sectionLenWithBlank":I
    .end local v14    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_a
    return-void
.end method

.method private findSection(ILsun/security/util/ManifestDigester$Position;)Z
    .locals 8
    .param p1, "offset"    # I
    .param p2, "pos"    # Lsun/security/util/ManifestDigester$Position;

    .prologue
    const/4 v7, -0x1

    .line 67
    move v2, p1

    .local v2, "i":I
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v4, v5

    .line 68
    .local v4, "len":I
    move v3, p1

    .line 70
    .local v3, "last":I
    const/4 v0, 0x1

    .line 72
    .local v0, "allBlank":Z
    iput v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 74
    :goto_0
    if-ge v2, v4, :cond_6

    .line 75
    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    aget-byte v1, v5, v2

    .line 76
    .local v1, "b":B
    packed-switch v1, :pswitch_data_0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    .line 103
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :pswitch_1
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v5, v7, :cond_0

    .line 79
    add-int/lit8 v5, v2, -0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 80
    :cond_0
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 83
    :cond_1
    :pswitch_2
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v5, v7, :cond_2

    .line 84
    add-int/lit8 v5, v2, -0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    .line 85
    :cond_2
    if-nez v0, :cond_3

    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_5

    .line 86
    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_4

    .line 87
    iput v2, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    .line 90
    :goto_2
    add-int/lit8 v5, v2, 0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    .line 91
    const/4 v5, 0x1

    return v5

    .line 89
    :cond_4
    iput v3, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    goto :goto_2

    .line 95
    :cond_5
    move v3, v2

    .line 96
    const/4 v0, 0x1

    goto :goto_1

    .line 105
    .end local v1    # "b":B
    :cond_6
    const/4 v5, 0x0

    return v5

    .line 76
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNameAttr([BI)Z
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "start"    # I

    .prologue
    const/4 v0, 0x0

    .line 184
    aget-byte v1, p1, p2

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, p2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 185
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_4

    .line 186
    :cond_1
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_4

    .line 187
    :cond_2
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    .line 188
    :cond_3
    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    .line 189
    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    .line 184
    :cond_4
    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "oldStyle"    # Z

    .prologue
    .line 256
    iget-object v1, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ManifestDigester$Entry;

    .line 257
    .local v0, "e":Lsun/security/util/ManifestDigester$Entry;
    if-eqz v0, :cond_0

    .line 258
    iput-boolean p2, v0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    .line 259
    :cond_0
    return-object v0
.end method

.method public manifestDigest(Ljava/security/MessageDigest;)[B
    .locals 3
    .param p1, "md"    # Ljava/security/MessageDigest;

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 265
    iget-object v0, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    iget-object v1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 266
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
