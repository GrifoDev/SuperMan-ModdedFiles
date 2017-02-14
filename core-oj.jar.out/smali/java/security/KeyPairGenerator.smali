.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$Delegate;
    }
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v6, "KeyPairGenerator"

    invoke-static {v6, p0}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " KeyPairGenerator not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    :try_start_0
    const-class v6, Ljava/security/KeyPairGeneratorSpi;

    invoke-static {v4, v6}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v2

    iget-object v6, v2, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v6, v6, Ljava/security/KeyPairGenerator;

    if-eqz v6, :cond_2

    invoke-static {v2, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v6

    return-object v6

    :cond_2
    new-instance v6, Ljava/security/KeyPairGenerator$Delegate;

    invoke-direct {v6, v2, v5, p0}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Lsun/security/jca/GetInstance$Instance;Ljava/util/Iterator;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "KeyPairGenerator"

    const-class v2, Ljava/security/KeyPairGeneratorSpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "KeyPairGenerator"

    const-class v2, Ljava/security/KeyPairGeneratorSpi;

    invoke-static {v1, v2, p0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method private static getInstance(Lsun/security/jca/GetInstance$Instance;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 3

    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/KeyPairGenerator;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGenerator;

    :goto_0
    iget-object v2, p0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0

    :cond_0
    iget-object v1, p0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyPairGeneratorSpi;

    new-instance v0, Ljava/security/KeyPairGenerator$Delegate;

    invoke-direct {v0, v1, p1}, Ljava/security/KeyPairGenerator$Delegate;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method disableFailover()V
    .locals 0

    return-void
.end method

.method public final genKeyPair()Ljava/security/KeyPair;
    .locals 1

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->disableFailover()V

    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public initialize(I)V
    .locals 1

    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {}, Lsun/security/jca/JCAUtil;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    return-void
.end method
