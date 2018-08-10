.class Lcom/android/systemui/statusbar/phone/StatusBar$6;
.super Landroid/media/session/MediaController$Callback;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set16(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap5(Lcom/android/systemui/statusbar/phone/StatusBar;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap8(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    :cond_0
    return-void
.end method
