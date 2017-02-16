.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 0
    .param p1, "paramGenSpi"    # Ljava/security/AlgorithmParameterGeneratorSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    .line 137
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    .line 138
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 5
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    const-string/jumbo v3, "AlgorithmParameterGenerator"

    .line 184
    const/4 v2, 0x0

    nop

    nop

    .line 182
    invoke-static {p0, v3, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/AlgorithmParameterGenerator;

    .line 186
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/AlgorithmParameterGeneratorSpi;

    .line 187
    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    .line 185
    invoke-direct {v4, v2, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 189
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/security/NoSuchProviderException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    .line 235
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameterGenerator;

    .line 239
    aget-object v1, v0, v2

    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    .line 238
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_0
    const-string/jumbo v1, "AlgorithmParameterGenerator"

    .line 279
    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    .line 282
    .local v0, "objs":[Ljava/lang/Object;
    new-instance v3, Ljava/security/AlgorithmParameterGenerator;

    .line 283
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/AlgorithmParameterGeneratorSpi;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    .line 282
    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final generateParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 308
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 307
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 319
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 318
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 338
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->paramGenSpi:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 354
    return-void
.end method
