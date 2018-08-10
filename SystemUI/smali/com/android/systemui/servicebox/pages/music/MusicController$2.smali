.class Lcom/android/systemui/servicebox/pages/music/MusicController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "MusicController.java"


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->updateSessions()V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Z)V
    .locals 4

    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageRemoved() pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", r = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "servicebox_music_last_pkg"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap3(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    :cond_2
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->updateSessions()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap2(Lcom/android/systemui/servicebox/pages/music/MusicController;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set9(Lcom/android/systemui/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get1(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get9(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$2;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

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

    monitor-exit v3

    throw v2

    :cond_2
    monitor-exit v3

    return-void
.end method
