.class Landroid/media/MediaPlayer$4;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer;->setSubtitleAnchor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;

.field final synthetic val$thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    iput-object p2, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/SubtitleController;

    iget-object v3, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->-get31(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {v2, v0, v3, v4}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->-set8(Landroid/media/MediaPlayer;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v1}, Landroid/media/MediaPlayer;->-get30(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v1

    new-instance v2, Landroid/media/MediaPlayer$4$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPlayer$4$1;-><init>(Landroid/media/MediaPlayer$4;)V

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    iget-object v1, p0, Landroid/media/MediaPlayer$4;->val$thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
