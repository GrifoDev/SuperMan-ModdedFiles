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
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$Status;
    .param p2, "handshakeStatus"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .param p3, "bytesConsumed"    # I
    .param p4, "bytesProduced"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Parameter(s)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    .line 187
    iput-object p1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 188
    iput-object p2, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 189
    iput p3, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    .line 190
    iput p4, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    .line 180
    return-void
.end method


# virtual methods
.method public final bytesConsumed()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    return v0
.end method

.method public final bytesProduced()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    return v0
.end method

.method public final getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v0
.end method

.method public final getStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string/jumbo v1, " HandshakeStatus = "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    iget-object v1, p0, Ljavax/net/ssl/SSLEngineResult;->handshakeStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string/jumbo v1, "\nbytesConsumed = "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed:I

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string/jumbo v1, " bytesProduced = "

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget v1, p0, Ljavax/net/ssl/SSLEngineResult;->bytesProduced:I

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
