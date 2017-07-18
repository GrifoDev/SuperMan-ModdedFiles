.class public Ljavax/net/ssl/SSLEngineResult;
.super Ljava/lang/Object;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;,
        Ljavax/net/ssl/SSLEngineResult$Status;
    }
.end annotation


# instance fields
.field private final bytesConsumed:I

.field private final bytesProduced:I

.field private final handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private final status:Ljavax/net/ssl/SSLEngineResult$Status;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Parameter(s)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    return-void
.end method


# virtual methods
.method public final bytesConsumed()I
    .locals 1

    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    return v0
.end method

.method public final bytesProduced()I
    .locals 1

    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    return v0
.end method

.method public final getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public final getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " HandshakeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nbytesConsumed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytesProduced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
