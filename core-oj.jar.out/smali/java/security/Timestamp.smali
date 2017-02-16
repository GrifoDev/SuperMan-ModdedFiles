.class public final Ljava/security/Timestamp;
.super Ljava/lang/Object;
.source "Timestamp.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4c5d75ad840d029eL


# instance fields
.field private transient myhash:I

.field private signerCertPath:Ljava/security/cert/CertPath;

.field private timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CertPath;)V
    .locals 4
    .param p1, "timestamp"    # Ljava/util/Date;
    .param p2, "signerCertPath"    # Ljava/security/cert/CertPath;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 76
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    .line 80
    iput-object p2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    .line 75
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 162
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    .line 159
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 125
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/security/Timestamp;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 128
    nop

    nop

    .line 130
    .local v0, "that":Ljava/security/Timestamp;
    if-ne p0, v0, :cond_1

    .line 131
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v0    # "that":Ljava/security/Timestamp;
    :cond_0
    return v1

    .line 133
    .restart local v0    # "that":Ljava/security/Timestamp;
    :cond_1
    iget-object v2, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/security/Timestamp;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v0}, Ljava/security/Timestamp;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/CertPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 133
    :cond_2
    return v1
.end method

.method public getSignerCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/security/Timestamp;->myhash:I

    .line 112
    :cond_0
    iget v0, p0, Ljava/security/Timestamp;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/security/Timestamp;->timestamp:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v2, p0, Ljava/security/Timestamp;->signerCertPath:Ljava/security/cert/CertPath;

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "TSA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    :goto_0
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 151
    :cond_0
    const-string/jumbo v2, "TSA: <empty>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
