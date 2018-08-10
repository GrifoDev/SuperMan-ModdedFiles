.class Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$result:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$1:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->this$1:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;->-get0(Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;)Landroid/media/session/MediaSessionManager$OnMediaKeyListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$event:Landroid/view/KeyEvent;

    invoke-interface {v1, v2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const-string/jumbo v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The media key listener is returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl$1;->val$result:Landroid/os/ResultReceiver;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
