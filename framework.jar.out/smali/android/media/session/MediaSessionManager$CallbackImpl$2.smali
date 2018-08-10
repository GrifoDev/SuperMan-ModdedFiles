.class Landroid/media/session/MediaSessionManager$CallbackImpl$2;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$CallbackImpl;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$mediaButtonReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->val$event:Landroid/view/KeyEvent;

    iput-object p3, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->val$mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$CallbackImpl;->-get0(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->val$event:Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$2;->val$mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager$Callback;->onMediaKeyEventDispatched(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    return-void
.end method
