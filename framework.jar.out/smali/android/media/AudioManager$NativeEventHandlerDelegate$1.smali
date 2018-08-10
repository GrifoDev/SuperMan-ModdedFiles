.class Landroid/media/AudioManager$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

.field final synthetic val$callback:Landroid/media/AudioDeviceCallback;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioDeviceCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "AudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown native event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
