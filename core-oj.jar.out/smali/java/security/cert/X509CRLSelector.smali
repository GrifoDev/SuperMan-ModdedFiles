.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private certChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:Ljava/util/Date;

.field private issuerNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private issuerX500Principals:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;

.field private skew:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    .line 79
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 92
    return-void
.end method

.method private addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 290
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 293
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 296
    :cond_1
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method private static cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 315
    .local v2, "namesCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 316
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 318
    .local v1, "nameObject":Ljava/lang/Object;
    instance-of v3, v1, [B

    if-nez v3, :cond_0

    .line 319
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 321
    :cond_0
    instance-of v3, v1, [B

    if-eqz v3, :cond_2

    .line 322
    nop

    nop

    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .restart local v1    # "nameObject":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "name not byte array or String"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v1    # "nameObject":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method private static cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 367
    .local v3, "x500Principals":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljavax/security/auth/x500/X500Principal;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 368
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 369
    .local v1, "nameObject":Ljava/lang/Object;
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 370
    new-instance v4, Lsun/security/x509/X500Name;

    nop

    nop

    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-direct {v4, v1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    .restart local v1    # "nameObject":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    check-cast v1, [B

    .end local v1    # "nameObject":Ljava/lang/Object;
    invoke-direct {v4, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 379
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "issuer"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 223
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 222
    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 246
    return-void
.end method

.method public addIssuerName([B)V
    .locals 2
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    .line 274
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 701
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    .line 702
    .local v0, "copy":Ljava/security/cert/X509CRLSelector;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 704
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 703
    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 706
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 705
    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_0
    return-object v0

    .line 709
    .end local v0    # "copy":Ljava/security/cert/X509CRLSelector;
    :catch_0
    move-exception v1

    .line 711
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 544
    return-object v1

    .line 545
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getIssuerNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 499
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 500
    return-object v1

    .line 502
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->cloneIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getIssuers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 469
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 470
    return-object v1

    .line 472
    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 20
    .param p1, "crl"    # Ljava/security/cert/CRL;

    .prologue
    .line 597
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509CRL;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 598
    const/16 v16, 0x0

    return v16

    :cond_0
    move-object/from16 v15, p1

    .line 600
    check-cast v15, Ljava/security/cert/X509CRL;

    .line 603
    .local v15, "xcrl":Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 604
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    .line 605
    .local v11, "issuer":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 606
    .local v9, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v8, 0x0

    .line 607
    .local v8, "found":Z
    :cond_1
    :goto_0
    if-nez v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 608
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 609
    const/4 v8, 0x1

    goto :goto_0

    .line 612
    :cond_2
    if-nez v8, :cond_4

    .line 613
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_3

    .line 614
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: issuer DNs don\'t match"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 617
    :cond_3
    const/16 v16, 0x0

    return v16

    .line 621
    .end local v8    # "found":Z
    .end local v9    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/security/auth/x500/X500Principal;>;"
    .end local v11    # "issuer":Ljavax/security/auth/x500/X500Principal;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 623
    :cond_5
    const-string/jumbo v16, "2.5.29.20"

    invoke-virtual/range {v15 .. v16}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    .line 624
    .local v4, "crlNumExtVal":[B
    if-nez v4, :cond_6

    .line 625
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_6

    .line 626
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: no CRLNumber"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 631
    :cond_6
    :try_start_0
    new-instance v10, Lsun/security/util/DerInputStream;

    invoke-direct {v10, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 632
    .local v10, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v10}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v6

    .line 634
    .local v6, "encoded":[B
    new-instance v3, Lsun/security/x509/CRLNumberExtension;

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v6}, Lsun/security/x509/CRLNumberExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    .line 635
    .local v3, "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v2, "crlNum":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_9

    .line 647
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_7

    .line 648
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too small"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 650
    :cond_7
    const/16 v16, 0x0

    return v16

    .line 636
    .end local v2    # "crlNum":Ljava/math/BigInteger;
    .end local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .end local v6    # "encoded":[B
    .end local v10    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v7

    .line 637
    .local v7, "ex":Ljava/io/IOException;
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_8

    .line 638
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: exception in decoding CRL number"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 641
    :cond_8
    const/16 v16, 0x0

    return v16

    .line 655
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v2    # "crlNum":Ljava/math/BigInteger;
    .restart local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .restart local v6    # "encoded":[B
    .restart local v10    # "in":Lsun/security/util/DerInputStream;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-lez v16, :cond_b

    .line 657
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_a

    .line 658
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too large"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 660
    :cond_a
    const/16 v16, 0x0

    return v16

    .line 667
    .end local v2    # "crlNum":Ljava/math/BigInteger;
    .end local v3    # "crlNumExt":Lsun/security/x509/CRLNumberExtension;
    .end local v4    # "crlNumExtVal":[B
    .end local v6    # "encoded":[B
    .end local v10    # "in":Lsun/security/util/DerInputStream;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    .line 668
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    .line 669
    .local v5, "crlThisUpdate":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    .line 670
    .local v12, "nextUpdate":Ljava/util/Date;
    if-nez v12, :cond_d

    .line 671
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_c

    .line 672
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: nextUpdate null"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 674
    :cond_c
    const/16 v16, 0x0

    return v16

    .line 676
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 677
    .local v14, "nowPlusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 678
    .local v13, "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_e

    .line 679
    new-instance v14, Ljava/util/Date;

    .end local v14    # "nowPlusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v14, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 680
    .restart local v14    # "nowPlusSkew":Ljava/util/Date;
    new-instance v13, Ljava/util/Date;

    .end local v13    # "nowMinusSkew":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 682
    .restart local v13    # "nowMinusSkew":Ljava/util/Date;
    :cond_e
    invoke-virtual {v13, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v16

    if-nez v16, :cond_f

    .line 683
    invoke-virtual {v14, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v16

    .line 682
    if-eqz v16, :cond_11

    .line 684
    :cond_f
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_10

    .line 685
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: update out of range"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 687
    :cond_10
    const/16 v16, 0x0

    return v16

    .line 691
    .end local v5    # "crlThisUpdate":Ljava/util/Date;
    .end local v12    # "nextUpdate":Ljava/util/Date;
    .end local v13    # "nowMinusSkew":Ljava/util/Date;
    .end local v14    # "nowPlusSkew":Ljava/util/Date;
    :cond_11
    const/16 v16, 0x1

    return v16
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 451
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    .line 450
    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 4
    .param p1, "dateAndTime"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 422
    if-nez p1, :cond_0

    .line 423
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 426
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 421
    return-void

    .line 425
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    goto :goto_0
.end method

.method setDateAndTime(Ljava/util/Date;J)V
    .locals 4
    .param p1, "dateAndTime"    # Ljava/util/Date;
    .param p2, "skew"    # J

    .prologue
    const/4 v0, 0x0

    .line 435
    if-nez p1, :cond_0

    .line 434
    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    .line 436
    iput-wide p2, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    .line 433
    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "names":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 198
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 200
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 197
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    .line 204
    .local v0, "tempNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 205
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    goto :goto_0
.end method

.method public setIssuers(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "issuers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v3, 0x0

    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 124
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 121
    :cond_1
    return-void

    .line 127
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    .line 128
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    .line 129
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    .line 130
    .local v0, "p":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "maxCRL"    # Ljava/math/BigInteger;

    .prologue
    .line 403
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    .line 402
    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "minCRL"    # Ljava/math/BigInteger;

    .prologue
    .line 391
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    .line 390
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 569
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 570
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "X509CRLSelector: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 572
    const-string/jumbo v2, "  IssuerNames:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 574
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 577
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  minCRLNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 579
    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  maxCRLNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-eqz v2, :cond_3

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  dateAndTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 583
    :cond_3
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_4

    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Certificate being checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    :cond_4
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
