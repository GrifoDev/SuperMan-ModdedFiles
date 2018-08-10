.class public interface abstract Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlaybackStateChangedListener"
.end annotation


# virtual methods
.method public abstract onLyricsChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMetadataChanged(Landroid/media/MediaMetadata;)V
.end method

.method public abstract onPendingIntentChanged(Landroid/app/PendingIntent;)V
.end method

.method public abstract onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract onSessionChanged(Ljava/lang/String;)V
.end method

.method public abstract onSessionDestroyed(Ljava/lang/String;)V
.end method

.method public abstract onSessionEnabled(Z)V
.end method
