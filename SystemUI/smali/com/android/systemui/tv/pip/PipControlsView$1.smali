.class Lcom/android/systemui/tv/pip/PipControlsView$1;
.super Landroid/media/session/MediaController$Callback;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/pip/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tv/pip/PipControlsView$1;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/tv/pip/PipControlsView;->-wrap2(Lcom/android/systemui/tv/pip/PipControlsView;)V

    return-void
.end method
