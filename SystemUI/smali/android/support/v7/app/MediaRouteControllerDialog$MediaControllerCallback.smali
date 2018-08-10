.class final Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput-object p1, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput-object v2, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    return-void
.end method
