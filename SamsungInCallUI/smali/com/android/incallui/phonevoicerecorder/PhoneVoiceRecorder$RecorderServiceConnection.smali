.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;

    invoke-direct {v1}, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;-><init>()V

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$502(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {p2}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$602(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$500(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$500(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$502(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$602(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
