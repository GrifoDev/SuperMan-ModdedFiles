.class Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    iget-object v5, v4, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v4}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dispatching onAudioFocusChange("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    iget-object v4, v1, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v5, v1, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    iget-object v4, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object v5, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
