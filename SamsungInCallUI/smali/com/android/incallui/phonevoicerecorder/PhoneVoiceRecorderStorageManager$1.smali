.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "RecorderStorageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v1, v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v1, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->hasEnoughStorage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-string v0, "RecorderStorageManager"

    const-string v1, "Not enough Memory, we will stop the phone voice record."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
