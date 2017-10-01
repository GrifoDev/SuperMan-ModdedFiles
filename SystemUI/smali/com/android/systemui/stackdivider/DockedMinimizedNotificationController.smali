.class public Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
.super Ljava/lang/Object;
.source "DockedMinimizedNotificationController.java"


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private final mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

.field private final mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private final mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mRegisteredComponent:Landroid/content/ComponentName;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x8000000

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    new-instance v2, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;-><init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-virtual {v2, v1, v0, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerDockMinimizedNotification(Landroid/content/ComponentName;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v10, ""

    if-eqz p1, :cond_0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f02032b

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v16

    const v2, 0x7f0b000b

    invoke-virtual {v12, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    new-instance v11, Landroid/app/Notification$Builder;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f02032c

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string/jumbo v3, "docked_minimized_notification_group"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v12, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const v4, 0x7f0f0007

    invoke-virtual {v12, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0f0009

    invoke-virtual {v12, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mLaunchDockModePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v18

    const v2, 0x7f0f0006

    invoke-virtual {v12, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x102042e

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mDockedStackDismissPendingIntent:Landroid/app/PendingIntent;

    const v3, 0x1020044

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    const/4 v2, 0x1

    :try_start_1
    new-array v8, v2, [I

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v5, "DividerNotification"

    invoke-virtual {v12}, Landroid/content/Context;->getUserId()I

    move-result v9

    const v6, 0x7f0f0006

    invoke-interface/range {v2 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const v3, 0x7f0f0007

    invoke-virtual {v12, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v15

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "Error showing notification for minimized docked app"

    invoke-static {v2, v3, v15}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v14

    goto :goto_1
.end method

.method private unregisterDockMinimizedNotification()V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "DividerNotification"

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const v6, 0x7f0f0006

    invoke-interface {v2, v3, v4, v6, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegistered:Z

    if-eqz v2, :cond_0

    and-int/lit16 v2, v0, 0x2004

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->mRegisteredComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterDockMinimizedNotification()V

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerDockMinimizedNotification(Landroid/content/ComponentName;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDockedStackMinimized(ZZLandroid/content/ComponentName;)V
    .locals 3

    const-string/jumbo v0, "DividerNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDockedStackMinimized, minimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerDockMinimizedNotification(Landroid/content/ComponentName;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->unregisterDockMinimizedNotification()V

    goto :goto_0
.end method
