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

    invoke-static {}, Ljava/security/cert/CertPathHelperImpl;->initialize()V

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    return-void
.end method

.method private addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, [B

    if-nez v3, :cond_0

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    instance-of v3, v1, [B

    if-eqz v3, :cond_2

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "name not byte array or String"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    :try_start_0
    invoke-static {p0}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

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

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Lsun/security/x509/X500Name;

    nop

    nop

    invoke-direct {v4, v1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    check-cast v1, [B

    invoke-direct {v4, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/io/IOException;

    throw v4

    :cond_1
    return-object v3
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    return-void
.end method

.method public addIssuerName([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerNameInternal(Ljava/lang/Object;Ljavax/security/auth/x500/X500Principal;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-nez v0, :cond_0

    return-object v1

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-object v1

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

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .locals 20

    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509CRL;

    move/from16 v16, v0

    if-nez v16, :cond_0

    const/16 v16, 0x0

    return v16

    :cond_0
    move-object/from16 v15, p1

    check-cast v15, Ljava/security/cert/X509CRL;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v8, 0x0

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    if-nez v8, :cond_4

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_3

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: issuer DNs don\'t match"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/16 v16, 0x0

    return v16

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    :cond_5
    const-string/jumbo v16, "2.5.29.20"

    invoke-virtual/range {v15 .. v16}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_6

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: no CRLNumber"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    new-instance v10, Lsun/security/util/DerInputStream;

    invoke-direct {v10, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v10}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v6

    new-instance v3, Lsun/security/x509/CRLNumberExtension;

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v6}, Lsun/security/x509/CRLNumberExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    const-string/jumbo v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lsun/security/x509/CRLNumberExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_9

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_7

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too small"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_7
    const/16 v16, 0x0

    return v16

    :catch_0
    move-exception v7

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_8

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: exception in decoding CRL number"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_8
    const/16 v16, 0x0

    return v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-lez v16, :cond_b

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_a

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: CRLNumber too large"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_a
    const/16 v16, 0x0

    return v16

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    if-nez v12, :cond_d

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_c

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: nextUpdate null"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_c
    const/16 v16, 0x0

    return v16

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/security/cert/X509CRLSelector;->skew:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_e

    new-instance v14, Ljava/util/Date;

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

    new-instance v13, Ljava/util/Date;

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

    :cond_e
    invoke-virtual {v13, v12}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v16

    if-nez v16, :cond_f

    invoke-virtual {v14, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v16

    if-eqz v16, :cond_11

    :cond_f
    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    if-eqz v16, :cond_10

    sget-object v16, Ljava/security/cert/X509CRLSelector;->debug:Lsun/security/util/Debug;

    const-string/jumbo v17, "X509CRLSelector.match: update out of range"

    invoke-virtual/range {v16 .. v17}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_10
    const/16 v16, 0x0

    return v16

    :cond_11
    const/16 v16, 0x1

    return v16
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    return-void

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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    iput-wide p2, p0, Ljava/security/cert/X509CRLSelector;->skew:J

    return-void

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

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/security/cert/X509CRLSelector;->cloneAndCheckIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/X509CRLSelector;->parseIssuerNames(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

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

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerX500Principals:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "X509CRLSelector: [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "  IssuerNames:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

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

    :cond_0
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v2, :cond_1

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

    :cond_1
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v2, :cond_2

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

    :cond_2
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:Ljava/util/Date;

    if-eqz v2, :cond_3

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

    :cond_3
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->certChecking:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_4

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

    :cond_4
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
