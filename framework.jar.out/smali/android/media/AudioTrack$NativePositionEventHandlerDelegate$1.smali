.class Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

.field final synthetic val$track:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->this$1:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    iput-object p4, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown native event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->-wrap1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    iget-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onMarkerReached(Landroid/media/AudioTrack;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$listener:Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    iget-object v1, p0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate$1;->val$track:Landroid/media/AudioTrack;

    invoke-interface {v0, v1}, Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;->onPeriodicNotification(Landroid/media/AudioTrack;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
