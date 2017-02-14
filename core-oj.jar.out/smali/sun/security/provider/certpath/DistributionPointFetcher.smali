.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final ALL_REASONS:[Z

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v3

    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_0

    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to fetch CRL from DP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v4, v3}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    invoke-static {v4}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v7

    :catch_0
    move-exception v1

    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t create URICertStore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    return-object v7

    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    return-object v4
.end method

.method private static getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v18

    if-nez v18, :cond_1

    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v22

    if-nez v22, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v14

    if-nez v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    :cond_1
    :goto_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    check-cast v26, Lsun/security/x509/X500Name;

    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, p8

    invoke-static {v0, v2, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v16

    move-object/from16 v23, v16

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lsun/security/x509/GeneralNames;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto :goto_0

    :catch_1
    move-exception v19

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    :cond_5
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v25

    check-cast v25, Lsun/security/x509/URIName;

    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/cert/CertStoreException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v23, :cond_7

    throw v23

    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    invoke-static/range {v2 .. v12}, Lsun/security/provider/certpath/DistributionPointFetcher;->verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v17

    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8

    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception verifying CRL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_9
    return-object v15
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509CRLSelector;",
            "Z",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;[Z",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v12

    if-nez v12, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    if-nez v15, :cond_3

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "No CRLDP ext"

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_3
    const-string/jumbo v1, "points"

    invoke-virtual {v15, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_5

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " CRLs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_5
    return-object v17

    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/DistributionPoint;

    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X500Name;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_0

    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Trying to fetch CRL from DP "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v7, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v7}, Ljava/security/cert/X509CRLSelector;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {v7, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    :try_start_0
    invoke-virtual {v5, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception while retrieving CRLs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    new-instance v4, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    invoke-virtual {v5}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    throw v4

    :cond_4
    return-object v2
.end method

.method private static getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lsun/security/x509/X500Name;

    const/4 v3, 0x0

    new-array v3, v3, [Lsun/security/x509/RDN;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/x509/RDN;

    invoke-direct {v0, v3}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    new-instance v3, Lsun/security/x509/GeneralName;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v1, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    return-object v1
.end method

.method private static issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-boolean v6, v5, v7

    invoke-virtual {v3, v5}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    :cond_1
    invoke-virtual {v3, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :cond_3
    :goto_0
    return v4

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    goto :goto_0
.end method

.method static verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/x509/X509CertImpl;",
            "Lsun/security/x509/DistributionPoint;",
            "Ljava/security/cert/X509CRL;",
            "[ZZ",
            "Ljava/security/PublicKey;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/Date;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v30, 0x0

    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v14

    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X500Name;

    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    check-cast v15, Lsun/security/x509/X500Name;

    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v39

    const/16 v38, 0x0

    if-eqz v39, :cond_9

    if-eqz v25, :cond_0

    const-string/jumbo v50, "indirect_crl"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Boolean;

    sget-object v51, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_1

    :cond_0
    const/16 v50, 0x0

    return v50

    :cond_1
    const/16 v32, 0x0

    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_2
    :goto_0
    if-nez v32, :cond_3

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_3

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_2

    move-object/from16 v38, v33

    check-cast v38, Lsun/security/x509/X500Name;

    const/16 v32, 0x1

    goto :goto_0

    :cond_3
    if-nez v32, :cond_4

    const/16 v50, 0x0

    return v50

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_8

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    :cond_5
    :goto_1
    if-nez v30, :cond_6

    if-eqz p4, :cond_f

    :cond_6
    if-eqz v25, :cond_29

    const-string/jumbo v50, "point"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lsun/security/x509/DistributionPointName;

    if-eqz v28, :cond_23

    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v27

    if-nez v27, :cond_12

    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v45

    if-nez v45, :cond_10

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_7

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "IDP must be relative or full DN"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_7
    const/16 v50, 0x0

    return v50

    :cond_8
    const/16 v30, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v15, v10}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_b

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_a

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "crl issuer does not equal cert issuer"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_a
    const/16 v50, 0x0

    return v50

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v9

    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v13

    if-eqz v9, :cond_c

    if-nez v13, :cond_d

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_5

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_1

    :cond_d
    invoke-virtual {v9, v13}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_e

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_1

    :cond_e
    const/16 v30, 0x1

    goto :goto_1

    :cond_f
    const/16 v50, 0x0

    return v50

    :cond_10
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_11

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "IDP relativeName:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v27

    :cond_12
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v50

    if-nez v50, :cond_13

    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v50

    if-eqz v50, :cond_20

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v41

    if-nez v41, :cond_19

    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v45

    if-nez v45, :cond_15

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_14

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "DP must be relative or full DN"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_14
    const/16 v50, 0x0

    return v50

    :cond_15
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_16

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "DP relativeName:"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_16
    if-eqz v30, :cond_1d

    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_18

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_17

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "must only be one CRL issuer when relative name present"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_17
    const/16 v50, 0x0

    return v50

    :cond_18
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v41

    :cond_19
    :goto_2
    const/16 v32, 0x0

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1a
    if-nez v32, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1b

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "idpName: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1b
    invoke-virtual/range {v41 .. v41}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_3
    if-nez v32, :cond_1a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_1a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v40

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1c

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "pointName: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    goto :goto_3

    :cond_1d
    move-object/from16 v0, v45

    invoke-static {v10, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v41

    goto :goto_2

    :cond_1e
    if-nez v32, :cond_23

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1f

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "IDP name does not match DP name"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1f
    const/16 v50, 0x0

    return v50

    :cond_20
    const/16 v32, 0x0

    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_21
    if-nez v32, :cond_22

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_22

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_4
    if-nez v32, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    goto :goto_4

    :cond_22
    if-nez v32, :cond_23

    const/16 v50, 0x0

    return v50

    :cond_23
    const-string/jumbo v50, "only_user_certs"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_25

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v50

    const/16 v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_25

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_24

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must be a EE cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_24
    const/16 v50, 0x0

    return v50

    :cond_25
    const-string/jumbo v50, "only_ca_certs"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_27

    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getBasicConstraints()I

    move-result v50

    const/16 v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_27

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_26

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must be a CA cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_26
    const/16 v50, 0x0

    return v50

    :cond_27
    const-string/jumbo v50, "only_attribute_certs"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_29

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_28

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must not be an AA cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_28
    const/16 v50, 0x0

    return v50

    :cond_29
    const/16 v50, 0x9

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v31, v0

    const/16 v44, 0x0

    if-eqz v25, :cond_2a

    const-string/jumbo v50, "reasons"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lsun/security/x509/ReasonFlags;

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    move-result-object v42

    if-eqz v44, :cond_2f

    if-eqz v42, :cond_2c

    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v29

    const/16 v22, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_2d

    aget-boolean v50, v29, v22

    if-eqz v50, :cond_2b

    aget-boolean v50, v42, v22

    if-eqz v50, :cond_2b

    const/16 v50, 0x1

    aput-boolean v50, v31, v22

    :cond_2b
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_2c
    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Z

    :cond_2d
    :goto_6
    const/16 v35, 0x0

    const/16 v22, 0x0

    :goto_7
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_2e

    if-eqz v35, :cond_32

    :cond_2e
    if-nez v35, :cond_34

    const/16 v50, 0x0

    return v50

    :cond_2f
    if-eqz v25, :cond_30

    if-nez v44, :cond_2d

    :cond_30
    if-eqz v42, :cond_31

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Z

    goto :goto_6

    :cond_31
    const/16 v50, 0x9

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v31, v0

    const/16 v50, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_6

    :cond_32
    aget-boolean v50, p3, v22

    if-nez v50, :cond_33

    aget-boolean v50, v31, v22

    if-eqz v50, :cond_33

    const/16 v35, 0x1

    :cond_33
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :cond_34
    if-eqz v30, :cond_38

    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {v15}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    const/16 v50, 0x7

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v5

    if-eqz v5, :cond_36

    const-string/jumbo v50, "key_id"

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/KeyIdentifier;

    if-eqz v4, :cond_35

    new-instance v18, Lsun/security/util/DerOutputStream;

    invoke-direct/range {v18 .. v18}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v4}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v50

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    :cond_35
    const-string/jumbo v50, "serial_number"

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/SerialNumber;

    if-eqz v6, :cond_36

    invoke-virtual {v6}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    :cond_36
    new-instance v34, Ljava/util/HashSet;

    move-object/from16 v0, v34

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz p5, :cond_37

    if-eqz p6, :cond_39

    new-instance v48, Ljava/security/cert/TrustAnchor;

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p6

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_37
    const/16 v37, 0x0

    :try_start_0
    new-instance v37, Ljava/security/cert/PKIXBuilderParameters;

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v11}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, v37

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    :try_start_1
    const-string/jumbo v50, "PKIX"

    invoke-static/range {v50 .. v50}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v46

    check-cast v46, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual/range {v46 .. v46}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p5

    :cond_38
    :try_start_2
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v49

    if-eqz v49, :cond_3d

    sget-object v50, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual/range {v50 .. v50}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-interface/range {v49 .. v50}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_3d

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3c

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "Unrecognized critical extension(s) in CRL: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    invoke-interface/range {v49 .. v49}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_3c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v43

    new-instance v48, Ljava/security/cert/TrustAnchor;

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v43

    move-object/from16 v2, p5

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    goto/16 :goto_8

    :catch_0
    move-exception v24

    new-instance v50, Ljava/security/cert/CRLException;

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v50

    :catch_1
    move-exception v19

    new-instance v50, Ljava/security/cert/CRLException;

    move-object/from16 v0, v50

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v50

    :catch_2
    move-exception v12

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3a

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "CRL signature algorithm check failed: "

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3a
    const/16 v50, 0x0

    return v50

    :catch_3
    move-exception v19

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3b

    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "CRL signature failed to verify"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_3b
    const/16 v50, 0x0

    return v50

    :cond_3c
    const/16 v50, 0x0

    return v50

    :cond_3d
    const/16 v22, 0x0

    :goto_a
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_3f

    aget-boolean v50, p3, v22

    if-nez v50, :cond_3e

    aget-boolean v50, v31, v22

    if-eqz v50, :cond_3e

    const/16 v50, 0x1

    aput-boolean v50, p3, v22

    :cond_3e
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    :cond_3f
    const/16 v50, 0x1

    return v50

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method
