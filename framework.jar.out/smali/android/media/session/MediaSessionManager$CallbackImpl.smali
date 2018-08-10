.class final Landroid/media/session/MediaSessionManager$CallbackImpl;
.super Landroid/media/session/ICallback$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaSessionManager$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/ICallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mCallback:Landroid/media/session/MediaSessionManager$Callback;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$4;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$4;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$3;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$CallbackImpl$3;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$2;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl$1;-><init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
