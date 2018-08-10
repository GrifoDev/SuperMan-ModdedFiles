.class Landroid/media/session/MediaSessionManager$CallbackImpl$4;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$CallbackImpl;->onAddressedPlayerChangedToMediaButtonReceiver(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field final synthetic val$mediaButtonReceiver:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$4;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$4;->val$mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$4;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$CallbackImpl;->-get0(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$4;->val$mediaButtonReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager$Callback;->onAddressedPlayerChanged(Landroid/content/ComponentName;)V

    return-void
.end method
