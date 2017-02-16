.class public abstract Ljava/security/cert/X509CRLEntry;
.super Ljava/lang/Object;
.source "X509CRLEntry.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    return v7

    .line 83
    :cond_0
    instance-of v4, p1, Ljava/security/cert/X509CRLEntry;

    if-nez v4, :cond_1

    .line 84
    return v6

    .line 86
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v3

    .line 87
    .local v3, "thisCRLEntry":[B
    nop

    nop

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v2

    .line 89
    .local v2, "otherCRLEntry":[B
    array-length v4, v3

    array-length v5, v2

    if-eq v4, v5, :cond_2

    .line 90
    return v6

    .line 91
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 92
    aget-byte v4, v3, v1

    aget-byte v5, v2, v1
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    .line 93
    return v6

    .line 91
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    .end local v2    # "otherCRLEntry":[B
    .end local v3    # "thisCRLEntry":[B
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ce":Ljava/security/cert/CRLException;
    return v6

    .line 97
    .end local v0    # "ce":Ljava/security/cert/CRLException;
    .restart local v1    # "i":I
    .restart local v2    # "otherCRLEntry":[B
    .restart local v3    # "thisCRLEntry":[B
    :cond_4
    return v7
.end method

.method public getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 151
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

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
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

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 109
    .local v3, "retval":I
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v1

    .line 110
    .local v1, "entryData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 111
    aget-byte v4, v1, v2
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "entryData":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ce":Ljava/security/cert/CRLException;
    return v3

    .line 116
    .end local v0    # "ce":Ljava/security/cert/CRLException;
    .restart local v1    # "entryData":[B
    .restart local v2    # "i":I
    :cond_0
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method
