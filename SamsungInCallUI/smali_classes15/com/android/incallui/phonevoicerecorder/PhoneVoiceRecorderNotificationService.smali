.class public Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
.super Lcom/android/incallui/service/HeadUpNotificationService;
.source "PhoneVoiceRecorderNotificationService.java"


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

.field public static final LARGE_ICON_DRAWABLE_ID:I = 0x7f0202a3

.field public static final MYFILES_CLASS_PATH:Ljava/lang/String; = "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

.field public static final MYFILES_INTENT_EXTRA:Ljava/lang/String; = "samsung.myfiles.intent.extra.START_PATH"

.field public static final NOTIFICATION_DISSMISS_TIME_OUT:I = 0xbb8

.field public static final NOTIFICATION_ID_EXTRA:Ljava/lang/String; = "notificationId"

.field public static final PHONE_VOICE_RECORDER_NOTIFICATION_ID:I = 0x461

.field public static final SMALL_ICON_DRAWABLE_ID:I = 0x7f0202a3

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

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/incallui/service/HeadUpNotificationService;-><init>()V

    .line 94
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$1;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->animateForShow()V

    return-void
.end method

.method private canShowHeadupNotification()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 221
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    if-lez v2, :cond_0

    .line 225
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private createStatusBarNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 201
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 203
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0202a3

    .line 204
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/16 v3, 0x8

    .line 205
    invoke-static {v3}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 208
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 209
    invoke-virtual {v2, v5, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    .line 210
    invoke-virtual {v2, v5, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 211
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 213
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 214
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "headsup"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    return-object v1
.end method

.method private getClosePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.incallui.ACTION_CANCEL_RECORD_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v1, "notificationId"

    const/16 v2, 0x461

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    return-object v0
.end method

.method private getRecordListPendingIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "folderPath":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private getStoragePendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isRecordNotiShowSettingOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
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

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isRecordNotiShowSettingOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showHeadUpNotification(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 229
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->canShowHeadupNotification()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return-void

    .line 231
    :cond_0
    new-instance v3, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    .line 232
    invoke-virtual {v3, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    .line 233
    invoke-virtual {v3, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v3

    .line 234
    invoke-virtual {v3, v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->showAppIcon(Z)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v3

    const v4, 0x7f0202a3

    .line 235
    invoke-virtual {v3, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->setLargeIcon(I)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 236
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    .line 237
    invoke-virtual {v3, v6, v4, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;

    move-result-object v0

    .line 239
    .local v0, "builder":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;
    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification$Builder;->build()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;

    move-result-object v1

    .line 241
    .local v1, "notification":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setContext(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v1, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setRootView(Landroid/view/ViewGroup;)V

    .line 243
    invoke-virtual {v1, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->setService(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    .line 244
    invoke-virtual {v1, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotification;->constructView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->showUpAnimate(Landroid/view/View;)V

    .line 246
    const/16 v3, 0xbb8

    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->dismissTimedOutView(I)V

    .line 247
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    goto :goto_0
.end method

.method private showUpAnimate(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 284
    move-object v0, p1

    .line 285
    .local v0, "animateView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 286
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$2;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 297
    return-void
.end method


# virtual methods
.method public animateForHide()V
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    .line 369
    const-string v0, "RecorderStorageManager"

    const-string v1, "animateForHidetoremoveHeadUpNotification"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->animateForHide()V

    .line 371
    return-void
.end method

.method public cancelQuickPanelNotification()V
    .locals 3

    .prologue
    .line 374
    const-string v1, "RecorderStorageManager"

    const-string v2, "cancelQuickPanelNotification"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 376
    .local v0, "notificationMgr":Landroid/app/NotificationManager;
    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 377
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 305
    const/16 v2, 0x7de

    .line 307
    .local v2, "windowType":I
    const v0, 0x1800328

    .line 315
    .local v0, "layoutFlag":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    invoke-direct {v1, v2, v0, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 317
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 318
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 319
    const/16 v3, 0x30

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 320
    const v3, 0x7f0b0011

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 321
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    return-object v1
.end method

.method public dismissTimedOutView(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    .line 349
    :cond_0
    new-instance v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$3;-><init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;)V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    .line 356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimer:Ljava/util/Timer;

    .line 357
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mTimerTask:Ljava/util/TimerTask;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 358
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected initValue(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f090233

    const v5, 0x7f090232

    const v4, 0x7f090230

    const v3, 0x7f09022e

    .line 251
    const-string v0, "RecorderStorageManager"

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

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    .line 255
    const v0, 0x7f090231

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    .line 256
    const v0, 0x7f09022f

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    .line 258
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getRecordListPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 259
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    .line 260
    const v0, 0x7f090247

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 263
    :pswitch_2
    const v0, 0x7f090235

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    .line 264
    invoke-virtual {p0, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    .line 265
    invoke-virtual {p0, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    .line 266
    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    .line 267
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getStoragePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 268
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    .line 269
    invoke-virtual {p0, v5}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 272
    :pswitch_3
    const v0, 0x7f090236

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentTitle:Ljava/lang/CharSequence;

    .line 273
    invoke-virtual {p0, v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mContentText:Ljava/lang/CharSequence;

    .line 274
    invoke-virtual {p0, v4}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionText:Ljava/lang/CharSequence;

    .line 275
    invoke-virtual {p0, v3}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseText:Ljava/lang/CharSequence;

    .line 276
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getStoragePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonActionIntent:Landroid/app/PendingIntent;

    .line 277
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getClosePendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mButtonCloseIntent:Landroid/app/PendingIntent;

    .line 278
    invoke-virtual {p0, v6}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 252
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

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mIsShowing:Z

    return v0
.end method

.method protected onCancelAnimation()V
    .locals 0

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    .line 386
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 301
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 152
    sput-object p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->sInstance:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 155
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCreate()V

    .line 158
    return-void
.end method

.method protected onCreateCustomView(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 162
    iget v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    if-gtz v2, :cond_0

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->isShowHUN()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0, p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->createStatusBarNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    .line 167
    .local v1, "statusBarNotification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 168
    .local v0, "notificationMgr":Landroid/app/NotificationManager;
    const/16 v2, 0x461

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 170
    invoke-direct {p0, p1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->showHeadUpNotification(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 172
    .end local v0    # "notificationMgr":Landroid/app/NotificationManager;
    .end local v1    # "statusBarNotification":Landroid/app/Notification;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mToastMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mBroadcastReceiver:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService$NotificationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 363
    invoke-super {p0}, Lcom/android/incallui/service/HeadUpNotificationService;->onDestroy()V

    .line 364
    return-void
.end method

.method protected onEndAnimation()V
    .locals 0

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    .line 391
    return-void
.end method

.method public onFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->updateViewLayout()V

    .line 337
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    const-string v0, "notification_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    .line 144
    const-string v0, "RecorderStorageManager"

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

    .line 145
    iget v0, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->mNotificationType:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->initValue(I)V

    .line 147
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/service/HeadUpNotificationService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method protected preShowingNotification()V
    .locals 0

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderNotificationService;->removeHeadUpNotification()V

    .line 396
    return-void
.end method

.method protected setHeadUpNotificationWindowFocusable()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method
