.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private final chain:[Ljava/security/cert/Certificate;

.field private final privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/Certificate;

    .prologue
    const/4 v5, 0x0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 423
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "invalid null input"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :cond_1
    array-length v3, p2

    if-nez v3, :cond_2

    .line 426
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 427
    const-string/jumbo v4, "invalid zero-length input chain"

    .line 426
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 430
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    .line 431
    .local v1, "clonedChain":[Ljava/security/cert/Certificate;
    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "certType":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 433
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 435
    const-string/jumbo v4, "chain does not contain certificates of the same type"

    .line 434
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_4
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 440
    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 441
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 442
    const-string/jumbo v4, "private key algorithm does not match algorithm of public key in end entity certificate (at index 0)"

    .line 441
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    :cond_5
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    .line 448
    aget-object v3, v1, v5

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_6

    .line 449
    instance-of v3, v1, [Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_7

    .line 455
    :cond_6
    iput-object v1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 421
    :goto_1
    return-void

    .line 451
    :cond_7
    array-length v3, v1

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 453
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v4, v1

    .line 452
    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Private key entry and certificate chain with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 504
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v3, v3

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 504
    const-string/jumbo v3, " elements:\r\n"

    .line 503
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    iget-object v3, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 506
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    const-string/jumbo v5, "\r\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
