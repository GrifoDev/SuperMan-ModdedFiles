.class public interface abstract Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;
.super Ljava/lang/Object;
.source "CoverPlaybackStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlaybackStateChangedListener"
.end annotation


# virtual methods
.method public abstract onMetadataChanged(Landroid/media/MediaMetadata;)V
.end method

.method public abstract onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
.end method

.method public abstract onSessionDestroyed()V
.end method
