.class Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->notifyClient(Landroid/media/MediaPlayer$DrmInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

.field final synthetic val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;Landroid/media/MediaPlayer$DrmInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    iput-object p2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-static {v0}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->-get1(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer$OnDrmInfoListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;->this$1:Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;

    invoke-static {v1}, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;->-get0(Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$OnDrmInfoHandlerDelegate$1;->val$drmInfo:Landroid/media/MediaPlayer$DrmInfo;

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnDrmInfoListener;->onDrmInfo(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer$DrmInfo;)V

    return-void
.end method
