.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;
    }
.end annotation


# static fields
.field private static final MSG_DISPATCH_START_RECORD:I = 0x1e0f3

.field private static final TIME_DELAY_FOR_READY_TO_START_RECORD:I = 0x64

.field private static final TIME_OUT_FOR_READY_TO_START_RECORD:I = 0x7d0


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInCallService:Landroid/telecom/InCallService;

.field private mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

.field private mRecorderConnection:Landroid/content/ServiceConnection;

.field private mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

.field private mWatingTimeForReady:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PhoneVoiceRecorder"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mWatingTimeForReady:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mWatingTimeForReady:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isReadyStartRecord()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->startRecordInternal()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->dispatchMsgStartRecord(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    return-object p1
.end method

.method private dispatchMsgStartRecord(I)V
    .locals 4

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mWatingTimeForReady:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mWatingTimeForReady:I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mHandler:Landroid/os/Handler;

    const v1, 0x1e0f3

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private isReadyStartRecord()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private startRecordInternal()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mWatingTimeForReady:I

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "startRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0}, Lcom/android/phone/IPhoneVoiceRecorderService;->startRecord()V
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getRecordTime()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0}, Lcom/android/phone/IPhoneVoiceRecorderService;->getRecordTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRecordTime() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->isPaused()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v1}, Lcom/android/phone/IPhoneVoiceRecorderService;->isVoiceRecording()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pauseRecord()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pauseRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0}, Lcom/android/phone/IPhoneVoiceRecorderService;->pauseRecord()V
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resumeRecord()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "resumeRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0}, Lcom/android/phone/IPhoneVoiceRecorderService;->resumeRecord()V
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0, p1}, Lcom/android/phone/IPhoneVoiceRecorderService;->setCallerName(Ljava/lang/String;)V
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
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0, p1}, Lcom/android/phone/IPhoneVoiceRecorderService;->setCallerNumber(Ljava/lang/String;)V
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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->dispatchMsgStartRecord(I)V

    return-void
.end method

.method public startService(Landroid/telecom/InCallService;)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$RecorderServiceConnection;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v0}, Landroid/telecom/InCallService;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "InCallService-startService()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/incallui/wrapper/ContextWrapper;->bindServiceAsUser(Landroid/content/ContextWrapper;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "InCallService-bindService()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not start service - IllegalArgumentException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v0, "can not bind service"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "can not start service"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopRecord()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "stopRecord"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    invoke-interface {v0}, Lcom/android/phone/IPhoneVoiceRecorderService;->stopRecord()V
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopService()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.samsung.phone.PhoneVoiceRecorderService"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    if-eqz v0, :cond_3

    const-string v0, "stopService()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    invoke-interface {v0, v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService;->stopService(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mInCallService:Landroid/telecom/InCallService;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorder;->mRecorderConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService() -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
