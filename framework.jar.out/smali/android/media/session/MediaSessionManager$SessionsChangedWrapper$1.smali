.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;
.super Landroid/media/session/IActiveSessionsListener$Stub;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;


# direct methods
.method constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .prologue
    .line 335
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-direct {p0}, Landroid/media/session/IActiveSessionsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$Token;>;"
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get1(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->-get1(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;

    invoke-direct {v1, p0, p1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_0
    return-void
.end method
