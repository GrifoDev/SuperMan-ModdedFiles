.class final Landroid/net/wifi/WifiEnterpriseConfig$1;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiEnterpriseConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 359
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 361
    :try_start_0
    new-array v0, v4, [B

    .line 362
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 363
    const-string/jumbo v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 365
    .local v1, "cFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 364
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v0    # "bytes":[B
    .end local v1    # "cFactory":Ljava/security/cert/CertificateFactory;
    :cond_0
    :goto_0
    return-object v2

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Ljava/security/cert/CertificateException;
    const/4 v2, 0x0

    .restart local v2    # "cert":Ljava/security/cert/X509Certificate;
    goto :goto_0
.end method

.method private readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 347
    .local v2, "len":I
    if-lez v2, :cond_0

    .line 348
    new-array v0, v2, [Ljava/security/cert/X509Certificate;

    .line 349
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 350
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    aput-object v3, v0, v1

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 17
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 292
    new-instance v6, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v6}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 293
    .local v6, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .local v3, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 296
    .local v10, "key":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->-get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 300
    .end local v10    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I

    .line 302
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificates(Landroid/os/Parcel;)[Ljava/security/cert/X509Certificate;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    .line 304
    const/4 v13, 0x0

    .line 305
    .local v13, "userKey":Ljava/security/PrivateKey;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 306
    .local v12, "len":I
    if-lez v12, :cond_1

    .line 308
    :try_start_0
    new-array v2, v12, [B

    .line 309
    .local v2, "bytes":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 310
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "algorithm":Ljava/lang/String;
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    .line 312
    .local v11, "keyFactory":Ljava/security/KeyFactory;
    new-instance v15, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v15, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v11, v15}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 320
    .end local v1    # "algorithm":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v11    # "keyFactory":Ljava/security/KeyFactory;
    .end local v13    # "userKey":Ljava/security/PrivateKey;
    :cond_1
    :goto_1
    invoke-static {v6, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->-set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    .line 321
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x1

    :goto_2
    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set5(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z

    .line 327
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set6(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 328
    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->readCertificate(Landroid/os/Parcel;)Ljava/security/cert/X509Certificate;

    move-result-object v15

    invoke-static {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->-set7(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 333
    .local v8, "isCCMEnabled":I
    const/4 v15, 0x1

    if-ne v8, v15, :cond_2

    .line 334
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 336
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 337
    .local v9, "isUCMEnabled":I
    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    .line 338
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    .line 341
    :cond_3
    return-object v6

    .line 315
    .end local v8    # "isCCMEnabled":I
    .end local v9    # "isUCMEnabled":I
    .restart local v13    # "userKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v5

    .line 316
    .local v5, "e":Ljava/security/spec/InvalidKeySpecException;
    const/4 v13, 0x0

    goto :goto_1

    .line 313
    .end local v5    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v4

    .line 314
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v13, 0x0

    goto :goto_1

    .line 322
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v13    # "userKey":Ljava/security/PrivateKey;
    :cond_4
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 374
    new-array v0, p1, [Landroid/net/wifi/WifiEnterpriseConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig$1;->newArray(I)[Landroid/net/wifi/WifiEnterpriseConfig;

    move-result-object v0

    return-object v0
.end method
