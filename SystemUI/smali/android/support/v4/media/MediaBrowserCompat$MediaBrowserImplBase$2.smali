.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mCallbacksMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;->disconnect(Landroid/os/Messenger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget v1, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->forceCloseConnection()V

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iput v1, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mState:I

    :cond_1
    sget-boolean v2, Landroid/support/v4/media/MediaBrowserCompat;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MediaBrowserCompat"

    const-string/jumbo v3, "disconnect..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    invoke-virtual {v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->dump()V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RemoteException during connect for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
