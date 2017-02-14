.class Landroid/net/apf/ApfFilter$ReceiveThread;
.super Ljava/lang/Thread;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveThread"
.end annotation


# instance fields
.field private final mPacket:[B

.field private final mSocket:Ljava/io/FileDescriptor;

.field private volatile mStopped:Z

.field final synthetic this$0:Landroid/net/apf/ApfFilter;


# direct methods
.method public constructor <init>(Landroid/net/apf/ApfFilter;Ljava/io/FileDescriptor;)V
    .locals 1

    iput-object p1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x5ea

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    iput-object p2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public halt()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    :try_start_0
    iget-object v1, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    const-string/jumbo v3, "begin monitoring"

    invoke-static {v2, v3}, Landroid/net/apf/ApfFilter;->-wrap2(Landroid/net/apf/ApfFilter;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mSocket:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    iget-object v4, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    iget-object v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->this$0:Landroid/net/apf/ApfFilter;

    iget-object v3, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mPacket:[B

    invoke-static {v2, v3, v1}, Landroid/net/apf/ApfFilter;->-wrap3(Landroid/net/apf/ApfFilter;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Landroid/net/apf/ApfFilter$ReceiveThread;->mStopped:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "ApfFilter"

    const-string/jumbo v3, "Read error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method
