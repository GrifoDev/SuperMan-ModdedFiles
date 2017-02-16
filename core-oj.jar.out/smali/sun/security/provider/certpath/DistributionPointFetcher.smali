.class public Lsun/security/provider/certpath/DistributionPointFetcher;
.super Ljava/lang/Object;
.source "DistributionPointFetcher.java"


# static fields
.field private static final ALL_REASONS:[Z

.field private static final debug:Lsun/security/util/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    .line 57
    sput-object v0, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    .line 53
    return-void

    .line 58
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

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;
    .locals 8
    .param p0, "name"    # Lsun/security/x509/URIName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 230
    invoke-virtual {p0}, Lsun/security/x509/URIName;->getURI()Ljava/net/URI;

    move-result-object v3

    .line 231
    .local v3, "uri":Ljava/net/URI;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_0

    .line 232
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

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 237
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :try_start_0
    new-instance v4, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;

    invoke-direct {v4, v3}, Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;-><init>(Ljava/net/URI;)V

    .line 236
    invoke-static {v4}, Lsun/security/provider/certpath/URICertStore;->getInstance(Lsun/security/provider/certpath/URICertStore$URICertStoreParameters;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 246
    .local v2, "ucs":Ljava/security/cert/CertStore;
    invoke-virtual {v2, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    .line 247
    .local v0, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 248
    return-object v7

    .line 239
    .end local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v4, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v4, :cond_1

    .line 241
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

    .line 243
    :cond_1
    return-object v7

    .line 250
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .restart local v0    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .local v2, "ucs":Ljava/security/cert/CertStore;
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
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p2, "point"    # Lsun/security/x509/DistributionPoint;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
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

    .prologue
    .line 153
    .local p8, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p9, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v18

    .line 154
    .local v18, "fullName":Lsun/security/x509/GeneralNames;
    if-nez v18, :cond_1

    .line 156
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v22

    .line 157
    .local v22, "relativeName":Lsun/security/x509/RDN;
    if-nez v22, :cond_0

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v14

    .line 162
    .local v14, "crlIssuers":Lsun/security/x509/GeneralNames;
    if-nez v14, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 163
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 178
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_1
    :goto_0
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v21, "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/16 v23, 0x0

    .line 180
    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-virtual/range {v18 .. v18}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v24, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 182
    :try_start_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lsun/security/x509/GeneralName;

    .line 183
    .local v20, "name":Lsun/security/x509/GeneralName;
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 184
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    check-cast v26, Lsun/security/x509/X500Name;

    .line 186
    .local v26, "x500Name":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    move-object/from16 v0, v26

    move-object/from16 v1, p8

    invoke-static {v0, v2, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    .line 185
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v26    # "x500Name":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v16

    .line 196
    .local v16, "cse":Ljava/security/cert/CertStoreException;
    move-object/from16 v23, v16

    .local v23, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_1

    .line 167
    .end local v16    # "cse":Ljava/security/cert/CertStoreException;
    .end local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v23    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .restart local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    .restart local v22    # "relativeName":Lsun/security/x509/RDN;
    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lsun/security/x509/GeneralNames;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 171
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lsun/security/x509/GeneralNames;->get(I)Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v2

    check-cast v2, Lsun/security/x509/X500Name;

    .line 170
    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto :goto_0

    .line 174
    .end local v14    # "crlIssuers":Lsun/security/x509/GeneralNames;
    :catch_1
    move-exception v19

    .line 175
    .local v19, "ioe":Ljava/io/IOException;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 188
    .end local v19    # "ioe":Ljava/io/IOException;
    .end local v22    # "relativeName":Lsun/security/x509/RDN;
    .restart local v20    # "name":Lsun/security/x509/GeneralName;
    .restart local v21    # "possibleCRLs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .restart local v24    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_5
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 189
    invoke-virtual/range {v20 .. v20}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v25

    check-cast v25, Lsun/security/x509/URIName;

    .line 190
    .local v25, "uriName":Lsun/security/x509/URIName;
    invoke-static/range {v25 .. v25}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRL(Lsun/security/x509/URIName;)Ljava/security/cert/X509CRL;

    move-result-object v4

    .line 191
    .local v4, "crl":Ljava/security/cert/X509CRL;
    if-eqz v4, :cond_2

    .line 192
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/security/cert/CertStoreException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 200
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v20    # "name":Lsun/security/x509/GeneralName;
    .end local v25    # "uriName":Lsun/security/x509/URIName;
    :cond_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v23, :cond_7

    .line 201
    throw v23

    .line 204
    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .local v15, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "crl$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 209
    .restart local v4    # "crl":Ljava/security/cert/X509CRL;
    const/4 v2, 0x0

    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/security/cert/X509CRLSelector;->setIssuerNames(Ljava/util/Collection;)V

    .line 210
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

    .line 213
    invoke-interface {v15, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CRLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 215
    :catch_2
    move-exception v17

    .line 217
    .local v17, "e":Ljava/lang/Exception;
    sget-object v2, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_8

    .line 218
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

    .line 219
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 223
    .end local v4    # "crl":Ljava/security/cert/X509CRL;
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_9
    return-object v15
.end method

.method public static getCRLs(Ljava/security/cert/X509CRLSelector;ZLjava/security/PublicKey;Ljava/lang/String;Ljava/util/List;[ZLjava/util/Set;Ljava/util/Date;)Ljava/util/Collection;
    .locals 9
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "provider"    # Ljava/lang/String;
    .param p5, "reasonsMask"    # [Z
    .param p7, "validity"    # Ljava/util/Date;
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

    .prologue
    .line 79
    .local p4, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p6, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
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
    .param p0, "selector"    # Ljava/security/cert/X509CRLSelector;
    .param p1, "signFlag"    # Z
    .param p2, "prevKey"    # Ljava/security/PublicKey;
    .param p3, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "provider"    # Ljava/lang/String;
    .param p6, "reasonsMask"    # [Z
    .param p8, "validity"    # Ljava/util/Date;
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

    .prologue
    .line 98
    .local p5, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p7, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 99
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-nez v12, :cond_0

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 103
    :cond_0
    :try_start_0
    invoke-static {v12}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    .line 104
    .local v2, "certImpl":Lsun/security/x509/X509CertImpl;
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_1

    .line 105
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DistributionPointFetcher.getCRLs: Checking CRLDPs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-virtual {v2}, Lsun/security/x509/X509CertImpl;->getCRLDistributionPointsExtension()Lsun/security/x509/CRLDistributionPointsExtension;

    move-result-object v15

    .line 110
    .local v15, "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    if-nez v15, :cond_3

    .line 111
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    .line 112
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "No CRLDP ext"

    invoke-virtual {v1, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 114
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 117
    :cond_3
    const-string/jumbo v1, "points"

    invoke-virtual {v15, v1}, Lsun/security/x509/CRLDistributionPointsExtension;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 118
    .local v16, "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v17, "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 120
    .local v18, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->ALL_REASONS:[Z

    move-object/from16 v0, p6

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    :cond_4
    sget-object v1, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_5

    .line 128
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

    .line 130
    :cond_5
    return-object v17

    .line 121
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/DistributionPoint;

    .local v3, "point":Lsun/security/x509/DistributionPoint;
    move-object/from16 v1, p0

    move-object/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 122
    invoke-static/range {v1 .. v11}, Lsun/security/provider/certpath/DistributionPointFetcher;->getCRLs(Ljava/security/cert/X509CRLSelector;Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Date;)Ljava/util/Collection;

    move-result-object v13

    .line 125
    .local v13, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v2    # "certImpl":Lsun/security/x509/X509CertImpl;
    .end local v3    # "point":Lsun/security/x509/DistributionPoint;
    .end local v13    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    .end local v15    # "ext":Lsun/security/x509/CRLDistributionPointsExtension;
    .end local v16    # "points":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/DistributionPoint;>;"
    .end local v17    # "results":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509CRL;>;"
    .end local v18    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/DistributionPoint;>;"
    :catch_0
    move-exception v14

    .line 132
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getCRLs(Lsun/security/x509/X500Name;Ljavax/security/auth/x500/X500Principal;Ljava/util/List;)Ljava/util/Collection;
    .locals 11
    .param p0, "name"    # Lsun/security/x509/X500Name;
    .param p1, "certIssuer"    # Ljavax/security/auth/x500/X500Principal;
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

    .prologue
    .line 267
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_0

    .line 268
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

    .line 270
    :cond_0
    new-instance v7, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v7}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 271
    .local v7, "xcs":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 272
    invoke-virtual {v7, p1}, Ljava/security/cert/X509CRLSelector;->addIssuer(Ljavax/security/auth/x500/X500Principal;)V

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509CRL;>;"
    const/4 v4, 0x0

    .line 275
    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .local v6, "store$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertStore;

    .line 277
    .local v5, "store":Ljava/security/cert/CertStore;
    :try_start_0
    invoke-virtual {v5, v7}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "crl$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;

    .line 278
    .local v0, "crl":Ljava/security/cert/CRL;
    check-cast v0, Ljava/security/cert/X509CRL;

    .end local v0    # "crl":Ljava/security/cert/CRL;
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 280
    .end local v1    # "crl$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 281
    .local v3, "cse":Ljava/security/cert/CertStoreException;
    sget-object v8, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v8, :cond_2

    .line 282
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

    .line 284
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    :cond_2
    new-instance v4, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;

    invoke-virtual {v5}, Ljava/security/cert/CertStore;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v3}, Lsun/security/provider/certpath/PKIX$CertStoreTypeException;-><init>(Ljava/lang/String;Ljava/security/cert/CertStoreException;)V

    .local v4, "savedCSE":Ljava/security/cert/CertStoreException;
    goto :goto_0

    .line 290
    .end local v3    # "cse":Ljava/security/cert/CertStoreException;
    .end local v4    # "savedCSE":Ljava/security/cert/CertStoreException;
    .end local v5    # "store":Ljava/security/cert/CertStore;
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v4, :cond_4

    .line 291
    throw v4

    .line 293
    :cond_4
    return-object v2
.end method

.method private static getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;
    .locals 4
    .param p0, "issuer"    # Lsun/security/x509/X500Name;
    .param p1, "rdn"    # Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 711
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->rdns()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 712
    .local v2, "rdns":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v0, Lsun/security/x509/X500Name;

    const/4 v3, 0x0

    new-array v3, v3, [Lsun/security/x509/RDN;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lsun/security/x509/RDN;

    invoke-direct {v0, v3}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V

    .line 714
    .local v0, "fullName":Lsun/security/x509/X500Name;
    new-instance v1, Lsun/security/x509/GeneralNames;

    invoke-direct {v1}, Lsun/security/x509/GeneralNames;-><init>()V

    .line 715
    .local v1, "fullNames":Lsun/security/x509/GeneralNames;
    new-instance v3, Lsun/security/x509/GeneralName;

    invoke-direct {v3, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/x509/GeneralNameInterface;)V

    invoke-virtual {v1, v3}, Lsun/security/x509/GeneralNames;->add(Lsun/security/x509/GeneralName;)Lsun/security/x509/GeneralNames;

    .line 716
    return-object v1
.end method

.method private static issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z
    .locals 8
    .param p0, "cert"    # Lsun/security/x509/X509CertImpl;
    .param p1, "crl"    # Lsun/security/x509/X509CRLImpl;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    const/4 v4, 0x0

    .line 732
    .local v4, "matched":Z
    new-instance v3, Lsun/security/provider/certpath/AdaptableX509CertSelector;

    invoke-direct {v3}, Lsun/security/provider/certpath/AdaptableX509CertSelector;-><init>()V

    .line 735
    .local v3, "issuerSelector":Lsun/security/provider/certpath/AdaptableX509CertSelector;
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getKeyUsage()[Z

    move-result-object v5

    .line 736
    .local v5, "usages":[Z
    if-eqz v5, :cond_0

    .line 737
    const/4 v6, 0x1

    const/4 v7, 0x6

    aput-boolean v6, v5, v7

    .line 738
    invoke-virtual {v3, v5}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 742
    :cond_0
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 743
    .local v1, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v1}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 753
    invoke-virtual {p1}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 754
    .local v0, "crlAKID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {v3, v0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->parseAuthorityKeyIdentifierExtension(Lsun/security/x509/AuthorityKeyIdentifierExtension;)V

    .line 758
    :cond_1
    invoke-virtual {v3, p0}, Lsun/security/provider/certpath/AdaptableX509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    .line 761
    .local v4, "matched":Z
    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v6

    if-nez v6, :cond_3

    .line 764
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6, p2}, Lsun/security/x509/X509CRLImpl;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v4, 0x1

    .line 771
    .end local v4    # "matched":Z
    :cond_3
    :goto_0
    return v4

    .line 766
    .restart local v4    # "matched":Z
    :catch_0
    move-exception v2

    .line 767
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const/4 v4, 0x0

    .local v4, "matched":Z
    goto :goto_0
.end method

.method static verifyCRL(Lsun/security/x509/X509CertImpl;Lsun/security/x509/DistributionPoint;Ljava/security/cert/X509CRL;[ZZLjava/security/PublicKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/Date;)Z
    .locals 53
    .param p0, "certImpl"    # Lsun/security/x509/X509CertImpl;
    .param p1, "point"    # Lsun/security/x509/DistributionPoint;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .param p3, "reasonsMask"    # [Z
    .param p4, "signFlag"    # Z
    .param p5, "prevKey"    # Ljava/security/PublicKey;
    .param p6, "prevCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "provider"    # Ljava/lang/String;
    .param p10, "validity"    # Ljava/util/Date;
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

    .prologue
    .line 323
    .local p8, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .local p9, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    const/16 v30, 0x0

    .line 324
    .local v30, "indirectCRL":Z
    invoke-static/range {p2 .. p2}, Lsun/security/x509/X509CRLImpl;->toImpl(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;

    move-result-object v14

    .line 326
    .local v14, "crlImpl":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuingDistributionPointExtension()Lsun/security/x509/IssuingDistributionPointExtension;

    move-result-object v25

    .line 327
    .local v25, "idpExt":Lsun/security/x509/IssuingDistributionPointExtension;
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    check-cast v10, Lsun/security/x509/X500Name;

    .line 328
    .local v10, "certIssuer":Lsun/security/x509/X500Name;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getIssuerDN()Ljava/security/Principal;

    move-result-object v15

    check-cast v15, Lsun/security/x509/X500Name;

    .line 334
    .local v15, "crlIssuer":Lsun/security/x509/X500Name;
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getCRLIssuer()Lsun/security/x509/GeneralNames;

    move-result-object v39

    .line 335
    .local v39, "pointCrlIssuers":Lsun/security/x509/GeneralNames;
    const/16 v38, 0x0

    .line 336
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    if-eqz v39, :cond_9

    .line 337
    if-eqz v25, :cond_0

    .line 339
    const-string/jumbo v50, "indirect_crl"

    .line 338
    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Boolean;

    .line 340
    sget-object v51, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 338
    invoke-virtual/range {v50 .. v51}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    .line 337
    if-eqz v50, :cond_1

    .line 341
    :cond_0
    const/16 v50, 0x0

    return v50

    .line 343
    :cond_1
    const/16 v32, 0x0

    .line 344
    .local v32, "match":Z
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 345
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    .local v47, "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_2
    :goto_0
    if-nez v32, :cond_3

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    .line 344
    if-eqz v50, :cond_3

    .line 346
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v33

    .line 347
    .local v33, "name":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_2

    move-object/from16 v38, v33

    .line 348
    check-cast v38, Lsun/security/x509/X500Name;

    .line 349
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    const/16 v32, 0x1

    goto :goto_0

    .line 352
    .end local v33    # "name":Lsun/security/x509/GeneralNameInterface;
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_3
    if-nez v32, :cond_4

    .line 353
    const/16 v50, 0x0

    return v50

    .line 358
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_8

    .line 360
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    .line 395
    .end local v32    # "match":Z
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_5
    :goto_1
    if-nez v30, :cond_6

    if-eqz p4, :cond_f

    .line 400
    :cond_6
    if-eqz v25, :cond_29

    .line 402
    const-string/jumbo v50, "point"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    .line 401
    check-cast v28, Lsun/security/x509/DistributionPointName;

    .line 403
    .local v28, "idpPoint":Lsun/security/x509/DistributionPointName;
    if-eqz v28, :cond_23

    .line 404
    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v27

    .line 405
    .local v27, "idpNames":Lsun/security/x509/GeneralNames;
    if-nez v27, :cond_12

    .line 406
    invoke-virtual/range {v28 .. v28}, Lsun/security/x509/DistributionPointName;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v45

    .line 407
    .local v45, "relativeName":Lsun/security/x509/RDN;
    if-nez v45, :cond_10

    .line 408
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_7

    .line 409
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "IDP must be relative or full DN"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 411
    :cond_7
    const/16 v50, 0x0

    return v50

    .line 362
    .end local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    .restart local v32    # "match":Z
    .restart local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_8
    const/16 v30, 0x1

    goto :goto_1

    .line 364
    .end local v32    # "match":Z
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .local v38, "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_9
    invoke-virtual {v15, v10}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_b

    .line 365
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_a

    .line 366
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "crl issuer does not equal cert issuer"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 368
    :cond_a
    const/16 v50, 0x0

    return v50

    .line 371
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v9

    .line 372
    .local v9, "certAKID":Lsun/security/x509/KeyIdentifier;
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyId()Lsun/security/x509/KeyIdentifier;

    move-result-object v13

    .line 374
    .local v13, "crlAKID":Lsun/security/x509/KeyIdentifier;
    if-eqz v9, :cond_c

    if-nez v13, :cond_d

    .line 379
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_5

    .line 381
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_1

    .line 383
    :cond_d
    invoke-virtual {v9, v13}, Lsun/security/x509/KeyIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_5

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v14, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->issues(Lsun/security/x509/X509CertImpl;Lsun/security/x509/X509CRLImpl;Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_e

    .line 388
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p5

    goto :goto_1

    .line 390
    :cond_e
    const/16 v30, 0x1

    goto :goto_1

    .line 397
    .end local v9    # "certAKID":Lsun/security/x509/KeyIdentifier;
    .end local v13    # "crlAKID":Lsun/security/x509/KeyIdentifier;
    .end local v38    # "pointCrlIssuer":Lsun/security/x509/X500Name;
    :cond_f
    const/16 v50, 0x0

    return v50

    .line 413
    .restart local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .restart local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_10
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_11

    .line 414
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

    .line 416
    :cond_11
    move-object/from16 v0, v45

    invoke-static {v15, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v27

    .line 421
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v50

    if-nez v50, :cond_13

    .line 422
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v50

    if-eqz v50, :cond_20

    .line 423
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getFullName()Lsun/security/x509/GeneralNames;

    move-result-object v41

    .line 424
    .local v41, "pointNames":Lsun/security/x509/GeneralNames;
    if-nez v41, :cond_19

    .line 425
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getRelativeName()Lsun/security/x509/RDN;

    move-result-object v45

    .line 426
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    if-nez v45, :cond_15

    .line 427
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_14

    .line 428
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "DP must be relative or full DN"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 430
    :cond_14
    const/16 v50, 0x0

    return v50

    .line 432
    :cond_15
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_16

    .line 433
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

    .line 435
    :cond_16
    if-eqz v30, :cond_1d

    .line 436
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_18

    .line 439
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_17

    .line 440
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "must only be one CRL issuer when relative name present"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 443
    :cond_17
    const/16 v50, 0x0

    return v50

    .line 445
    :cond_18
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v41

    .line 451
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_19
    :goto_2
    const/16 v32, 0x0

    .line 452
    .restart local v32    # "match":Z
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 453
    .end local v32    # "match":Z
    .local v23, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_1a
    if-nez v32, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    .line 452
    if-eqz v50, :cond_1e

    .line 454
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    .line 455
    .local v26, "idpName":Lsun/security/x509/GeneralNameInterface;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1b

    .line 456
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

    .line 458
    :cond_1b
    invoke-virtual/range {v41 .. v41}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .line 459
    .local v36, "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_3
    if-nez v32, :cond_1a

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    .line 458
    if-eqz v50, :cond_1a

    .line 460
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v40

    .line 461
    .local v40, "pointName":Lsun/security/x509/GeneralNameInterface;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1c

    .line 462
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

    .line 464
    :cond_1c
    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    .local v32, "match":Z
    goto :goto_3

    .line 448
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v32    # "match":Z
    .end local v36    # "p":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v40    # "pointName":Lsun/security/x509/GeneralNameInterface;
    .restart local v45    # "relativeName":Lsun/security/x509/RDN;
    :cond_1d
    move-object/from16 v0, v45

    invoke-static {v10, v0}, Lsun/security/provider/certpath/DistributionPointFetcher;->getFullNames(Lsun/security/x509/X500Name;Lsun/security/x509/RDN;)Lsun/security/x509/GeneralNames;

    move-result-object v41

    goto :goto_2

    .line 467
    .end local v45    # "relativeName":Lsun/security/x509/RDN;
    .restart local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_1e
    if-nez v32, :cond_23

    .line 468
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_1f

    .line 469
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "IDP name does not match DP name"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 471
    :cond_1f
    const/16 v50, 0x0

    return v50

    .line 480
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v41    # "pointNames":Lsun/security/x509/GeneralNames;
    :cond_20
    const/16 v32, 0x0

    .line 481
    .local v32, "match":Z
    invoke-virtual/range {v39 .. v39}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 482
    .end local v32    # "match":Z
    .restart local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_21
    if-nez v32, :cond_22

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    .line 481
    if-eqz v50, :cond_22

    .line 483
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v16

    .line 484
    .local v16, "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    invoke-virtual/range {v27 .. v27}, Lsun/security/x509/GeneralNames;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 485
    .restart local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :goto_4
    if-nez v32, :cond_21

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    .line 484
    if-eqz v50, :cond_21

    .line 486
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lsun/security/x509/GeneralName;

    invoke-virtual/range {v50 .. v50}, Lsun/security/x509/GeneralName;->getName()Lsun/security/x509/GeneralNameInterface;

    move-result-object v26

    .line 487
    .restart local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v32

    .local v32, "match":Z
    goto :goto_4

    .line 490
    .end local v16    # "crlIssuerName":Lsun/security/x509/GeneralNameInterface;
    .end local v23    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    .end local v26    # "idpName":Lsun/security/x509/GeneralNameInterface;
    .end local v32    # "match":Z
    :cond_22
    if-nez v32, :cond_23

    .line 491
    const/16 v50, 0x0

    return v50

    .line 499
    .end local v27    # "idpNames":Lsun/security/x509/GeneralNames;
    .end local v47    # "t":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsun/security/x509/GeneralName;>;"
    :cond_23
    const-string/jumbo v50, "only_user_certs"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 498
    check-cast v7, Ljava/lang/Boolean;

    .line 500
    .local v7, "b":Ljava/lang/Boolean;
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

    .line 501
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_24

    .line 502
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must be a EE cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 504
    :cond_24
    const/16 v50, 0x0

    return v50

    .line 510
    :cond_25
    const-string/jumbo v50, "only_ca_certs"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 509
    .end local v7    # "b":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .line 511
    .restart local v7    # "b":Ljava/lang/Boolean;
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

    .line 512
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_26

    .line 513
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must be a CA cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 515
    :cond_26
    const/16 v50, 0x0

    return v50

    .line 521
    :cond_27
    const-string/jumbo v50, "only_attribute_certs"

    .line 520
    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "b":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .line 522
    .restart local v7    # "b":Ljava/lang/Boolean;
    sget-object v50, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_29

    .line 523
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_28

    .line 524
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "cert must not be an AA cert"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 526
    :cond_28
    const/16 v50, 0x0

    return v50

    .line 531
    .end local v7    # "b":Ljava/lang/Boolean;
    .end local v28    # "idpPoint":Lsun/security/x509/DistributionPointName;
    :cond_29
    const/16 v50, 0x9

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v31, v0

    .line 532
    .local v31, "interimReasonsMask":[Z
    const/16 v44, 0x0

    .line 533
    .local v44, "reasons":Lsun/security/x509/ReasonFlags;
    if-eqz v25, :cond_2a

    .line 535
    const-string/jumbo v50, "reasons"

    move-object/from16 v0, v25

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/x509/IssuingDistributionPointExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    .line 534
    .end local v44    # "reasons":Lsun/security/x509/ReasonFlags;
    check-cast v44, Lsun/security/x509/ReasonFlags;

    .line 538
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lsun/security/x509/DistributionPoint;->getReasonFlags()[Z

    move-result-object v42

    .line 539
    .local v42, "pointReasonFlags":[Z
    if-eqz v44, :cond_2f

    .line 540
    if-eqz v42, :cond_2c

    .line 543
    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v29

    .line 544
    .local v29, "idpReasonFlags":[Z
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_5
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_2d

    .line 545
    aget-boolean v50, v29, v22

    if-eqz v50, :cond_2b

    aget-boolean v50, v42, v22

    if-eqz v50, :cond_2b

    .line 546
    const/16 v50, 0x1

    aput-boolean v50, v31, v22

    .line 544
    :cond_2b
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 553
    .end local v22    # "i":I
    .end local v29    # "idpReasonFlags":[Z
    :cond_2c
    invoke-virtual/range {v44 .. v44}, Lsun/security/x509/ReasonFlags;->getFlags()[Z

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "interimReasonsMask":[Z
    check-cast v31, [Z

    .line 568
    .restart local v31    # "interimReasonsMask":[Z
    :cond_2d
    :goto_6
    const/16 v35, 0x0

    .line 569
    .local v35, "oneOrMore":Z
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_7
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_2e

    if-eqz v35, :cond_32

    .line 574
    :cond_2e
    if-nez v35, :cond_34

    .line 575
    const/16 v50, 0x0

    return v50

    .line 555
    .end local v22    # "i":I
    .end local v35    # "oneOrMore":Z
    :cond_2f
    if-eqz v25, :cond_30

    if-nez v44, :cond_2d

    .line 556
    :cond_30
    if-eqz v42, :cond_31

    .line 558
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "interimReasonsMask":[Z
    check-cast v31, [Z

    .restart local v31    # "interimReasonsMask":[Z
    goto :goto_6

    .line 561
    :cond_31
    const/16 v50, 0x9

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v31, v0

    .line 562
    const/16 v50, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_6

    .line 570
    .restart local v22    # "i":I
    .restart local v35    # "oneOrMore":Z
    :cond_32
    aget-boolean v50, p3, v22

    if-nez v50, :cond_33

    aget-boolean v50, v31, v22

    if-eqz v50, :cond_33

    .line 571
    const/16 v35, 0x1

    .line 569
    :cond_33
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 581
    :cond_34
    if-eqz v30, :cond_38

    .line 582
    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 583
    .local v11, "certSel":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v15}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 584
    const/16 v50, 0x7

    move/from16 v0, v50

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    .local v17, "crlSign":[Z
    fill-array-data v17, :array_0

    .line 585
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setKeyUsage([Z)V

    .line 598
    invoke-virtual {v14}, Lsun/security/x509/X509CRLImpl;->getAuthKeyIdExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v5

    .line 599
    .local v5, "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v5, :cond_36

    .line 601
    const-string/jumbo v50, "key_id"

    .line 600
    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/x509/KeyIdentifier;

    .line 602
    .local v4, "akid":Lsun/security/x509/KeyIdentifier;
    if-eqz v4, :cond_35

    .line 603
    new-instance v18, Lsun/security/util/DerOutputStream;

    invoke-direct/range {v18 .. v18}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 604
    .local v18, "derout":Lsun/security/util/DerOutputStream;
    invoke-virtual {v4}, Lsun/security/x509/KeyIdentifier;->getIdentifier()[B

    move-result-object v50

    move-object/from16 v0, v18

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 605
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V

    .line 609
    .end local v18    # "derout":Lsun/security/util/DerOutputStream;
    :cond_35
    const-string/jumbo v50, "serial_number"

    .line 608
    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/x509/SerialNumber;

    .line 610
    .local v6, "asn":Lsun/security/x509/SerialNumber;
    if-eqz v6, :cond_36

    .line 611
    invoke-virtual {v6}, Lsun/security/x509/SerialNumber;->getNumber()Ljava/math/BigInteger;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 621
    .end local v4    # "akid":Lsun/security/x509/KeyIdentifier;
    .end local v6    # "asn":Lsun/security/x509/SerialNumber;
    :cond_36
    new-instance v34, Ljava/util/HashSet;

    move-object/from16 v0, v34

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 623
    .local v34, "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-eqz p5, :cond_37

    .line 630
    if-eqz p6, :cond_39

    .line 631
    new-instance v48, Ljava/security/cert/TrustAnchor;

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, p6

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 636
    .local v48, "temporary":Ljava/security/cert/TrustAnchor;
    :goto_8
    move-object/from16 v0, v34

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    :cond_37
    const/16 v37, 0x0

    .line 641
    .local v37, "params":Ljava/security/cert/PKIXBuilderParameters;
    :try_start_0
    new-instance v37, Ljava/security/cert/PKIXBuilderParameters;

    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v11}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/util/Set;Ljava/security/cert/CertSelector;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .local v37, "params":Ljava/security/cert/PKIXBuilderParameters;
    move-object/from16 v0, v37

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 646
    move-object/from16 v0, v37

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, v37

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 649
    :try_start_1
    const-string/jumbo v50, "PKIX"

    invoke-static/range {v50 .. v50}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v8

    .line 651
    .local v8, "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v46

    check-cast v46, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 652
    .local v46, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    invoke-virtual/range {v46 .. v46}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p5

    .line 660
    .end local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v8    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v17    # "crlSign":[Z
    .end local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    .end local v46    # "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    :cond_38
    :try_start_2
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/PublicKey;Ljava/security/cert/X509CRL;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 670
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 679
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v49

    .line 681
    .local v49, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v49, :cond_3d

    .line 682
    sget-object v50, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual/range {v50 .. v50}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-interface/range {v49 .. v50}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 683
    invoke-interface/range {v49 .. v49}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_3d

    .line 684
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3c

    .line 685
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

    .line 687
    invoke-interface/range {v49 .. v49}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "ext$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_3c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 688
    .local v20, "ext":Ljava/lang/String;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    move-object/from16 v0, v50

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 633
    .end local v20    # "ext":Ljava/lang/String;
    .end local v21    # "ext$iterator":Ljava/util/Iterator;
    .end local v49    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .restart local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .restart local v17    # "crlSign":[Z
    .restart local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v43

    .line 634
    .local v43, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v48, Ljava/security/cert/TrustAnchor;

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v43

    move-object/from16 v2, p5

    move-object/from16 v3, v50

    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    .restart local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    goto/16 :goto_8

    .line 642
    .end local v43    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v48    # "temporary":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v24

    .line 643
    .local v24, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v50, Ljava/security/cert/CRLException;

    move-object/from16 v0, v50

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v50

    .line 653
    .end local v24    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_1
    move-exception v19

    .line 654
    .local v19, "e":Ljava/security/GeneralSecurityException;
    new-instance v50, Ljava/security/cert/CRLException;

    move-object/from16 v0, v50

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v50

    .line 661
    .end local v5    # "akidext":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v11    # "certSel":Ljava/security/cert/X509CertSelector;
    .end local v17    # "crlSign":[Z
    .end local v19    # "e":Ljava/security/GeneralSecurityException;
    .end local v34    # "newTrustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v37    # "params":Ljava/security/cert/PKIXBuilderParameters;
    :catch_2
    move-exception v12

    .line 662
    .local v12, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3a

    .line 663
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

    .line 665
    :cond_3a
    const/16 v50, 0x0

    return v50

    .line 671
    .end local v12    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :catch_3
    move-exception v19

    .line 672
    .restart local v19    # "e":Ljava/security/GeneralSecurityException;
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    if-eqz v50, :cond_3b

    .line 673
    sget-object v50, Lsun/security/provider/certpath/DistributionPointFetcher;->debug:Lsun/security/util/Debug;

    const-string/jumbo v51, "CRL signature failed to verify"

    invoke-virtual/range {v50 .. v51}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 675
    :cond_3b
    const/16 v50, 0x0

    return v50

    .line 691
    .end local v19    # "e":Ljava/security/GeneralSecurityException;
    .restart local v49    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3c
    const/16 v50, 0x0

    return v50

    .line 696
    :cond_3d
    const/16 v22, 0x0

    :goto_a
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v50, v0

    move/from16 v0, v22

    move/from16 v1, v50

    if-ge v0, v1, :cond_3f

    .line 697
    aget-boolean v50, p3, v22

    if-nez v50, :cond_3e

    aget-boolean v50, v31, v22

    if-eqz v50, :cond_3e

    .line 698
    const/16 v50, 0x1

    aput-boolean v50, p3, v22

    .line 696
    :cond_3e
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 701
    :cond_3f
    const/16 v50, 0x1

    return v50

    .line 584
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
