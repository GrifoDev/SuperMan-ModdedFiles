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

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v0, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    instance-of v7, v5, Ljava/security/PrivateKey;

    if-eqz v7, :cond_1

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v7, v2

    if-eqz v7, :cond_1

    aget-object v7, v2, v10

    instance-of v7, v7, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_1

    instance-of v7, v2, [Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_2

    array-length v7, v2

    new-array v6, v7, [Ljava/security/cert/X509Certificate;

    array-length v7, v2

    invoke-static {v2, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :cond_2
    new-instance v3, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    check-cast v5, Ljava/security/PrivateKey;

    move-object v7, v2

    nop

    nop

    invoke-direct {v3, v5, v7}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    iget-object v7, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v7, :cond_1

    const-string/jumbo v7, "keymanager"

    invoke-static {v7}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    const/4 v4, 0x0

    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_3

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

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "***"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private static convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    aget-object v3, p0, v1

    instance-of v4, v3, Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_0

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    :catch_0
    move-exception v0

    goto :goto_1

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

    if-nez p1, :cond_0

    const/4 v15, 0x0

    return-object v15

    :cond_0
    if-nez p2, :cond_1

    const/4 v15, 0x0

    new-array v0, v15, [Ljavax/security/auth/x500/X500Principal;

    move-object/from16 p2, v0

    :cond_1
    move-object/from16 v0, p2

    instance-of v15, v0, [Ljavax/security/auth/x500/X500Principal;

    if-nez v15, :cond_2

    invoke-static/range {p2 .. p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->convertPrincipals([Ljava/security/Principal;)[Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    :cond_2
    const-string/jumbo v15, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string/jumbo v15, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v15, v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object/from16 v14, p2

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    iget-object v5, v6, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

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

    if-eqz v13, :cond_4

    array-length v15, v5

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    const/4 v15, 0x1

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_4
    move-object/from16 v0, p2

    array-length v15, v0

    if-nez v15, :cond_7

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v15, :cond_3

    const-string/jumbo v15, "keymanager"

    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

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

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v15, 0x0

    aget-object v15, v5, v15

    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

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

    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v6}, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->getIssuerX500Principals()Ljava/util/Set;

    move-result-object v4

    const/4 v9, 0x0

    :goto_2
    array-length v15, v14

    if-ge v9, v15, :cond_3

    aget-object v15, p2, v9

    invoke-interface {v4, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v15, :cond_3

    const-string/jumbo v15, "keymanager"

    invoke-static {v15}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

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

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    sget-object v15, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    invoke-interface {v3, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v15, v2

    if-nez v15, :cond_a

    const/4 v2, 0x0

    :cond_a
    return-object v2
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    aget-object v2, v0, v4

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lsun/security/ssl/SunX509KeyManagerImpl;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lsun/security/ssl/SunX509KeyManagerImpl;->STRING0:[Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->serverAliasCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    array-length v1, v0

    if-lez v1, :cond_5

    aget-object v1, v0, v3

    return-object v1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->certificates:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SunX509KeyManagerImpl;->credentialsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v1, v0, Lsun/security/ssl/SunX509KeyManagerImpl$X509Credentials;->privateKey:Ljava/security/PrivateKey;

    return-object v1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SunX509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
