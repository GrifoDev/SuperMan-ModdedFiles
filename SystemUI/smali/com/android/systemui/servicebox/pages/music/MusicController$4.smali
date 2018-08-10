.class Lcom/android/systemui/servicebox/pages/music/MusicController$4;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/music/MusicController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get5(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get5(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;

    move-result-object v2

    const-string/jumbo v3, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set7(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get6(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 6

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMetadataChanged() metadata = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set5(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set7(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_pkg"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap4(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get6(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPendingIntentChanged(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set10(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set9(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPlaybackStateChanged() / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap4(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSessionChanged(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionChanged() session is changed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->isMusicControllerDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get3(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_show_music_oobe_text"

    const/4 v5, -0x2

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set2(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, v6}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set1(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set8(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap1(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set6(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public declared-synchronized onSessionDestroyed(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionDestroyed() sessionPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mLastPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap2(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set9(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public onSessionEnabled(Z)V
    .locals 5

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSessionEnabled() enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get4(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", lastSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", activeSession = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get10(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get10(Lcom/android/systemui/servicebox/pages/music/MusicController;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getActiveSessionPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MusicController_LOCK"

    const-string/jumbo v3, "onSessionEnabled() Set enabled to true because LastSession and TopSession are same"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get4(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v2

    if-ne v2, p1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set3(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$4;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get8(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;->setSessionEnabled(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
