.class final Lsun/security/ssl/RenegotiationInfoExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# instance fields
.field private final renegotiated_connection:[B


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v1}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-eq v1, p2, :cond_1

    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " extension"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v1, v0, [B

    iput-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    if-eqz v0, :cond_2

    iget-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    invoke-virtual {p1, v1, v2, v0}, Lsun/security/ssl/HandshakeInStream;->read([BII)I

    :cond_2
    return-void
.end method

.method constructor <init>([B[B)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    array-length v0, p1

    if-eqz v0, :cond_1

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [B

    iput-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    goto :goto_0
.end method


# virtual methods
.method getRenegotiatedConnection()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    return-object v0
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v1, v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method length()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    iget v0, v0, Lsun/security/ssl/ExtensionType;->id:I

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Extension "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", renegotiated_connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "<empty>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/RenegotiationInfoExtension;->renegotiated_connection:[B

    invoke-static {v0}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
