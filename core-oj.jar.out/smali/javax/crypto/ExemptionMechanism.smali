.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# instance fields
.field private done:Z

.field private exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

.field private initialized:Z

.field private keyStored:Ljava/security/Key;

.field private mechanism:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "ExemptionMechanism"

    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v1, v2, p0}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const-string/jumbo v1, "ExemptionMechanism"

    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string/jumbo v1, "ExemptionMechanism"

    const-class v2, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-static {v1, v2, p0, p1}, Ljavax/crypto/JceSecurity;->getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    iget-object v1, v0, Lsun/security/jca/GetInstance$Instance;->impl:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/ExemptionMechanismSpi;

    iget-object v3, v0, Lsun/security/jca/GetInstance$Instance;->provider:Ljava/security/Provider;

    invoke-direct {v2, v1, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    return-void
.end method

.method public final genExemptionBlob([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ExemptionMechanism not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    return v0
.end method

.method public final genExemptionBlob([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ExemptionMechanism not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    return v0
.end method

.method public final genExemptionBlob()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "ExemptionMechanism not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputSize(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ExemptionMechanism not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->exmechSpi:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->initialized:Z

    return-void
.end method

.method public final isCryptoAllowed(Ljava/security/Key;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->done:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->keyStored:Ljava/security/Key;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method
