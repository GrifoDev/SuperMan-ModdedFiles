.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorderStorageManager.java"


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
    .locals 6

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x11

    const-string v0, "RecorderStorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->hasEnoughStorage(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    invoke-virtual {v0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    iget-object v0, v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->mRecorderMgr:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->hasEnoughStorage(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
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

    invoke-virtual {v0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderStorageManager;->clearStorageChkMsg()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
