.class Landroid/support/v4/media/session/MediaSessionCompatApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi21$QueueItem;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V

    return-object v0
.end method

.method public static setPlaybackToLocal(Ljava/lang/Object;I)V
    .locals 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    check-cast p0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/session/MediaSession;

    check-cast p1, Landroid/media/VolumeProvider;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public static verifyToken(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "token is not a valid MediaSession.Token object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
