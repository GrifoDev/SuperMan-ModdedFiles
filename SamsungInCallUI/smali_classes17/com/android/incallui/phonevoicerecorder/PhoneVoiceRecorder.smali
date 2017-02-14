.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;
    }
.end annotation


# instance fields
.field private mInCallService:Landroid/telecom/InCallService;

.field private mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object p1
.end method


# virtual methods
.method public getRecordTime()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordTime() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->isPaused()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->isVoiceRecording()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pauseRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->pauseRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "resumeRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->resumeRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1, p1}, Lcom/android/phone/IPhoneVoiceRecorderService;->setCallerName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallerNumber(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1, p1}, Lcom/android/phone/IPhoneVoiceRecorderService;->setCallerNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "startRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->startRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startService(Landroid/telecom/InCallService;)V
    .locals 9

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;)V

    iput-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v6, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v6}, Landroid/telecom/InCallService;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string v6, "InCallService-startService()"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v7, 0x1

    sget-object v8, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, v3, v6, v7, v8}, Lcom/android/incallui/wrapper/ContextWrapper;->bindServiceAsUser(Landroid/content/ContextWrapper;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "InCallService-bindService()"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not start service - IllegalArgumentException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v6, "can not bind service"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v6, "can not start service"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "stopRecord"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->stopRecord()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService()V
    .locals 9

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v6, :cond_3

    const-string v6, "stopService()"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iget-object v7, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    invoke-interface {v6, v7}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    iget-object v7, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Landroid/telecom/InCallService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v6, v3}, Landroid/telecom/InCallService;->stopService(Landroid/content/Intent;)Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stopService() -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
