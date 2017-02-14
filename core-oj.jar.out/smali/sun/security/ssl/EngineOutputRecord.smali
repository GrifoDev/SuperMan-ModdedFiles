.class final Lsun/security/ssl/EngineOutputRecord;
.super Lsun/security/ssl/OutputRecord;
.source "EngineOutputRecord.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private engine:Lsun/security/ssl/SSLEngineImpl;

.field private finishedMsg:Z

.field private writer:Lsun/security/ssl/EngineWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/security/ssl/EngineOutputRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineOutputRecord;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(BLsun/security/ssl/SSLEngineImpl;)V
    .locals 1

    invoke-static {p1}, Lsun/security/ssl/EngineOutputRecord;->recordSize(B)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsun/security/ssl/OutputRecord;-><init>(BI)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    iput-object p2, p0, Lsun/security/ssl/EngineOutputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v0, p2, Lsun/security/ssl/SSLEngineImpl;->writer:Lsun/security/ssl/EngineWriter;

    iput-object v0, p0, Lsun/security/ssl/EngineOutputRecord;->writer:Lsun/security/ssl/EngineWriter;

    return-void
.end method

.method private addMAC(Lsun/security/ssl/MAC;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v1

    invoke-virtual {p1, v1, p2, v2}, Lsun/security/ssl/MAC;->compute(BLjava/nio/ByteBuffer;Z)[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v1

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method private static recordSize(B)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown record type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x21b

    return v0

    :pswitch_1
    const/16 v0, 0x4219

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method encrypt(Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p1, p2}, Lsun/security/ssl/CipherBox;->encrypt(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    return-void
.end method

.method isFinishedMsg()Z
    .locals 1

    iget-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    return v0
.end method

.method setFinishedMsg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/EngineOutputRecord;->finishedMsg:Z

    return-void
.end method

.method write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v3, Lsun/security/ssl/EngineOutputRecord;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    sget-object v1, Lsun/security/ssl/MAC;->NULL:Lsun/security/ssl/MAC;

    if-ne p2, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lsun/security/ssl/EngineOutputRecord;->engine:Lsun/security/ssl/SSLEngineImpl;

    iget-object v3, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v1, p3, v3}, Lsun/security/ssl/SSLEngineImpl;->needToSplitPayload(Lsun/security/ssl/CipherBox;Lsun/security/ssl/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2, p3, v2}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->resetLim()V

    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    move-result v1

    const/16 v2, 0x3de6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->getAppRemaining()I

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    add-int/lit8 v1, v3, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, p4}, Lsun/security/ssl/EngineArgs;->gather(I)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p2, v0}, Lsun/security/ssl/EngineOutputRecord;->addMAC(Lsun/security/ssl/MAC;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p3, v0}, Lsun/security/ssl/EngineOutputRecord;->encrypt(Lsun/security/ssl/CipherBox;Ljava/nio/ByteBuffer;)V

    sget-object v5, Lsun/security/ssl/EngineOutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "record"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "handshake"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    sget-object v5, Lsun/security/ssl/EngineOutputRecord;->debug:Lsun/security/ssl/Debug;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "record"

    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_3

    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", WRITE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v7

    invoke-static {v7}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    sub-int v4, v5, v1

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v6, v6, Lsun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x2

    iget-object v6, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v6, v6, Lsun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x3

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v3, 0x4

    int-to-byte v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method write(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unexpected byte buffers"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lsun/security/ssl/OutputRecord;->addMAC(Lsun/security/ssl/MAC;)V

    invoke-virtual {p0, p2}, Lsun/security/ssl/OutputRecord;->encrypt(Lsun/security/ssl/CipherBox;)V

    move-object v0, v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lsun/security/ssl/OutputRecord;->write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method writeBuffer(Ljava/io/OutputStream;[BIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lsun/security/ssl/EngineOutputRecord;->writer:Lsun/security/ssl/EngineWriter;

    invoke-virtual {v1, v0}, Lsun/security/ssl/EngineWriter;->putOutboundData(Ljava/nio/ByteBuffer;)V

    return-void
.end method
