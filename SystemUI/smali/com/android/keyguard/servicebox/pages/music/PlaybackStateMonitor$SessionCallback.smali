.class Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMetadataChanged metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlaybackStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    :cond_0
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSessionDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;->this$0:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->-get1(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    :cond_0
    return-void
.end method
