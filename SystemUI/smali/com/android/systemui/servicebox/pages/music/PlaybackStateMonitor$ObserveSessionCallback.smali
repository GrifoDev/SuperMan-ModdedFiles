.class Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;
.super Landroid/media/session/MediaController$Callback;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserveSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;


# direct methods
.method private constructor <init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[ob]onMetadataChanged() metadata = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;->this$0:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    :cond_0
    return-void
.end method
