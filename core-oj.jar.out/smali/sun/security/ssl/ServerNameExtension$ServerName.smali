.class Lsun/security/ssl/ServerNameExtension$ServerName;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/ServerNameExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerName"
.end annotation


# instance fields
.field final data:[B

.field final hostname:Ljava/lang/String;

.field final length:I

.field final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    iput-object p2, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    const-string/jumbo v0, "UTF8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    iget-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    iget-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->length:I

    iget v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    const-string/jumbo v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "host_name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/ServerNameExtension$ServerName;->data:[B

    invoke-static {v1}, Lsun/security/ssl/Debug;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
