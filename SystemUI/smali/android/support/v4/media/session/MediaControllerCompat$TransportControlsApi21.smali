.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi21"
.end annotation


# instance fields
.field protected final mControlsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V

    return-void
.end method

.method public rewind()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V

    return-void
.end method

.method public skipToNext()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V

    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V

    return-void
.end method
