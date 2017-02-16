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

    .prologue
    .line 63
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    .line 66
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "keymanager"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    .line 65
    :goto_0
    sput-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    .line 60
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/security/KeyStore$Builder;)V
    .locals 1
    .param p1, "builder"    # Ljava/security/KeyStore$Builder;

    .prologue
    .line 81
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;-><init>(Ljava/util/List;)V

    .line 80
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

    .prologue
    .line 84
    .local p1, "builders":Ljava/util/List;, "Ljava/util/List<Ljava/security/KeyStore$Builder;>;"
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 85
    iput-object p1, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->uidCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 88
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/ssl/X509KeyManagerImpl$SizedMap;-><init>(Lsun/security/ssl/X509KeyManagerImpl$SizedMap;)V

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    .line 84
    return-void
.end method

.method private chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;
    .locals 13
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;
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

    .prologue
    .line 332
    .local p1, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 333
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_1
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v3

    .line 337
    .local v3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v7, 0x0

    .line 338
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "n":I
    move-object v8, v7

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v8, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_0
    if-ge v1, v10, :cond_4

    .line 341
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 340
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v11

    .line 342
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v11, :cond_9

    .line 346
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 347
    .local v12, "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    iget-object v0, v12, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->checkResult:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v2, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    if-ne v0, v2, :cond_3

    .line 348
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_2

    .line 349
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

    .line 351
    :cond_2
    invoke-direct {p0, v12}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_3
    if-nez v8, :cond_8

    .line 354
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v8, v7

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_0

    .line 362
    :cond_4
    if-nez v8, :cond_6

    .line 363
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_5

    .line 364
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v2, "KeyMgr: no matching key found"

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    .line 366
    :cond_5
    const/4 v0, 0x0

    return-object v0

    .line 368
    :cond_6
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 369
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_7

    .line 370
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v2, "KeyMgr: no good matching key found, returning best match out of:"

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    .line 372
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    .line 374
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    invoke-direct {p0, v0}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 358
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_8
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v12    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_9
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2
.end method

.method private static conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z
    .locals 6
    .param p0, "constraints"    # Ljava/security/AlgorithmConstraints;
    .param p1, "chain"    # [Ljava/security/cert/Certificate;

    .prologue
    const/4 v5, 0x0

    .line 719
    new-instance v1, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/AlgorithmConstraints;)V

    .line 721
    .local v1, "checker":Lsun/security/provider/certpath/AlgorithmChecker;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    array-length v4, p1

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 729
    aget-object v0, p1, v3

    .line 732
    .local v0, "cert":Ljava/security/cert/Certificate;
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lsun/security/provider/certpath/AlgorithmChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 722
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 724
    .local v2, "cpve":Ljava/security/cert/CertPathValidatorException;
    return v5

    .line 733
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v0    # "cert":Ljava/security/cert/Certificate;
    .restart local v3    # "i":I
    :catch_1
    move-exception v2

    .line 734
    .restart local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    return v5

    .line 738
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    .end local v2    # "cpve":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method private getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;
    .locals 8
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 152
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    instance-of v6, p1, Ljavax/net/ssl/SSLSocket;

    .line 152
    if-eqz v6, :cond_2

    move-object v4, p1

    .line 155
    nop

    nop

    .line 156
    .local v4, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 158
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_1

    .line 160
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    .line 161
    .local v2, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v5, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v5, v6, :cond_1

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v5, v3, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v5, :cond_0

    move-object v0, v3

    .line 166
    nop

    nop

    .line 168
    .local v0, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v1

    .line 171
    .end local v0    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v1    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_0
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v5, v4, v1, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;Z)V

    return-object v5

    .line 176
    .end local v2    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    :cond_1
    new-instance v5, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v5, v4, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    return-object v5

    .line 179
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    .end local v4    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    new-instance v6, Lsun/security/ssl/SSLAlgorithmConstraints;

    nop

    nop

    invoke-direct {v6, v5, v7}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLSocket;Z)V

    return-object v6
.end method

.method private getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;
    .locals 7
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v6, 0x1

    .line 184
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 186
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-eqz v3, :cond_1

    .line 188
    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v2

    .line 189
    .local v2, "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    iget v4, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    if-lt v4, v5, :cond_1

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "peerSupportedSignAlgs":[Ljava/lang/String;
    instance-of v4, v3, Ljavax/net/ssl/ExtendedSSLSession;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 194
    nop

    nop

    .line 196
    .local v0, "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    invoke-virtual {v0}, Ljavax/net/ssl/ExtendedSSLSession;->getPeerSupportedSignatureAlgorithms()[Ljava/lang/String;

    move-result-object v1

    .line 199
    .end local v0    # "extSession":Ljavax/net/ssl/ExtendedSSLSession;
    .end local v1    # "peerSupportedSignAlgs":[Ljava/lang/String;
    :cond_0
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v4, p1, v1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;[Ljava/lang/String;Z)V

    return-object v4

    .line 205
    .end local v2    # "protocolVersion":Lsun/security/ssl/ProtocolVersion;
    .end local v3    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    new-instance v4, Lsun/security/ssl/SSLAlgorithmConstraints;

    invoke-direct {v4, p1, v6}, Lsun/security/ssl/SSLAlgorithmConstraints;-><init>(Ljavax/net/ssl/SSLEngine;Z)V

    return-object v4
.end method

.method private getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;
    .locals 23
    .param p1, "builderIndex"    # I
    .param p4, "findAll"    # Z
    .param p5, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p6, "constraints"    # Ljava/security/AlgorithmConstraints;
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

    .prologue
    .line 613
    .local p2, "keyTypes":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    .local p3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/KeyStore$Builder;

    .line 614
    .local v8, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v8}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v17

    .line 615
    .local v17, "ks":Ljava/security/KeyStore;
    const/16 v19, 0x0

    .line 616
    .local v19, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    sget-object v10, Lsun/security/ssl/X509KeyManagerImpl;->verificationDate:Ljava/util/Date;

    .line 617
    .local v10, "date":Ljava/util/Date;
    const/16 v18, 0x0

    .line 618
    .local v18, "preferred":Z
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v11

    .end local v19    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v11, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 619
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 621
    .local v5, "alias":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 626
    .local v6, "chain":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_0

    array-length v3, v6

    if-eqz v3, :cond_0

    .line 631
    const/4 v13, 0x0

    .line 632
    .local v13, "incompatible":Z
    const/4 v3, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v21

    if-ge v3, v0, :cond_1

    aget-object v9, v6, v3

    .line 633
    .local v9, "cert":Ljava/security/cert/Certificate;
    instance-of v0, v9, Ljava/security/cert/X509Certificate;

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 635
    const/4 v13, 0x1

    .line 639
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    if-nez v13, :cond_0

    .line 644
    const/4 v4, -0x1

    .line 645
    .local v4, "keyIndex":I
    const/4 v14, 0x0

    .line 646
    .local v14, "j":I
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "keyType$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    .line 647
    .local v15, "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    invoke-virtual {v15, v6}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->matches([Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 648
    move v4, v14

    .line 653
    .end local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    :cond_2
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    .line 654
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    .line 655
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 656
    const-string/jumbo v22, ": key algorithm does not match"

    .line 655
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    .end local v4    # "keyIndex":I
    .end local v14    # "j":I
    .end local v16    # "keyType$iterator":Ljava/util/Iterator;
    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 651
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v4    # "keyIndex":I
    .restart local v14    # "j":I
    .restart local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    .restart local v16    # "keyType$iterator":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 661
    .end local v15    # "keyType":Lsun/security/ssl/X509KeyManagerImpl$KeyType;
    :cond_5
    if-eqz p3, :cond_8

    .line 662
    const/4 v12, 0x0

    .line 663
    .local v12, "found":Z
    const/4 v3, 0x0

    array-length v0, v6

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v21

    if-ge v3, v0, :cond_6

    aget-object v9, v6, v3

    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v20, v9

    .line 664
    check-cast v20, Ljava/security/cert/X509Certificate;

    .line 665
    .local v20, "xcert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 666
    const/4 v12, 0x1

    .line 670
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_6
    if-nez v12, :cond_8

    .line 671
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    .line 672
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 673
    const-string/jumbo v22, ": issuers do not match"

    .line 672
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    .restart local v9    # "cert":Ljava/security/cert/Certificate;
    .restart local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 680
    .end local v9    # "cert":Ljava/security/cert/Certificate;
    .end local v12    # "found":Z
    .end local v20    # "xcert":Ljava/security/cert/X509Certificate;
    :cond_8
    if-eqz p6, :cond_9

    .line 681
    move-object/from16 v0, p6

    invoke-static {v0, v6}, Lsun/security/ssl/X509KeyManagerImpl;->conformsToAlgorithmConstraints(Ljava/security/AlgorithmConstraints;[Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 691
    :cond_9
    if-nez v10, :cond_a

    .line 692
    new-instance v10, Ljava/util/Date;

    .end local v10    # "date":Ljava/util/Date;
    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 695
    .restart local v10    # "date":Ljava/util/Date;
    :cond_a
    const/4 v3, 0x0

    aget-object v3, v6, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v10}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->check(Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    move-result-object v7

    .line 697
    .local v7, "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    new-instance v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;-><init>(IILjava/lang/String;[Ljava/security/cert/Certificate;Lsun/security/ssl/X509KeyManagerImpl$CheckResult;)V

    .line 699
    .local v2, "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    if-nez v18, :cond_b

    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    if-ne v7, v3, :cond_b

    if-nez v4, :cond_b

    .line 700
    const/16 v18, 0x1

    .line 702
    :cond_b
    if-eqz v18, :cond_d

    if-nez p4, :cond_d

    .line 705
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 683
    .end local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .end local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :cond_c
    sget-boolean v3, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v3, :cond_0

    .line 684
    sget-object v3, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Ignoring alias "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 685
    const-string/jumbo v22, ": certificate list does not conform to "

    .line 684
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 686
    const-string/jumbo v22, "algorithm constraints"

    .line 684
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 707
    .restart local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .restart local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :cond_d
    if-nez v19, :cond_e

    .line 708
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 710
    :cond_e
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 713
    .end local v2    # "status":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    .end local v4    # "keyIndex":I
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "chain":[Ljava/security/cert/Certificate;
    .end local v7    # "checkResult":Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .end local v13    # "incompatible":Z
    .end local v14    # "j":I
    .end local v16    # "keyType$iterator":Ljava/util/Iterator;
    :cond_f
    return-object v19
.end method

.method private getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 14
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2e

    const/4 v12, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 220
    return-object v12

    .line 224
    :cond_0
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/Reference;

    .line 225
    .local v9, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/security/KeyStore$PrivateKeyEntry;>;"
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v4, v11

    .line 226
    .local v4, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_0
    if-eqz v4, :cond_2

    .line 227
    return-object v4

    .end local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_1
    move-object v4, v12

    .line 225
    goto :goto_0

    .line 231
    .restart local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_2
    invoke-virtual {p1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 232
    .local v5, "firstDot":I
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p1, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 233
    .local v10, "secondDot":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_3

    if-ne v10, v5, :cond_4

    .line 235
    :cond_3
    return-object v12

    .line 239
    :cond_4
    add-int/lit8 v11, v5, 0x1

    :try_start_0
    invoke-virtual {p1, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 238
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 240
    .local v2, "builderIndex":I
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "keyStoreAlias":Ljava/lang/String;
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$Builder;

    .line 242
    .local v1, "builder":Ljava/security/KeyStore$Builder;
    invoke-virtual {v1}, Ljava/security/KeyStore$Builder;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v7

    .line 244
    .local v7, "ks":Ljava/security/KeyStore;
    invoke-virtual {v1, p1}, Ljava/security/KeyStore$Builder;->getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v11

    .line 243
    invoke-virtual {v7, v6, v11}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v8

    .line 245
    .local v8, "newEntry":Ljava/security/KeyStore$Entry;
    instance-of v11, v8, Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v11, :cond_5

    .line 247
    return-object v12

    .line 249
    :cond_5
    move-object v0, v8

    nop

    nop

    move-object v4, v0

    .line 250
    iget-object v11, p0, Lsun/security/ssl/X509KeyManagerImpl;->entryCacheMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/ref/SoftReference;

    invoke-direct {v13, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v11, p1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return-object v4

    .line 252
    .end local v1    # "builder":Ljava/security/KeyStore$Builder;
    .end local v2    # "builderIndex":I
    .end local v6    # "keyStoreAlias":Ljava/lang/String;
    .end local v7    # "ks":Ljava/security/KeyStore;
    .end local v8    # "newEntry":Ljava/security/KeyStore$Entry;
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    return-object v12
.end method

.method private getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;
    .locals 2
    .param p1, "issuers"    # [Ljava/security/Principal;
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

    .prologue
    const/4 v1, 0x0

    .line 431
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 434
    :cond_0
    return-object v1
.end method

.method private static varargs getKeyTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "keyTypes"    # [Ljava/lang/String;
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

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 306
    if-eqz p0, :cond_0

    .line 307
    array-length v3, p0

    if-nez v3, :cond_1

    .line 308
    :cond_0
    return-object v4

    .line 307
    :cond_1
    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 311
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 312
    .local v0, "keyType":Ljava/lang/String;
    new-instance v4, Lsun/security/ssl/X509KeyManagerImpl$KeyType;

    invoke-direct {v4, v0}, Lsun/security/ssl/X509KeyManagerImpl$KeyType;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "keyType":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;
    .locals 4
    .param p1, "entry"    # Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .prologue
    .line 213
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

    .line 214
    iget-object v1, p1, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;->alias:Ljava/lang/String;

    .line 213
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

    .prologue
    .line 421
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 422
    .local v4, "s":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 423
    .local v0, "i":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "result$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;

    .line 424
    .local v2, "result":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-direct {p0, v2}, Lsun/security/ssl/X509KeyManagerImpl;->makeAlias(Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 426
    .end local v2    # "result":Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 116
    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 117
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 116
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 122
    invoke-static {p1}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 123
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 122
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 135
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljavax/net/ssl/SSLEngine;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 134
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    .line 129
    invoke-direct {p0, p3}, Lsun/security/ssl/X509KeyManagerImpl;->getAlgorithmConstraints(Ljava/net/Socket;)Ljava/security/AlgorithmConstraints;

    move-result-object v2

    .line 128
    invoke-direct {p0, v0, p2, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl;->chooseAlias(Ljava/util/List;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;
    .locals 12
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "checkType"    # Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .param p4, "constraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 389
    :cond_0
    invoke-direct {p0, p2}, Lsun/security/ssl/X509KeyManagerImpl;->getIssuerSet([Ljava/security/Principal;)Ljava/util/Set;

    move-result-object v3

    .line 390
    .local v3, "issuerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Principal;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v0, v4

    invoke-static {v0}, Lsun/security/ssl/X509KeyManagerImpl;->getKeyTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 391
    .local v2, "keyTypeList":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$KeyType;>;"
    const/4 v7, 0x0

    .line 392
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v0, p0, Lsun/security/ssl/X509KeyManagerImpl;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "n":I
    move-object v8, v7

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v8, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_0
    if-ge v1, v10, :cond_1

    .line 395
    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p3

    move-object/from16 v6, p4

    .line 394
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(ILjava/util/List;Ljava/util/Set;ZLsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)Ljava/util/List;

    move-result-object v11

    .line 396
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    if-eqz v11, :cond_7

    .line 397
    if-nez v8, :cond_6

    .line 398
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .local v7, "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_1
    :try_start_1
    invoke-interface {v7, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v8, v7

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_0

    .line 406
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 407
    :cond_2
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_3

    .line 408
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl;->debug:Lsun/security/ssl/Debug;

    const-string/jumbo v4, "KeyMgr: no matching alias found"

    invoke-virtual {v0, v4}, Lsun/security/ssl/Debug;->println(Ljava/lang/String;)V

    .line 410
    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 413
    sget-boolean v0, Lsun/security/ssl/X509KeyManagerImpl;->useDebug:Z

    if-eqz v0, :cond_5

    .line 414
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

    .line 416
    :cond_5
    invoke-direct {p0, v8}, Lsun/security/ssl/X509KeyManagerImpl;->toAliases(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :catch_1
    move-exception v9

    .restart local v9    # "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_6
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_1

    .end local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    :cond_7
    move-object v7, v8

    .end local v8    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    .restart local v7    # "allResults":Ljava/util/List;, "Ljava/util/List<Lsun/security/ssl/X509KeyManagerImpl$EntryStatus;>;"
    goto :goto_2
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    .line 105
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 139
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lsun/security/ssl/X509KeyManagerImpl;->getEntry(Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    .line 111
    .local v0, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
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
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 143
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lsun/security/ssl/X509KeyManagerImpl;->getAliases(Ljava/lang/String;[Ljava/security/Principal;Lsun/security/ssl/X509KeyManagerImpl$CheckType;Ljava/security/AlgorithmConstraints;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
