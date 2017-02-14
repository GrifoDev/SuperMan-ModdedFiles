.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Lsun/nio/ch/Interruptible;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .locals 0

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt(Ljava/lang/Thread;)V
    .locals 4

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-get1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set1(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Z)Z

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-static {v1, p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->-set0(Ljava/nio/channels/spi/AbstractInterruptibleChannel;Ljava/lang/Thread;)Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
