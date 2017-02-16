.class public abstract Ljava/security/cert/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/Certificate$CertificateRep;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x31c20b3b0df7f5e5L


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 102
    if-ne p0, p1, :cond_0

    .line 103
    const/4 v3, 0x1

    return v3

    .line 105
    :cond_0
    instance-of v3, p1, Ljava/security/cert/Certificate;

    if-nez v3, :cond_1

    .line 106
    return v4

    .line 109
    :cond_1
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v2

    .line 110
    .local v2, "thisCert":[B
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-static {p1}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v1

    .line 112
    .local v1, "otherCert":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 113
    .end local v1    # "otherCert":[B
    .end local v2    # "thisCert":[B
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/security/cert/CertificateException;
    return v4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation
.end method

.method public abstract getPublicKey()Ljava/security/PublicKey;
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "retval":I
    :try_start_0
    invoke-static {p0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal(Ljava/security/cert/Certificate;)[B

    move-result-object v0

    .line 128
    .local v0, "certData":[B
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 129
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return v3

    .line 132
    .end local v0    # "certData":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/security/cert/CertificateException;
    return v3
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    new-instance v1, Ljava/security/cert/Certificate$CertificateRep;

    iget-object v2, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/cert/Certificate$CertificateRep;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/io/NotSerializableException;

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "java.security.cert.Certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 269
    iget-object v3, p0, Ljava/security/cert/Certificate;->type:Ljava/lang/String;

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    const-string/jumbo v3, ": "

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
