.class public Ljava/security/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private on:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    .line 74
    invoke-virtual {p0, p2}, Ljava/security/DigestOutputStream;->setMessageDigest(Ljava/security/MessageDigest;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public on(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Ljava/security/DigestOutputStream;->on:Z

    .line 160
    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "digest"    # Ljava/security/MessageDigest;

    .prologue
    .line 94
    iput-object p1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Digest Output Stream] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 118
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 114
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->on:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 148
    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 144
    return-void
.end method
