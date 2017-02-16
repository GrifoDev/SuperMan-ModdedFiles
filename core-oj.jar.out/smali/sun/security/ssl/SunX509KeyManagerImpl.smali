.class final Lsun/security/ssl/SunX509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SunX509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    }
.end annotation


# static fields
.field private static final STRING0:[Ljava/lang/String;

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private credentialsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private serverAliasCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 11
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 116
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 119
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    .line 120
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    .line 121
    if-nez p1, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 126
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    .line 125
    if-eqz v7, :cond_4

    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    invoke-virtual {p1, v0, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    .line 132
    .local v5, "key":Ljava/security/Key;
    instance-of v7, v5, Ljava/security/PrivateKey;

    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 136
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-eqz v7, :cond_1

    .line 137
    aget-object v7, v2, v10

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_1

    .line 140
    instance-of v7, v2, [Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_2

    .line 141
    array-length v7, v2

    new-array v6, v7, [Ljava/security/cert/X509Certificate;

    .line 142
    .local v6, "tmp":[Ljava/security/cert/Certificate;
    array-length v7, v2

    invoke-static {v2, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object v2, v6

    .line 146
    .end local v6    # "tmp":[Ljava/security/cert/Certificate;
    :cond_2
    new-instance v3, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    check-cast v5, Ljava/security/PrivateKey;

    .end local v5    # "key":Ljava/security/Key;
    move-object v7, v2

    .line 147
    nop

    nop

    .line 146
    invoke-direct {v3, v5, v7}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    .line 148
    .local v3, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v7, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v7, :cond_1

    const-string/jumbo v7, "keymanager"

    invoke-static {v7}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 150
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "found key for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 153
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "chain ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 154
    aget-object v9, v2, v4

    .line 153
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method private static convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;
    .locals 6
    .param p0, "principals"    # [Ljava/security/Principal;

    .prologue
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 401
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 402
    aget-object v3, p0, v1

    .line 403
    .local v3, "p":Ljava/security/Principal;
    instance-of v4, v3, Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_0

    .line 404
    nop

    nop

    .end local v3    # "p":Ljava/security/Principal;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .restart local v3    # "p":Ljava/security/Principal;
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 408
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    .line 413
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "p":Ljava/security/Principal;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavax/security/auth/x500/X500Principal;

    return-object v4
.end method

.method private getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 18
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    const/4 v15, 0x0

    return-object v15

    .line 322
    :cond_0
    if-nez p2, :cond_1

    .line 323
    const/4 v15, 0x0

    new-array v0, v15, [Ljavax/security/auth/x500/X500Principal;

    move-object/from16 p2, v0

    .line 325
    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, [Ljavax/security/auth/x500/X500Principal;

    if-nez v15, :cond_2

    .line 327
    invoke-static/range {p2 .. p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    .line 330
    :cond_2
    const-string/jumbo v15, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 331
    const-string/jumbo v15, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 332
    .local v10, "k":I
    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, "sigType":Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local v10    # "k":I
    .end local v13    # "sigType":Ljava/lang/String;
    :goto_0
    move-object/from16 v14, p2

    .line 338
    nop

    nop

    .line 340
    .local v14, "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 342
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 345
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 346
    .local v1, "alias":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 347
    .local v6, "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    iget-object v5, v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    .line 349
    .local v5, "certs":[Ljava/security/cert/X509Certificate;
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 352
    if-eqz v13, :cond_4

    .line 353
    array-length v15, v5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 355
    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 370
    :cond_4
    move-object/from16 v0, p2

    array-length v15, v0

    if-nez v15, :cond_7

    .line 372
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v15, :cond_3

    const-string/jumbo v15, "keymanager"

    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 374
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "matching alias: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 335
    .end local v1    # "alias":Ljava/lang/String;
    .end local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    .end local v14    # "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_5
    const/4 v13, 0x0

    .local v13, "sigType":Ljava/lang/String;
    goto/16 :goto_0

    .line 362
    .end local v13    # "sigType":Ljava/lang/String;
    .restart local v1    # "alias":Ljava/lang/String;
    .restart local v3    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .restart local v8    # "entry$iterator":Ljava/util/Iterator;
    .restart local v14    # "x500Issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_6
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "sigAlgName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "WITH"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, "pattern":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    goto/16 :goto_1

    .line 378
    .end local v11    # "pattern":Ljava/lang/String;
    .end local v12    # "sigAlgName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v6}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->getIssuerX500Principals()Ljava/util/Set;

    move-result-object v4

    .line 379
    .local v4, "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v15, v14

    if-ge v9, v15, :cond_3

    .line 380
    aget-object v15, p2, v9

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 381
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v15, :cond_3

    const-string/jumbo v15, "keymanager"

    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 383
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "matching alias: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 379
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 391
    .end local v1    # "alias":Ljava/lang/String;
    .end local v4    # "certIssuers":Ljava/util/Set;, "Ljava/util/Set<Ljavax/security/auth/x500/X500Principal;>;"
    .end local v5    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v6    # "credentials":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;>;"
    .end local v9    # "i":I
    :cond_9
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 392
    .local v2, "aliasStrings":[Ljava/lang/String;
    array-length v15, v2

    if-nez v15, :cond_a

    const/4 v2, 0x0

    .end local v2    # "aliasStrings":[Ljava/lang/String;
    :cond_a
    return-object v2
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 5
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 209
    return-object v3

    .line 212
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 213
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 215
    aget-object v2, v0, v4

    return-object v2

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 252
    return-object v2

    .line 257
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_4

    .line 258
    :cond_1
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 259
    .local v0, "aliases":[Ljava/lang/String;
    if-nez v0, :cond_3

    .line 260
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 262
    if-nez v0, :cond_2

    .line 263
    sget-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    .line 265
    :cond_2
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    .line 271
    aget-object v1, v0, v3

    return-object v1

    .line 268
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "aliases":[Ljava/lang/String;
    goto :goto_0

    .line 273
    :cond_5
    return-object v2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    return-object v2

    .line 171
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 172
    .local v0, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v0, :cond_1

    .line 173
    return-object v2

    .line 175
    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 299
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 183
    if-nez p1, :cond_0

    .line 184
    return-object v2

    .line 186
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    .line 187
    .local v0, "cred":Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;
    if-nez v0, :cond_1

    .line 188
    return-object v2

    .line 190
    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->privateKey:Ljava/security/PrivateKey;

    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
