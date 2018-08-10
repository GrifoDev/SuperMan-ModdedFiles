.class Landroid/media/session/MediaSessionManager$CallbackImpl$3;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$CallbackImpl;->onAddressedPlayerChangedToMediaSession(Landroid/media/session/MediaSession$Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field final synthetic val$sessionToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$CallbackImpl;Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$3;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$3;->val$sessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$3;->this$1:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$CallbackImpl;->-get0(Landroid/media/session/MediaSessionManager$CallbackImpl;)Landroid/media/session/MediaSessionManager$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionManager$CallbackImpl$3;->val$sessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager$Callback;->onAddressedPlayerChanged(Landroid/media/session/MediaSession$Token;)V

    return-void
.end method
