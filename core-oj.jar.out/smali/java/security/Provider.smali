.class public abstract Ljava/security/Provider;
.super Ljava/util/Properties;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Provider$EngineDescription;,
        Ljava/security/Provider$Service;,
        Ljava/security/Provider$ServiceKey;,
        Ljava/security/Provider$UString;
    }
.end annotation


# static fields
.field private static final ALIAS_LENGTH:I

.field private static final ALIAS_PREFIX:Ljava/lang/String; = "Alg.Alias."

.field private static final ALIAS_PREFIX_LOWER:Ljava/lang/String; = "alg.alias."

.field private static final debug:Lsun/security/util/Debug;

.field private static final knownEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/Provider$EngineDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile previousKey:Ljava/security/Provider$ServiceKey; = null

.field static final serialVersionUID:J = -0x3ba590b26fa1505bL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient entrySetCallCount:I

.field private info:Ljava/lang/String;

.field private transient initialized:Z

.field private transient legacyChanged:Z

.field private transient legacyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient legacyStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private volatile registered:Z

.field private transient serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient serviceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation
.end field

.field private transient servicesChanged:Z

.field private version:D


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    sget-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    const-string/jumbo v0, "provider"

    const-string/jumbo v1, "Provider"

    .line 99
    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 98
    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    .line 618
    const-string/jumbo v0, "Alg.Alias."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljava/security/Provider;->ALIAS_LENGTH:I

    .line 732
    new-instance v0, Ljava/security/Provider$ServiceKey;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 731
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 985
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    .line 987
    const-string/jumbo v0, "AlgorithmParameterGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 988
    const-string/jumbo v0, "AlgorithmParameters"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 989
    const-string/jumbo v0, "KeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 990
    const-string/jumbo v0, "KeyPairGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 991
    const-string/jumbo v0, "KeyStore"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 992
    const-string/jumbo v0, "MessageDigest"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 993
    const-string/jumbo v0, "SecureRandom"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 994
    const-string/jumbo v0, "Signature"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 995
    const-string/jumbo v0, "CertificateFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 996
    const-string/jumbo v0, "CertPathBuilder"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 997
    const-string/jumbo v0, "CertPathValidator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 998
    const-string/jumbo v0, "CertStore"

    .line 999
    const-string/jumbo v1, "java.security.cert.CertStoreParameters"

    .line 998
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1001
    const-string/jumbo v0, "Cipher"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1002
    const-string/jumbo v0, "ExemptionMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1003
    const-string/jumbo v0, "Mac"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1004
    const-string/jumbo v0, "KeyAgreement"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1005
    const-string/jumbo v0, "KeyGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1006
    const-string/jumbo v0, "SecretKeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "KeyManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1009
    const-string/jumbo v0, "SSLContext"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1010
    const-string/jumbo v0, "TrustManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "GssApiMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1014
    const-string/jumbo v0, "SaslClientFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1015
    const-string/jumbo v0, "SaslServerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1017
    const-string/jumbo v0, "Policy"

    .line 1018
    const-string/jumbo v1, "java.security.Policy$Parameters"

    .line 1017
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1020
    const-string/jumbo v0, "Configuration"

    .line 1021
    const-string/jumbo v1, "javax.security.auth.login.Configuration$Parameters"

    .line 1020
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1023
    const-string/jumbo v0, "XMLSignatureFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1024
    const-string/jumbo v0, "KeyInfoFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1025
    const-string/jumbo v0, "TransformService"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1027
    const-string/jumbo v0, "TerminalFactory"

    .line 1028
    const-string/jumbo v1, "java.lang.Object"

    .line 1027
    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # D
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    .line 96
    iput-boolean v1, p0, Ljava/security/Provider;->registered:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 125
    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    .line 140
    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 141
    iput-wide p2, p0, Ljava/security/Provider;->version:D

    .line 142
    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    .line 139
    return-void
.end method

.method private static addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "sp"    # Z
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 976
    new-instance v0, Ljava/security/Provider$EngineDescription;

    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 981
    .local v0, "ed":Ljava/security/Provider$EngineDescription;
    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 1
    .param p1, "directive"    # Ljava/lang/String;

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 416
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 417
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method private checkInitialized()V
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 408
    :cond_0
    return-void
.end method

.method private ensureLegacyParsed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 572
    iget-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 573
    :cond_0
    return-void

    .line 575
    :cond_1
    iput-object v3, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 576
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 577
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    .line 581
    :goto_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 579
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 584
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    .line 585
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 571
    return-void
.end method

.method private getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 603
    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 604
    .local v1, "i":I
    if-ge v1, v5, :cond_1

    .line 605
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    .line 606
    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring invalid entry in provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    iget-object v5, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, ":"

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 609
    :cond_0
    return-object v6

    .line 611
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "alg":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    return-object v3
.end method

.method private implClear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 518
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 521
    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 524
    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 527
    :cond_2
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 528
    iput-boolean v2, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 529
    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 530
    invoke-super {p0}, Ljava/util/Properties;->clear()V

    .line 531
    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    .line 532
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_3

    .line 533
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 517
    :cond_3
    return-void
.end method

.method private implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 500
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 501
    check-cast v0, Ljava/lang/String;

    .line 502
    .local v0, "keyString":Ljava/lang/String;
    const-string/jumbo v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    return-object v2

    .line 505
    :cond_0
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    if-eqz v1, :cond_1

    .line 506
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 508
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 509
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 510
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 512
    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .end local v0    # "keyString":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private implPutAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "t"    # Ljava/util/Map;

    .prologue
    .line 473
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 474
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 476
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_0
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_1

    .line 477
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 472
    :cond_1
    return-void
.end method

.method private implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    if-eqz v1, :cond_0

    .line 483
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 485
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 486
    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "keyString":Ljava/lang/String;
    const-string/jumbo v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    return-object v2

    .line 490
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    .line 491
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 492
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    .line 494
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    .end local v0    # "keyString":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private implRemoveService(Ljava/security/Provider$Service;)V
    .locals 10
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 902
    if-eqz p1, :cond_0

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v6, :cond_1

    .line 903
    :cond_0
    return-void

    .line 905
    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    .line 906
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    invoke-direct {v3, v5, v0, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 908
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 909
    .local v4, "oldService":Ljava/security/Provider$Service;
    if-eq p1, v4, :cond_2

    .line 910
    return-void

    .line 912
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 913
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 915
    .local v1, "alias":Ljava/lang/String;
    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v5, v1, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 917
    .end local v1    # "alias":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    .line 901
    return-void
.end method

.method private parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 621
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "alg.alias."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 624
    move-object/from16 v10, p2

    .line 625
    .local v10, "stdAlg":Ljava/lang/String;
    sget v13, Ljava/security/Provider;->ALIAS_LENGTH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "aliasKey":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 627
    .local v12, "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 631
    .local v11, "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, "aliasAlg":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-direct {v8, v11, v0, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 633
    .local v8, "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 634
    .local v9, "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_1

    .line 635
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 636
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    new-instance v14, Ljava/security/Provider$ServiceKey;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v11, v1, v15, v0}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    invoke-static {v9, v1}, Ljava/security/Provider$Service;->-wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V

    .line 620
    .end local v1    # "aliasAlg":Ljava/lang/String;
    .end local v2    # "aliasKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 643
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v12    # "typeAndAlg":[Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 644
    .restart local v12    # "typeAndAlg":[Ljava/lang/String;
    if-nez v12, :cond_3

    .line 645
    return-void

    .line 647
    :cond_3
    const/4 v13, 0x1

    aget-object v13, v12, v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 648
    .local v7, "i":I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_5

    .line 650
    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 651
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 652
    .restart local v10    # "stdAlg":Ljava/lang/String;
    move-object/from16 v6, p2

    .line 653
    .local v6, "className":Ljava/lang/String;
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 654
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 655
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_4

    .line 656
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 657
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 659
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 664
    .end local v6    # "className":Ljava/lang/String;
    .end local v8    # "key":Ljava/security/Provider$ServiceKey;
    .end local v9    # "s":Ljava/security/Provider$Service;
    .end local v10    # "stdAlg":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_5
    move-object/from16 v5, p2

    .line 665
    .local v5, "attributeValue":Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 666
    .restart local v11    # "type":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v4, v12, v13

    .line 667
    .local v4, "attributeString":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 668
    .restart local v10    # "stdAlg":Ljava/lang/String;
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "attributeName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 671
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 673
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 674
    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 675
    .restart local v8    # "key":Ljava/security/Provider$ServiceKey;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    .line 676
    .restart local v9    # "s":Ljava/security/Provider$Service;
    if-nez v9, :cond_7

    .line 677
    new-instance v9, Ljava/security/Provider$Service;

    .end local v9    # "s":Ljava/security/Provider$Service;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    .line 678
    .restart local v9    # "s":Ljava/security/Provider$Service;
    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    .line 680
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private putId()V
    .locals 4

    .prologue
    .line 447
    const-string/jumbo v0, "Provider.id name"

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v0, "Provider.id version"

    iget-wide v2, p0, Ljava/security/Provider;->version:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v0, "Provider.id info"

    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    return-void
.end method

.method private putPropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 825
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 826
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-super {p0, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alg.Alias."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 832
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 833
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 834
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-super {p0, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 836
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    .line 837
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 824
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/security/Provider;->registered:Z

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 458
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 462
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    .line 463
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/Provider;->initialized:Z

    .line 464
    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

    .line 454
    return-void
.end method

.method private removeInvalidServices(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/security/Provider$ServiceKey;",
            "Ljava/security/Provider$Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/Provider$ServiceKey;Ljava/security/Provider$Service;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "t":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 595
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    .line 596
    .local v1, "s":Ljava/security/Provider$Service;
    invoke-static {v1}, Ljava/security/Provider$Service;->-wrap0(Ljava/security/Provider$Service;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 592
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "s":Ljava/security/Provider$Service;
    :cond_1
    return-void
.end method

.method private removePropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    .line 846
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 851
    .local v1, "alias":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Alg.Alias."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 853
    .end local v1    # "alias":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 854
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 855
    .local v5, "key":Ljava/lang/String;
    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 857
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/Provider$UString;Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    .line 858
    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    .line 845
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 214
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clearProviderProperties."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 218
    :cond_0
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 213
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 399
    invoke-super {p0}, Ljava/util/Properties;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 262
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 263
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 264
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    if-nez v0, :cond_1

    .line 265
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    .line 275
    :cond_0
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 278
    :cond_2
    :try_start_2
    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-Ljava/lang/Object;-Ljava/lang/Object;>;"
    monitor-enter p0

    .line 386
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 387
    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 385
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 378
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 405
    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 708
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 710
    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 711
    .local v0, "key":Ljava/security/Provider$ServiceKey;
    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 712
    new-instance v0, Ljava/security/Provider$ServiceKey;

    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 713
    .restart local v0    # "key":Ljava/security/Provider$ServiceKey;
    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    .line 715
    :cond_0
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 716
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    .local v1, "service":Ljava/security/Provider$Service;
    if-eqz v1, :cond_1

    monitor-exit p0

    .line 718
    return-object v1

    .line 721
    .end local v1    # "service":Ljava/security/Provider$Service;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 722
    iget-object v3, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v2

    .end local v0    # "key":Ljava/security/Provider$ServiceKey;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getServices()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 744
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 745
    iget-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    if-eqz v1, :cond_1

    .line 746
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 748
    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    if-nez v1, :cond_4

    .line 749
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 750
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 751
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 752
    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 754
    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 755
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 757
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    .line 758
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 760
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/Provider$Service;>;"
    :cond_4
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 289
    invoke-super {p0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 393
    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 230
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putProviderProperty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 231
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " provider properties"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 234
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 235
    .local v0, "tempProperties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 236
    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 229
    return-void

    .end local v0    # "tempProperties":Ljava/util/Properties;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 332
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 333
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 334
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    const-string/jumbo v2, "/"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    const-string/jumbo v2, "]"

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<**>;"
    monitor-enter p0

    .line 247
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 248
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Put all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 246
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 9
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    monitor-enter p0

    .line 793
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "putProviderProperty."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 794
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_0

    .line 795
    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".putService(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 797
    :cond_0
    if-nez p1, :cond_1

    .line 798
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 800
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    if-eq v5, p0, :cond_2

    .line 801
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 802
    const-string/jumbo v6, "service.getProvider() must match this Provider object"

    .line 801
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 804
    :cond_2
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v5, :cond_3

    .line 805
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    .line 807
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/Provider;->servicesChanged:Z

    .line 808
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "algorithm":Ljava/lang/String;
    new-instance v3, Ljava/security/Provider$ServiceKey;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    .line 812
    .local v3, "key":Ljava/security/Provider$ServiceKey;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    .line 813
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "alias$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 815
    .local v1, "alias":Ljava/lang/String;
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v6, Ljava/security/Provider$ServiceKey;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v4, v1, v7, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 817
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 792
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 368
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 369
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " provider property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 372
    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized removeService(Ljava/security/Provider$Service;)V
    .locals 3
    .param p1, "s"    # Ljava/security/Provider$Service;

    .prologue
    monitor-enter p0

    .line 891
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeProviderProperty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/Provider;->check(Ljava/lang/String;)V

    .line 892
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".removeService(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 895
    :cond_0
    if-nez p1, :cond_1

    .line 896
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 898
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 890
    return-void
.end method

.method public setRegistered()V
    .locals 1

    .prologue
    .line 1509
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1508
    return-void
.end method

.method public setUnregistered()V
    .locals 1

    .prologue
    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    .line 1515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ljava/security/Provider;->version:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
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
    .line 299
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 300
    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized warmUpServiceProvision()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 1535
    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    .line 1538
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    .line 1541
    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1534
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
