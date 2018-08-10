.class public interface abstract Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicControllerListener"
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract isMusicControllerDisabled()Z
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setLyrics(Ljava/lang/String;)V
.end method

.method public abstract setMetadata(Landroid/media/MediaMetadata;)V
.end method

.method public abstract setPlaybackState(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract setSessionEnabled(Z)V
.end method
