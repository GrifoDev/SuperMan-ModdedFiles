.class public Ljava/security/AlgorithmParameters;
.super Ljava/lang/Object;
.source "AlgorithmParameters.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private initialized:Z

.field private paramSpi:Ljava/security/AlgorithmParametersSpi;

.field private provider:Ljava/security/Provider;


# direct methods
.method protected constructor <init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    iput-object p1, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    iput-object p2, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    iput-object p3, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v3, "AlgorithmParameters"

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v3, v2}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/security/AlgorithmParameters;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/AlgorithmParametersSpi;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v4, v2, v3, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

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

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v1, "AlgorithmParameters"

    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/security/AlgorithmParameters;

    aget-object v1, v0, v2

    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v1, "AlgorithmParameters"

    invoke-static {p0, v1, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/security/AlgorithmParameters;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/security/AlgorithmParametersSpi;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/security/Provider;

    invoke-direct {v3, v1, v2, p0}, Ljava/security/AlgorithmParameters;-><init>(Ljava/security/AlgorithmParametersSpi;Ljava/security/Provider;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameters;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final getEncoded(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Ljava/security/AlgorithmParameters;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string/jumbo v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final init([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1}, Ljava/security/AlgorithmParametersSpi;->engineInit([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final init([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "already initialized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParametersSpi;->engineInit([BLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Ljava/security/AlgorithmParameters;->initialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/security/AlgorithmParameters;->paramSpi:Ljava/security/AlgorithmParametersSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParametersSpi;->engineToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
