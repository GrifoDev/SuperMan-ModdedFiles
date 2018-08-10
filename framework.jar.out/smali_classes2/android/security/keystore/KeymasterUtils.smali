.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[B)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keymaster/KeymasterArguments;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[B",
            "Ljavax/security/auth/x500/X500Principal;",
            "[B)V"
        }
    .end annotation

    const v21, 0x700007d0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    new-instance v8, Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v7, "wpa_supplicant"

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v4, "/system/bin/keystore"

    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_5

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const-string/jumbo v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "u"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    add-int/lit8 v21, v17, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/security/keystore/KeymasterUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "administrator ids must be printable characters"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const v22, -0x6ffff82e

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_5
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v21

    if-eqz v21, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v20

    const-string/jumbo v21, "_"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v21, -0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "u"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/lit8 v21, v17, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    const-string/jumbo v19, "u*_com.android.keychain"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-eqz v21, :cond_9

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :cond_9
    invoke-static/range {v19 .. v19}, Landroid/security/keystore/KeymasterUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "accessor ids must be printable characters"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const v22, -0x6ffff82d

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_b
    const/16 v18, 0x0

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    array-length v9, v0

    const/16 v21, 0x9

    move/from16 v0, v21

    if-gt v9, v0, :cond_d

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_e

    aget-boolean v21, p3, v12

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    shl-int v21, v21, v12

    or-int v18, v18, v21

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_d
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "key usage array size incorrect "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_e
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    sget-object v22, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteOrder;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v18

    :cond_f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->reverse(I)I

    move-result v18

    if-eqz v18, :cond_10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const v21, 0x30000838

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    :cond_10
    if-eqz p4, :cond_14

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    aget-object v11, p4, v21

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-eqz v23, :cond_11

    const-string/jumbo v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const v22, -0x6ffff7c7

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_14
    if-eqz p8, :cond_15

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_15

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    if-eqz v21, :cond_15

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_15

    const-string/jumbo v21, "RFC1779"

    move-object/from16 v0, p8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const v22, -0x6ffff7c9

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_15
    if-eqz p5, :cond_16

    const-string/jumbo v21, "samsung"

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const v22, -0x6ffff7ca

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_16
    if-eqz p6, :cond_17

    const v21, 0x70000899

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    if-eqz p7, :cond_17

    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_17

    const v21, -0x6ffffd3c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_17
    if-eqz p9, :cond_18

    move-object/from16 v0, p9

    array-length v0, v0

    move/from16 v21, v0

    if-eqz v21, :cond_18

    const v21, -0x6ffff7c6

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_18
    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5

    const v4, 0x30000008

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v2, 0x20

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x60

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    :sswitch_1
    array-length v2, p3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Exactly one digest must be authorized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v2, 0x0

    aget v1, p3, v2

    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    int-to-long v2, v0

    invoke-virtual {p0, v4, v2, v3}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    .locals 17

    if-nez p1, :cond_0

    const v14, 0x700001f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    return-void

    :cond_0
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_c

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v4

    :goto_0
    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAuthenticatorId()J

    move-result-wide v8

    :goto_1
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getAuthenticatorId()J

    move-result-wide v6

    :goto_2
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-nez v14, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/IllegalStateException;

    const-string/jumbo v15, "At least one fingerprint/iris/intelligentScan must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_1

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-eqz v14, :cond_6

    move-wide/from16 v12, p5

    :cond_5
    :goto_3
    const v14, 0x100001f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    if-eqz p3, :cond_d

    new-instance v14, Ljava/security/ProviderException;

    const-string/jumbo v15, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v14, v15}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    if-eqz p4, :cond_9

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-eqz v14, :cond_7

    invoke-static {v4, v5}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    const v15, -0x5ffffe0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const/4 v2, 0x2

    :cond_7
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-eqz v14, :cond_8

    const v14, 0x70002af8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_8

    invoke-static {v8, v9}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    const v15, -0x5ffffe0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    or-int/lit8 v2, v2, 0x4

    :cond_8
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_5

    const v14, 0x70002af8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_5

    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    const v15, -0x5ffffe0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    or-int/lit8 v2, v2, 0x10

    goto :goto_3

    :cond_9
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    const v15, -0x5ffffe0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-eqz v14, :cond_a

    const/4 v2, 0x2

    :cond_a
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-eqz v14, :cond_b

    or-int/lit8 v2, v2, 0x4

    :cond_b
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-eqz v14, :cond_5

    or-int/lit8 v2, v2, 0x10

    goto/16 :goto_3

    :cond_c
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-eqz v14, :cond_e

    move-wide/from16 v12, p5

    :goto_4
    invoke-static {v12, v13}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v14

    const v15, -0x5ffffe0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const v14, 0x100001f8

    const/16 v15, 0x17

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    move/from16 v0, p2

    int-to-long v14, v0

    const v16, 0x300001f9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v15}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    if-eqz p3, :cond_d

    const v14, 0x700001fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v12

    goto :goto_4
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, -0x1

    return v0

    :pswitch_1
    const/16 v0, 0x80

    return v0

    :pswitch_2
    const/16 v0, 0xa0

    return v0

    :pswitch_3
    const/16 v0, 0xe0

    return v0

    :pswitch_4
    const/16 v0, 0x100

    return v0

    :pswitch_5
    const/16 v0, 0x180

    return v0

    :pswitch_6
    const/16 v0, 0x200

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-wide v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isPrintable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method
