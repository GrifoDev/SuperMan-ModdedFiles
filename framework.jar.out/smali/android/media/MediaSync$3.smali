.class Landroid/media/MediaSync$3;
.super Ljava/lang/Thread;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->createAudioThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/MediaSync;->-set1(Landroid/media/MediaSync;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v2}, Landroid/media/MediaSync;->-set0(Landroid/media/MediaSync;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Landroid/media/MediaSync$3;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
