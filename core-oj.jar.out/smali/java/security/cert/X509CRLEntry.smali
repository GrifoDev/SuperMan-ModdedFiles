.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    instance-of v4, p1, Ljava/security/cert/X509CRLEntry;

    if-nez v4, :cond_1

    return v6

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    nop

    nop

    invoke-virtual {p1}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v2

    array-length v4, v3

    array-length v5, v2

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    aget-byte v4, v3, v1

    aget-byte v5, v2, v1
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    return v6

    :cond_4
    return v7
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getRevocationDate()Ljava/util/Date;
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0}, Lsun/security/x509/X509CRLEntryImpl;->getRevocationReason(Ljava/security/cert/X509CRLEntry;)Ljava/security/cert/CRLReason;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract hasExtensions()Z
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v4, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    return v3

    :cond_0
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method
