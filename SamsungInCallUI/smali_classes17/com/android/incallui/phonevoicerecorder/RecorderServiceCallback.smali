.class Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;
.super Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;
.source "RecorderServiceCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private sendNotiMessage(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordNoti(I)V

    return-void
.end method

.method private showRecordStopSuccess()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->hasEnoughStorage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;->sendNotiMessage(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;->sendNotiMessage(I)V

    goto :goto_0
.end method


# virtual methods
.method public messageCallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "IPhoneVoiceRecorderServiceCallback : INFO_STATE_CHANGED"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;->showRecordStopSuccess()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
