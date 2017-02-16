.class final Lsun/security/ssl/HandshakeMessage$DistinguishedName;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DistinguishedName"
.end annotation


# instance fields
.field name:[B


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1
    .param p1, "dn"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    .line 1190
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    .line 1186
    return-void
.end method


# virtual methods
.method getX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    :try_start_0
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/net/ssl/SSLProtocolException;

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1198
    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLProtocolException;

    throw v1
.end method

.method length()I
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "output"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    .line 1213
    .local v0, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "output"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1208
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->name:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 1207
    return-void
.end method
