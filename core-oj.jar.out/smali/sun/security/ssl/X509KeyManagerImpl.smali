.class final Lsun/security/ssl/X509KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "X509KeyManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/X509KeyManagerImpl$CheckResult;,
        Lsun/security/ssl/X509KeyManagerImpl$CheckType;,
        Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;,
        Lsun/security/ssl/X509KeyManagerImpl$KeyType;,
        Lsun/security/ssl/X509KeyManagerImpl$SizedMap;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;

.field private static final useDebug:Z

.field private static verificationDate:Ljava/util/Date;


# instance fields
.field private final builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final entryCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uidCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "keymanager"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/KeyStore$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>(Lsun/security/ssl/X509KeyManagerImpl$SizedMap;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    return-void
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;[",
            "Ljava/security/Principal;",
            "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move-object v8, v7

    :goto_0
    if-ge v1, v10, :cond_4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_9

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    iget-object v0, v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v2, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    if-ne v0, v2, :cond_3

    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KeyMgr: choosing key: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v12}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v8, :cond_8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v8, v7

    goto :goto_0

    :cond_4
    if-nez v8, :cond_6

    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v2, "KeyMgr: no matching key found"

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_7

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v2, "KeyMgr: no good matching key found, returning best match out of:"

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :cond_8
    move-object v7, v8

    goto :goto_1

    :cond_9
    move-object v7, v8

    goto :goto_2
.end method

.method private static conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v4, p1

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_0

    aget-object v0, p1, v3

    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :catch_0
    move-exception v2

    return v5

    :catch_1
    move-exception v2

    return v5

    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method private getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    instance-of v6, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v6, :cond_2

    move-object v4, p1

    nop

    nop

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    iget v5, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_1

    const/4 v1, 0x0

    instance-of v5, v3, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v5, :cond_0

    move-object v0, v3

    nop

    nop

    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v5, v4, v1, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    return-object v5

    :cond_1
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v5, v4, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    return-object v5

    :cond_2
    new-instance v6, Lsun/security/ssl/SSLAlgorithmConstraints;

    nop

    nop

    invoke-direct {v6, v5, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    return-object v6
.end method

.method private getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;
    .locals 7

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    iget v4, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    const/4 v1, 0x0

    instance-of v4, v3, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v4, :cond_0

    move-object v0, v3

    nop

    nop

    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v4, p1, v1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    return-object v4

    :cond_1
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v4, p1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v4
.end method

.method private getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;Z",
            "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
            "Ljava/security/AlgorithmConstraints;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/KeyStore$Builder;

    invoke-virtual {v8}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v17

    const/16 v19, 0x0

    sget-object v10, Lsun/security/ssl/X509KeyManagerImpl;->verificationDate:Ljava/util/Date;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    if-eqz v6, :cond_0

    array-length v3, v6

    if-eqz v3, :cond_0

    const/4 v13, 0x0

    const/4 v3, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v21

    if-ge v3, v0, :cond_1

    aget-object v9, v6, v3

    instance-of v0, v9, Ljava/security/cert/X509Certificate;

    move/from16 v22, v0

    if-nez v22, :cond_3

    const/4 v13, 0x1

    :cond_1
    if-nez v13, :cond_0

    const/4 v4, -0x1

    const/4 v14, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    invoke-virtual {v15, v6}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->matches([Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, v14

    :cond_2
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": key algorithm does not match"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_8

    const/4 v12, 0x0

    const/4 v3, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v21

    if-ge v3, v0, :cond_6

    aget-object v9, v6, v3

    move-object/from16 v20, v9

    check-cast v20, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v12, 0x1

    :cond_6
    if-nez v12, :cond_8

    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": issuers do not match"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-eqz p6, :cond_9

    move-object/from16 v0, p6

    invoke-static {v0, v6}, Lsun/security/ssl/X509KeyManagerImpl;->conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_9
    if-nez v10, :cond_a

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    :cond_a
    const/4 v3, 0x0

    aget-object v3, v6, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v10}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->check(Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    move-result-object v7

    new-instance v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;-><init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lsun/security/ssl/X509KeyManagerImpl$CheckResult;)V

    if-nez v18, :cond_b

    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    if-ne v7, v3, :cond_b

    if-nez v4, :cond_b

    const/16 v18, 0x1

    :cond_b
    if-eqz v18, :cond_d

    if-nez p4, :cond_d

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_c
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ": certificate list does not conform to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "algorithm constraints"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-nez v19, :cond_e

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    return-object v19
.end method

.method private getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 14

    const/16 v13, 0x2e

    const/4 v12, 0x0

    if-nez p1, :cond_0

    return-object v12

    :cond_0
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v4, v11

    :goto_0
    if-eqz v4, :cond_2

    return-object v4

    :cond_1
    move-object v4, v12

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p1, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v11, -0x1

    if-eq v5, v11, :cond_3

    if-ne v10, v5, :cond_4

    :cond_3
    return-object v12

    :cond_4
    add-int/lit8 v11, v5, 0x1

    :try_start_0
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$Builder;

    invoke-virtual {v1}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    invoke-virtual {v1, p1}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v11

    invoke-virtual {v7, v6, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v8

    instance-of v11, v8, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v11, :cond_5

    return-object v12

    :cond_5
    move-object v0, v8

    nop

    nop

    move-object v4, v0

    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v11, p1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v3

    return-object v12
.end method

.method private getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/Principal;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method private static varargs getKeyTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$KeyType;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    new-instance v4, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    invoke-direct {v4, v0}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->builderIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toAliases(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v2}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v4
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;
    .locals 12

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    move-object v8, v7

    :goto_0
    if-ge v1, v10, :cond_1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p3

    move-object/from16 v6, p4

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_7

    if-nez v8, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v8, v7

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_3

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v4, "KeyMgr: no matching alias found"

    invoke-virtual {v0, v4}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_5

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "KeyMgr: getting aliases: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v8}, Lsun/security/ssl/X509KeyManagerImpl;->toAliases(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v9

    move-object v7, v8

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    :cond_6
    move-object v7, v8

    goto :goto_1

    :cond_7
    move-object v7, v8

    goto :goto_2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
