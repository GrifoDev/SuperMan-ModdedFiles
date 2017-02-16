.class Landroid/media/MediaMuxer$EventHandler;
.super Landroid/os/Handler;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMuxer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field private static final MEDIA_MUXER_EVENT_INFO:I = 0x1


# instance fields
.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field final synthetic this$0:Landroid/media/MediaMuxer;


# direct methods
.method public constructor <init>(Landroid/media/MediaMuxer;Landroid/media/MediaMuxer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaMuxer;
    .param p2, "muxer"    # Landroid/media/MediaMuxer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 568
    iput-object p1, p0, Landroid/media/MediaMuxer$EventHandler;->this$0:Landroid/media/MediaMuxer;

    .line 569
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 570
    iput-object p2, p0, Landroid/media/MediaMuxer$EventHandler;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 568
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 585
    const-string/jumbo v0, "MediaMuxer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 579
    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaMuxer$EventHandler;->this$0:Landroid/media/MediaMuxer;

    invoke-static {v0}, Landroid/media/MediaMuxer;->-get0(Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Landroid/media/MediaMuxer$EventHandler;->this$0:Landroid/media/MediaMuxer;

    invoke-static {v0}, Landroid/media/MediaMuxer;->-get0(Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaMuxer$EventHandler;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaMuxer$OnInfoListener;->onInfo(Landroid/media/MediaMuxer;II)V

    .line 582
    :cond_0
    return-void

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
