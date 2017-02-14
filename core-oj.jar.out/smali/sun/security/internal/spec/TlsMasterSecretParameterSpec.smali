.class public Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsMasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clientRandom:[B

.field private final majorVersion:I

.field private final minorVersion:I

.field private final premasterSecret:Ljavax/crypto/SecretKey;

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final serverRandom:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "premasterSecret must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    invoke-static {p3}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    iput-object p6, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    iput p7, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    iput p8, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    return-void
.end method

.method static checkVersion(I)I
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Version must be between 0 and 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return p0
.end method


# virtual methods
.method public getClientRandom()[B
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getPremasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
