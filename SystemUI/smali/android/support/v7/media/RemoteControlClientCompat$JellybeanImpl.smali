.class Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;
.super Landroid/support/v7/media/RemoteControlClientCompat;
.source "RemoteControlClientCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mRegistered:Z

.field private final mUserRouteObj:Ljava/lang/Object;


# virtual methods
.method public setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeMax(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeHandling(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackStream(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackType(Ljava/lang/Object;I)V

    iget-boolean v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    new-instance v1, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;

    invoke-direct {v1, p0}, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;-><init>(Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;)V

    invoke-static {v1}, Landroid/support/v7/media/MediaRouterJellybean;->createVolumeCallback(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRcc:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
