.class Landroid/filterpacks/videosrc/MediaSource$2;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0
    .param p1, "this$0"    # Landroid/filterpacks/videosrc/MediaSource;

    .prologue
    .line 537
    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 539
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->-get1(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "MediaSource"

    const-string/jumbo v1, "MediaPlayer is prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v1

    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterpacks/videosrc/MediaSource;->-set4(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    .line 542
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$2;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 538
    return-void

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
