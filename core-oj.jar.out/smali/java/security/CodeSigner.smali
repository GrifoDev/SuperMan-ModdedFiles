.class public final Ljava/security/CodeSigner;
.super Ljava/lang/Object;
.source "CodeSigner.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5ea2fa66cb219aadL


# instance fields
.field private transient myhash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/security/Timestamp;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/Timestamp;)V
    .locals 1
    .param p1, "signerCertPath"    # Ljava/security/cert/CertPath;
    .param p2, "timestamp"    # Ljava/security/Timestamp;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iput-object p1, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    .line 78
    iput-object p2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    .line 73
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 171
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 169
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 128
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/security/CodeSigner;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 131
    check-cast v0, Ljava/security/CodeSigner;

    .line 133
    .local v0, "that":Ljava/security/CodeSigner;
    if-ne p0, v0, :cond_1

    .line 134
    const/4 v2, 0x1

    return v2

    .line 129
    .end local v0    # "that":Ljava/security/CodeSigner;
    :cond_0
    return v3

    .line 136
    .restart local v0    # "that":Ljava/security/CodeSigner;
    :cond_1
    invoke-virtual {v0}, Ljava/security/CodeSigner;->getTimestamp()Ljava/security/Timestamp;

    move-result-object v1

    .line 137
    .local v1, "thatTimestamp":Ljava/security/Timestamp;
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v2, :cond_2

    .line 138
    if-eqz v1, :cond_3

    .line 139
    return v3

    .line 142
    :cond_2
    if-eqz v1, :cond_4

    .line 143
    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v2, v1}, Ljava/security/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    :cond_3
    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 144
    :cond_4
    return v3
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/security/Timestamp;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 107
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    .line 114
    :cond_0
    :goto_0
    iget v0, p0, Ljava/security/CodeSigner;->myhash:I

    return v0

    .line 111
    :cond_1
    iget-object v0, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1}, Ljava/security/Timestamp;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/security/CodeSigner;->myhash:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    if-eqz v1, :cond_0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/CodeSigner;->timestamp:Ljava/security/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_0
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
