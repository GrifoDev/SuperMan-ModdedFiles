.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"

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

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;
    .param p2, "x1"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v2, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;

    invoke-direct {v2}, Lcom/android/incallui/phonevoicerecorder/RecorderServiceCallback;-><init>()V

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    .line 204
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {p2}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v2

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$100(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    .line 208
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    # getter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$100(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    .line 219
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    .line 220
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
