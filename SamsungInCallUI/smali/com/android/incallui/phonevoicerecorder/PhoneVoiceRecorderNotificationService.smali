.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
.super Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_RECORD_NOTIFICATION:Ljava/lang/String; = "com.samsung.android.incallui.ACTION_CANCEL_RECORD_NOTIFICATION"

.field public static final CANCEL_QUICK_PANEL_NOTIFICATION:I = 0x12d

.field public static final DISSMISS_OUT_HEADUP_NOTIFICATION:I = 0x12c

.field public static final EXTRA_AS_HEADS_UP:Ljava/lang/String; = "headsup"

.field public static final HEADS_UP_NEVER:I = 0x0

.field public static final LARGE_ICON_DRAWABLE_ID:I = 0x7f02032b

.field public static final MYFILES_CLASS_PATH:Ljava/lang/String; = "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

.field public static final MYFILES_INTENT_EXTRA:Ljava/lang/String; = "samsung.myfiles.intent.extra.START_PATH"

.field public static final NOTIFICATION_DISSMISS_TIME_OUT:I = 0xbb8

.field public static final NOTIFICATION_ID_EXTRA:Ljava/lang/String; = "notificationId"

.field public static final PHONE_VOICE_RECORDER_NOTIFICATION_ID:I = 0x461

.field public static final SMALL_ICON_DRAWABLE_ID:I = 0x7f02032b

.field private static final TAG:Ljava/lang/String; = "RecorderNotificationService"

.field private static mIsShowing:Z

.field private static sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;


# instance fields
.field public mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

.field private mButtonActionIntent:Landroid/app/PendingIntent;

.field private mButtonActionText:Ljava/lang/CharSequence;

.field private mButtonCloseIntent:Landroid/app/PendingIntent;

.field private mButtonCloseText:Ljava/lang/CharSequence;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field public mHandler:Landroid/os/Handler;

.field private mNotification:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

.field private mNotificationType:I

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mToastMessage:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;-><init>()V

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    return-void
.end method

.method private canShowHeadupNotification()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFindService()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isOtaStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSetupWizardComplete()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getRejectModeLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isFMMLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isLostPhoneLock()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createStatusBarNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/support/v4/app/ac$d;

    invoke-direct {v0, p1}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->b(Z)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/String;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/ac$d;->c(I)Landroid/support/v4/app/ac$d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/ac$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/ac$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ac$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ac$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ac$d;->b()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "headsup"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private getClosePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.incallui.ACTION_CANCEL_RECORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notificationId"

    const/16 v2, 0x461

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
    .locals 1

    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    return-object v0
.end method

.method private getRecordListPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getStoragePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private isRecordNotiShowSettingOn()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "record_calls_notification_on_off"

    invoke-static {v1, v0}, Lcom/android/incallui/InCallUISystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowHUN()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isRecordNotiShowSettingOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showHeadUpNotification(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->canShowHeadupNotification()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->showAppIcon(Z)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    const v1, 0x7f02032b

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setLargeIcon(I)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->build()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setRootView(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setService(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->constructView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->showUpAnimate(Landroid/view/View;)V

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->dismissTimedOutView(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    goto :goto_0
.end method

.method private showUpAnimate(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    const-string v0, "RecorderNotificationService"

    const-string v1, "animateForHidetoremoveHeadUpNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->animateForHide()V

    return-void
.end method

.method public cancelQuickPanelNotification()V
    .locals 2

    const-string v0, "RecorderNotificationService"

    const-string v1, "cancelQuickPanelNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const/16 v0, 0x7de

    const v1, 0x1800328

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v2, v0, v1, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const/4 v0, -0x1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f0b0011

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public dismissTimedOutView(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    :cond_0
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected initValue(I)V
    .locals 7

    const v6, 0x7f09029e

    const v5, 0x7f09029d

    const v4, 0x7f09029b

    const v3, 0x7f090299

    const-string v0, "RecorderNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f09029f

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    const v0, 0x7f09029c

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    const v0, 0x7f09029a

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getRecordListPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    const v0, 0x7f0902b5

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0902a0

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getStoragePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0902a1

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getStoragePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    return v0
.end method

.method protected onCancelAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 3

    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onCreate()V

    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 3

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isShowHUN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->createStatusBarNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x461

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->showHeadUpNotification(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->showRecordToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onDestroy()V

    return-void
.end method

.method protected onEndAnimation()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    return-void
.end method

.method public onFocus(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->updateViewLayout()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "notification_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    const-string v0, "RecorderNotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->initValue(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected preShowingNotification()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    return-void
.end method

.method protected setHeadUpNotificationWindowFocusable()V
    .locals 0

    return-void
.end method
