.class Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NeonCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/NeonCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NeonBroadcastReceiver"
.end annotation


# static fields
.field private static final SUPPROTED_INTENT_ACTIONS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/cover/neoncover/NeonCoverController;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousPhoneState:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->SUPPROTED_INTENT_ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.clockpackage.timer.TIMER_STOPPED_IN_ALERT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.calendar.SEND_ALERTINFO_ACTION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.calendar.FINISH_POPUP_ACTION"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->SUPPROTED_INTENT_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/cover/neoncover/NeonCoverController;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NeonCoverController cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private processPhoneState(Lcom/sec/android/cover/neoncover/NeonCoverController;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v4, "state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPhonestate stateString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap0(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/CoverUtils;->isTphoneRelaxMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "TPhone Relaxed mode enabled, ignode PhoneState changes"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mPreviousPhoneState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "processPhoneState: state already applied"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object v3, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mPreviousPhoneState:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x2

    :cond_3
    :goto_0
    sget-object v4, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processPhonestate state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-static {p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onReceive: intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->mControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/neoncover/NeonCoverController;

    if-nez v1, :cond_1

    sget-object v2, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onReceive: controller is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "com.sec.android.app.clockpackage.timer.TIMER_STOPPED_IN_ALERT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v1, p2}, Lcom/sec/android/cover/neoncover/NeonCoverController$NeonBroadcastReceiver;->processPhoneState(Lcom/sec/android/cover/neoncover/NeonCoverController;Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "com.android.calendar.SEND_ALERTINFO_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "com.samsung.android.calendar.FINISH_POPUP_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/sec/android/cover/neoncover/NeonCoverController;->-wrap1(Lcom/sec/android/cover/neoncover/NeonCoverController;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
