.class Lcom/android/systemui/servicebox/pages/music/MusicController$3;
.super Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;
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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    const-string/jumbo v0, "MusicController_LOCK"

    const-string/jumbo v1, "Setting DB clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_share_current_music_pkg"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v1, "aod_lock_share_current_music_title"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v1, "aod_lock_share_current_music_artist"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v1, "aod_lock_share_current_music_app"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_share_current_music_playback_state"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get3(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_share_current_music_enabled"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public isMusicControllerDisabled()Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "aod_lock_share_current_music_pkg"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xc8

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_lock_share_current_music_pkg"

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get7(Lcom/android/systemui/servicebox/pages/music/MusicController;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v1, "aod_lock_share_current_music_app"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xc8

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120a59

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_3

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_4

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v4, "aod_lock_share_current_music_artist"

    invoke-static {v3, v4, v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    const-string/jumbo v5, "aod_lock_share_current_music_title"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get2(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, " "

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap5(Lcom/android/systemui/servicebox/pages/music/MusicController;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get2(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-set0(Lcom/android/systemui/servicebox/pages/music/MusicController;Z)Z

    return-void

    :cond_5
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "aod_lock_share_current_music_playback_state"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-wrap0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/MusicController$3;->this$0:Lcom/android/systemui/servicebox/pages/music/MusicController;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->-get0(Lcom/android/systemui/servicebox/pages/music/MusicController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "aod_lock_share_current_music_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
