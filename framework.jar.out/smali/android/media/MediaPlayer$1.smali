.class Landroid/media/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSubtitleDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V
    .locals 6

    invoke-virtual {p2}, Landroid/media/SubtitleData;->getTrackIndex()I

    move-result v0

    iget-object v4, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer$1;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v4}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Ljava/util/Vector;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/media/SubtitleTrack;

    invoke-virtual {v3, p2}, Landroid/media/SubtitleTrack;->onData(Landroid/media/SubtitleData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    monitor-exit v5

    return-void
.end method
