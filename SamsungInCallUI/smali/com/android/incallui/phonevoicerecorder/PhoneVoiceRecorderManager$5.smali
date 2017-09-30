.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->createSessionModificationListener()Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 0

    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onDowngradeToAudioRequest(Lcom/android/incallui/Call;I)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 0

    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopRecord()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$5;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->access$500(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    return-void
.end method
