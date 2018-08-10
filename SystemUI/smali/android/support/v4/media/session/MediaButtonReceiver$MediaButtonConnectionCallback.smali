.class Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;
.super Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;
.source "MediaButtonReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaButtonConnectionCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

.field private final mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method

.method private finish()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserCompat;->disconnect()V

    iget-object v0, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mPendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/MediaBrowserCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v3, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MediaButtonReceiver"

    const-string/jumbo v4, "Failed to create a media controller"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onConnectionFailed()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->finish()V

    return-void
.end method

.method setMediaBrowser(Landroid/support/v4/media/MediaBrowserCompat;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaButtonReceiver$MediaButtonConnectionCallback;->mMediaBrowser:Landroid/support/v4/media/MediaBrowserCompat;

    return-void
.end method
