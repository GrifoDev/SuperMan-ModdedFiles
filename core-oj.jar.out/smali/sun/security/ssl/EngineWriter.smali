.class final Lsun/security/ssl/EngineWriter;
.super Ljava/lang/Object;
.source "EngineWriter.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private outboundClosed:Z

.field private outboundList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lsun/security/ssl/EngineWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    .line 58
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    .line 38
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    .line 60
    return-void
.end method

.method private dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    .locals 7
    .param p1, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p2, "hsData"    # Z

    .prologue
    .line 130
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 132
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    iget-object v4, p1, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 134
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v3

    .line 135
    .local v3, "pos":I
    invoke-virtual {p1}, Lsun/security/ssl/EngineArgs;->deltaNet()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 136
    invoke-virtual {v0, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 138
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[Raw write"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 139
    if-eqz p2, :cond_0

    const-string/jumbo v4, ""

    .line 138
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    const-string/jumbo v6, "]: length = "

    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    .line 138
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0, v4}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V

    .line 128
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .end local v3    # "pos":I
    :goto_1
    return-void

    .line 139
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    .restart local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .restart local v3    # "pos":I
    :cond_0
    const-string/jumbo v4, " (bb)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    .end local v3    # "pos":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private getOutboundData(Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4
    .param p1, "dstBB"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "msg":Ljava/lang/Object;
    sget-boolean v2, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move-object v0, v1

    .line 74
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 75
    .local v0, "bbIn":Ljava/nio/ByteBuffer;
    sget-boolean v2, Lsun/security/ssl/EngineWriter;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .line 86
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v1, v2, :cond_3

    .line 87
    iget-object v2, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v2

    .line 90
    :cond_3
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    return-object v2

    .line 93
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private hasOutboundDataInternal()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method declared-synchronized closeOutbound()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 240
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 239
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasOutboundData()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 232
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isOutboundDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 236
    :try_start_0
    iget-boolean v1, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method putOutboundData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 207
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method declared-synchronized putOutboundDataSync(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 217
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Write side already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 215
    return-void
.end method

.method declared-synchronized writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3
    .param p1, "outputRecord"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "ea"    # Lsun/security/ssl/EngineArgs;
    .param p3, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p4, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lsun/security/ssl/EngineWriter;->hasOutboundDataInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p2, Lsun/security/ssl/EngineArgs;->netData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lsun/security/ssl/EngineWriter;->getOutboundData(Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 165
    .local v0, "hss":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "packet"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lsun/security/ssl/EngineWriter;->dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 174
    return-object v0

    .line 181
    .end local v0    # "hss":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    if-eqz v1, :cond_2

    .line 182
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "The write side was already closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 185
    :cond_2
    :try_start_2
    invoke-virtual {p1, p2, p3, p4}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/EngineArgs;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    .line 187
    sget-object v1, Lsun/security/ssl/EngineWriter;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "packet"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lsun/security/ssl/EngineWriter;->dumpPacket(Lsun/security/ssl/EngineArgs;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    .line 197
    return-object v2
.end method

.method declared-synchronized writeRecord(Lsun/security/ssl/EngineOutputRecord;Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V
    .locals 2
    .param p1, "outputRecord"    # Lsun/security/ssl/EngineOutputRecord;
    .param p2, "writeMAC"    # Lsun/security/ssl/MAC;
    .param p3, "writeCipher"    # Lsun/security/ssl/CipherBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lsun/security/ssl/EngineWriter;->outboundClosed:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "writer side was already closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lsun/security/ssl/EngineOutputRecord;->write(Lsun/security/ssl/MAC;Lsun/security/ssl/CipherBox;)V

    .line 120
    invoke-virtual {p1}, Lsun/security/ssl/EngineOutputRecord;->isFinishedMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lsun/security/ssl/EngineWriter;->outboundList:Ljava/util/LinkedList;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 103
    return-void
.end method
