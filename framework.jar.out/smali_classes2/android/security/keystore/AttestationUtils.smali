.class public abstract Landroid/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# static fields
.field public static final ID_TYPE_IMEI:I = 0x2

.field public static final ID_TYPE_MEID:I = 0x3

.field public static final ID_TYPE_SERIAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attestDeviceIds(Landroid/content/Context;[I[B)[Ljava/security/cert/X509Certificate;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v17, Ljava/lang/NullPointerException;

    const-string/jumbo v18, "Missing id types"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    if-nez p2, :cond_1

    new-instance v17, Ljava/lang/NullPointerException;

    const-string/jumbo v18, "Missing attestation challenge"

    invoke-direct/range {v17 .. v18}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v17, -0x6ffffd3c

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    new-instance v11, Landroid/util/ArraySet;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/util/ArraySet;-><init>(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v8, p1, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :cond_3
    const-string/jumbo v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/telephony/TelephonyManager;

    if-nez v16, :cond_4

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    const-string/jumbo v18, "Unable to access telephony service"

    invoke-direct/range {v17 .. v18}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_4
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Unknown device ID type "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_0
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd37

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_1

    :pswitch_1
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_5

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    const-string/jumbo v18, "Unable to retrieve IMEI"

    invoke-direct/range {v17 .. v18}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_5
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd36

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    const-string/jumbo v18, "Unable to retrieve MEID"

    invoke-direct/range {v17 .. v18}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_6
    sget-object v17, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd35

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto/16 :goto_1

    :cond_7
    sget-object v17, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd3a

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    sget-object v17, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd39

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    sget-object v17, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd38

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    sget-object v17, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd34

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v18, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v17

    const v18, -0x6ffffd33

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    new-instance v14, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v14}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v14}, Landroid/security/KeyStore;->attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_8

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    const-string/jumbo v18, "Unable to perform attestation"

    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_8
    invoke-virtual {v14}, Landroid/security/keymaster/KeymasterCertificateChain;->getCertificates()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Attestation certificate chain contained "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " entries. At least two are required."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_9
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v5, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    new-instance v17, Landroid/security/keystore/DeviceIdAttestationException;

    const-string/jumbo v18, "Unable to construct certificate chain"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Landroid/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    :cond_a
    :try_start_1
    const-string/jumbo v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v17

    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v17

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
