.class public Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicControllerListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public isMusicControllerDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 0

    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 0

    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 0

    return-void
.end method
