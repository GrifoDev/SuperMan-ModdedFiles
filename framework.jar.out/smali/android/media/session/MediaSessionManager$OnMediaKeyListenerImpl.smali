.class final Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;
.super Landroid/media/session/IOnMediaKeyListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnMediaKeyListenerImpl"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;
    .locals 1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/IOnMediaKeyListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SessionManager"

    const-string/jumbo v1, "Failed to call media key listener. Either mListener or mHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
