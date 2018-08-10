.class final Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;
.super Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnVolumeKeyLongPressListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;)Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onVolumeKeyLongPress(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SessionManager"

    const-string/jumbo v1, "Failed to call volume key long-press listener. Either mListener or mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl$1;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
