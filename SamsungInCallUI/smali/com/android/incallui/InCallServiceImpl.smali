.class public Lcom/android/incallui/InCallServiceImpl;
.super Landroid/telecom/InCallService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method

.method private tearDown()V
    .locals 1

    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->clearInCallService()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 11

    const/4 v10, 0x1

    const-string v0, "onBind"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "perf - onBind : start"

    invoke-static {p0, v0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {v4, v7, v5}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    new-instance v6, Lcom/android/incallui/ProximitySensor;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v9, v7}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v7, v8, v9}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/AccelerometerListener;)V

    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceBind()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->maybeStartRevealAnimation(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/TelecomAdapter;->setInCallService(Landroid/telecom/InCallService;)V

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Binding PhoneVoiceRecorder..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;-><init>(Landroid/telecom/InCallService;)V

    const-string v1, "StartService PhoneVoiceRecorder"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallPresenter;->setRecordMgr(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V

    :cond_0
    const-string v0, "perf - onBind : end"

    invoke-static {p0, v0, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onBringToForeground(Z)V

    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallAdded(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallAudioStateChanged start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/AudioModeProvider;->onAudioStateChanged(ZII)V

    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallRemoved(Landroid/telecom/Call;)V

    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCanAddCallChanged(Z)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "onUnbind"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->stopService()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceUnbind()V

    invoke-direct {p0}, Lcom/android/incallui/InCallServiceImpl;->tearDown()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    return v0
.end method
