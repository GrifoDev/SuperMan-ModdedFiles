.class public Lsun/security/internal/spec/TlsPrfParameterSpec;
.super Ljava/lang/Object;
.source "TlsPrfParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final outputLength:I

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final secret:Ljavax/crypto/SecretKey;

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/lang/String;[BILjava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "label and seed must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outputLength must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    iput-object p2, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    iput p4, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    iput-object p5, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    iput p6, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    iput p7, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->outputLength:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    iget v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getSecret()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->secret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lsun/security/internal/spec/TlsPrfParameterSpec;->seed:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
