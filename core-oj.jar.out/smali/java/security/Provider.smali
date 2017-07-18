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

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "provider"

    const-string/jumbo v1, "Provider"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    const-string/jumbo v0, "Alg.Alias."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Ljava/security/Provider;->ALIAS_LENGTH:I

    new-instance v0, Ljava/security/Provider$ServiceKey;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    const-string/jumbo v0, "AlgorithmParameterGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "AlgorithmParameters"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyPairGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyStore"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "MessageDigest"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "SecureRandom"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "Signature"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "CertificateFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "CertPathBuilder"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "CertPathValidator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "CertStore"

    const-string/jumbo v1, "java.security.cert.CertStoreParameters"

    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "Cipher"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "ExemptionMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "Mac"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyAgreement"

    invoke-static {v0, v5, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyGenerator"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "SecretKeyFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "SSLContext"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "TrustManagerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "GssApiMechanism"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "SaslClientFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "SaslServerFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "Policy"

    const-string/jumbo v1, "java.security.Policy$Parameters"

    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "Configuration"

    const-string/jumbo v1, "javax.security.auth.login.Configuration$Parameters"

    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "XMLSignatureFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "KeyInfoFactory"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "TransformService"

    invoke-static {v0, v3, v4}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    const-string/jumbo v0, "TerminalFactory"

    const-string/jumbo v1, "java.lang.Object"

    invoke-static {v0, v3, v1}, Ljava/security/Provider;->addEngine(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    iput-boolean v1, p0, Ljava/security/Provider;->registered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    iput-object p1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    iput-wide p2, p0, Ljava/security/Provider;->version:D

    iput-object p4, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    return-void
.end method

.method private static addEngine(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/security/Provider$EngineDescription;

    invoke-direct {v0, p0, p1, p2}, Ljava/security/Provider$EngineDescription;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v1, Ljava/security/Provider;->knownEngines:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkSecurityAccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkInitialized()V
    .locals 1

    iget-boolean v0, p0, Ljava/security/Provider;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureLegacyParsed()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object v3, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    :goto_0
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Ljava/security/Provider;->removeInvalidServices(Ljava/util/Map;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    return-void
.end method

.method private getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v5, :cond_1

    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    sget-object v3, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring invalid entry in provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v4

    aput-object v0, v3, v5

    return-object v3
.end method

.method private implClear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iput-boolean v2, p0, Ljava/security/Provider;->legacyChanged:Z

    iput-boolean v2, p0, Ljava/security/Provider;->servicesChanged:Z

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    invoke-super {p0}, Ljava/util/Properties;->clear()V

    invoke-direct {p0}, Ljava/security/Provider;->putId()V

    iget-boolean v0, p0, Ljava/security/Provider;->registered:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_3
    return-void
.end method

.method private implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    :cond_2
    iget-object v2, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private implPutAll(Ljava/util/Map;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/security/Provider;->implPut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Ljava/security/Provider;->registered:Z

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_1
    return-void
.end method

.method private implRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Ljava/security/Provider;->registered:Z

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Provider."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyStrings:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private implRemoveService(Ljava/security/Provider$Service;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/security/Provider$ServiceKey;

    invoke-direct {v3, v5, v0, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    if-eq p1, v4, :cond_2

    return-void

    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/security/Provider;->servicesChanged:Z

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v7, Ljava/security/Provider$ServiceKey;

    invoke-direct {v7, v5, v1, v9, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Ljava/security/Provider;->removePropertyStrings(Ljava/security/Provider$Service;)V

    return-void
.end method

.method private parseLegacyPut(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "alg.alias."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v10, p2

    sget v13, Ljava/security/Provider;->ALIAS_LENGTH:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x0

    aget-object v11, v12, v13

    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-direct {v8, v11, v0, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    if-nez v9, :cond_1

    new-instance v9, Ljava/security/Provider$Service;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    new-instance v14, Ljava/security/Provider$ServiceKey;

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v11, v1, v15, v0}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v13, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v1}, Ljava/security/Provider$Service;->-wrap2(Ljava/security/Provider$Service;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-direct/range {p0 .. p1}, Ljava/security/Provider;->getTypeAndAlgorithm(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_3

    return-void

    :cond_3
    const/4 v13, 0x1

    aget-object v13, v12, v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_5

    const/4 v13, 0x0

    aget-object v11, v12, v13

    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v6, p2

    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    if-nez v9, :cond_4

    new-instance v9, Ljava/security/Provider$Service;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Ljava/security/Provider$Service;->-set1(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object/from16 v5, p2

    const/4 v13, 0x0

    aget-object v11, v12, v13

    const/4 v13, 0x1

    aget-object v4, v12, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v3, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/security/Provider$ServiceKey;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct {v8, v11, v10, v13, v14}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/Provider$Service;

    if-nez v9, :cond_7

    new-instance v9, Ljava/security/Provider$Service;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/security/Provider$Service;)V

    invoke-static {v9, v11}, Ljava/security/Provider$Service;->-set2(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/security/Provider$Service;->-set0(Ljava/security/Provider$Service;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v13, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p2

    invoke-virtual {v9, v3, v0}, Ljava/security/Provider$Service;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private putId()V
    .locals 4

    const-string/jumbo v0, "Provider.id name"

    iget-object v1, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Provider.id version"

    iget-wide v2, p0, Ljava/security/Provider;->version:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Provider.id info"

    iget-object v1, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Provider.id className"

    invoke-virtual {p0}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putPropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

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

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-super {p0, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/security/Provider;->registered:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/Provider;->defaults:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Ljava/security/Provider;->implClear()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/Provider;->initialized:Z

    invoke-virtual {p0, v0}, Ljava/security/Provider;->putAll(Ljava/util/Map;)V

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

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    invoke-static {v1}, Ljava/security/Provider$Service;->-wrap0(Ljava/security/Provider$Service;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removePropertyStrings(Ljava/security/Provider$Service;)V
    .locals 9

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

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

    :cond_0
    invoke-static {p1}, Ljava/security/Provider$Service;->-get0(Ljava/security/Provider$Service;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

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

    invoke-super {p0, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-boolean v7, p0, Ljava/security/Provider;->registered:Z

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/security/Security;->increaseVersion()V

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

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

    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0}, Ljava/security/Provider;->implClear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

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

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    iget-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/security/Provider;->entrySetCallCount:I

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/Provider;->entrySet:Ljava/util/Set;

    :cond_0
    iget v0, p0, Ljava/security/Provider;->entrySetCallCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

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

    :cond_1
    :try_start_1
    invoke-super {p0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-super {p0, p1}, Ljava/util/Properties;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Provider;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-super {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    sget-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    invoke-virtual {v0, p1, p2}, Ljava/security/Provider$ServiceKey;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/security/Provider$ServiceKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, p1, p2, v3, v4}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    sput-object v0, Ljava/security/Provider;->previousKey:Ljava/security/Provider$ServiceKey;

    :cond_0
    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

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

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    iget-boolean v1, p0, Ljava/security/Provider;->legacyChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    :cond_1
    iget-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    if-nez v1, :cond_4

    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/security/Provider;->legacyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljava/security/Provider;->serviceSet:Ljava/util/Set;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/security/Provider;->servicesChanged:Z

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

    iget-wide v0, p0, Ljava/security/Provider;->version:D

    return-wide v0
.end method

.method public isRegistered()Z
    .locals 1

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

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

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

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-super {p0}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

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

    sget-object v1, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_0

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

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

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

    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

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

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

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

    monitor-enter p0

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

    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

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

    :cond_0
    invoke-direct {p0, p1}, Ljava/security/Provider;->implPutAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized putService(Ljava/security/Provider$Service;)V
    .locals 9

    monitor-enter p0

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

    sget-object v5, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    if-eq v5, p0, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "service.getProvider() must match this Provider object"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Ljava/security/Provider;->servicesChanged:Z

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/security/Provider$ServiceKey;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v0, v5, v6}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    invoke-direct {p0, v5}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V

    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    invoke-interface {v5, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/security/Provider$Service;->-wrap1(Ljava/security/Provider$Service;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Ljava/security/Provider;->serviceMap:Ljava/util/Map;

    new-instance v6, Ljava/security/Provider$ServiceKey;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v4, v1, v7, v8}, Ljava/security/Provider$ServiceKey;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/security/Provider$ServiceKey;)V

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Ljava/security/Provider;->putPropertyStrings(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

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

    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

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

    monitor-enter p0

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

    sget-object v0, Ljava/security/Provider;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

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

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Ljava/security/Provider;->implRemoveService(Ljava/security/Provider$Service;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setRegistered()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/Provider;->registered:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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

    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-super {p0}, Ljava/util/Properties;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized warmUpServiceProvision()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/security/Provider;->checkInitialized()V

    invoke-direct {p0}, Ljava/security/Provider;->ensureLegacyParsed()V

    invoke-virtual {p0}, Ljava/security/Provider;->getServices()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
