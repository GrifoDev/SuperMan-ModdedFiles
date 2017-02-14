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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ManifestDigester;->rawBytes:[B

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v10, Lsun/security/util/ManifestDigester$Position;

    invoke-direct {v10}, Lsun/security/util/ManifestDigester$Position;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v17

    if-nez v17, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string/jumbo v18, "Manifest-Main-Attributes"

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

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10}, Lsun/security/util/ManifestDigester;->findSection(ILsun/security/util/ManifestDigester$Position;)Z

    move-result v17

    if-eqz v17, :cond_a

    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    add-int/lit8 v8, v17, 0x1

    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    move/from16 v17, v0

    sub-int v17, v17, v13

    add-int/lit8 v11, v17, 0x1

    iget v0, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    move/from16 v17, v0

    sub-int v12, v17, v13

    const/16 v17, 0x6

    move/from16 v0, v17

    if-le v8, v0, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lsun/security/util/ManifestDigester;->isNameAttr([BI)Z

    move-result v17

    if-eqz v17, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

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

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v13, v8

    sub-int v17, v6, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_5

    aget-byte v17, p1, v6

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    add-int/lit8 v6, v6, 0x2

    move v7, v6

    :goto_1
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_7

    add-int/lit8 v6, v7, 0x1

    aget-byte v17, p1, v7

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move/from16 v16, v6

    move v7, v6

    :goto_2
    sub-int v17, v7, v13

    move/from16 v0, v17

    if-ge v0, v11, :cond_2

    add-int/lit8 v6, v7, 0x1

    aget-byte v17, p1, v7

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move v7, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_1

    :cond_2
    move v6, v7

    :cond_3
    add-int/lit8 v17, v6, -0x1

    aget-byte v17, p1, v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v17, v6, -0x2

    aget-byte v17, p1, v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    sub-int v17, v6, v16

    add-int/lit8 v15, v17, -0x2

    :goto_3
    new-instance v17, Ljava/lang/String;

    const-string/jumbo v18, "UTF8"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v15, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move v7, v6

    goto :goto_1

    :cond_6
    sub-int v17, v6, v16

    add-int/lit8 v15, v17, -0x1

    goto :goto_3

    :cond_7
    move v6, v7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Lsun/security/util/ManifestDigester$Entry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v11, v12, v1}, Lsun/security/util/ManifestDigester$Entry;-><init>(III[B)V

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    iget v13, v10, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    goto/16 :goto_0

    :catch_0
    move-exception v14

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string/jumbo v18, "UTF8 not available on platform"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_a
    return-void
.end method

.method private findSection(ILsun/security/util/ManifestDigester$Position;)Z
    .locals 8

    const/4 v7, -0x1

    move v2, p1

    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v4, v5

    move v3, p1

    const/4 v0, 0x1

    iput v7, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    :goto_0
    if-ge v2, v4, :cond_6

    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    aget-byte v1, v5, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v2, -0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    :cond_0
    if-ge v2, v4, :cond_1

    iget-object v5, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    add-int/lit8 v6, v2, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :pswitch_2
    iget v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v2, -0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->endOfFirstLine:I

    :cond_2
    if-nez v0, :cond_3

    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_5

    :cond_3
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_4

    iput v2, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    :goto_2
    add-int/lit8 v5, v2, 0x1

    iput v5, p2, Lsun/security/util/ManifestDigester$Position;->startOfNext:I

    const/4 v5, 0x1

    return v5

    :cond_4
    iput v3, p2, Lsun/security/util/ManifestDigester$Position;->endOfSection:I

    goto :goto_2

    :cond_5
    move v3, v2

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    return v5

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

    const/4 v0, 0x0

    aget-byte v1, p1, p2

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, p2

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    :cond_0
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_4

    :cond_1
    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x6d

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_4

    :cond_2
    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_3

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x45

    if-ne v1, v2, :cond_4

    :cond_3
    add-int/lit8 v1, p2, 0x4

    aget-byte v1, p1, v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4

    add-int/lit8 v1, p2, 0x5

    aget-byte v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Lsun/security/util/ManifestDigester$Entry;
    .locals 2

    iget-object v1, p0, Lsun/security/util/ManifestDigester;->entries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ManifestDigester$Entry;

    if-eqz v0, :cond_0

    iput-boolean p2, v0, Lsun/security/util/ManifestDigester$Entry;->oldStyle:Z

    :cond_0
    return-object v0
.end method

.method public manifestDigest(Ljava/security/MessageDigest;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    iget-object v1, p0, Lsun/security/util/ManifestDigester;->rawBytes:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
