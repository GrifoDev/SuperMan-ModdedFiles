.class public Lcom/android/systemui/pip/phone/PipNotificationController;
.super Ljava/lang/Object;
.source "PipNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipNotificationController$1;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDeferredNotificationPackageName:Ljava/lang/String;

.field private mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipNotificationController;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipNotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipNotificationController;->unregisterAppOpsListener()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/PipNotificationController;->TAG:Ljava/lang/String;

    const-class v0, Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/pip/phone/PipNotificationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipNotificationController$1;-><init>(Lcom/android/systemui/pip/phone/PipNotificationController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-void
.end method

.method private registerAppOpsListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    const/16 v2, 0x43

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method private showNotificationForApp(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0804b3

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x10601bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/pip/phone/PipNotificationController;->updateNotificationForApp(Landroid/app/Notification$Builder;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method private unregisterAppOpsListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method private updateNotificationForApp(Landroid/app/Notification$Builder;Ljava/lang/String;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, p2, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    const v9, 0x7f12084a

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.PICTURE_IN_PICTURE_SETTINGS"

    const-string/jumbo v8, "package"

    invoke-static {v8, p2, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v7, 0x10008000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v7, :cond_0

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p2, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v2, v8, v10

    const v9, 0x7f12084b

    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/high16 v10, 0x10000000

    invoke-static {v8, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    return v11

    :catch_0
    move-exception v3

    sget-object v7, Lcom/android/systemui/pip/phone/PipNotificationController;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Could not update notification for application"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080093

    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_1
    return v10
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipNotificationController;->registerAppOpsListener(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->showNotificationForApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityUnpinned(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipNotificationController;->unregisterAppOpsListener()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/pip/phone/PipNotificationController;->onActivityPinned(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/pip/phone/PipNotificationController;->NOTIFICATION_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipNotificationController;->showNotificationForApp(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipNotificationController;->mDeferredNotificationPackageName:Ljava/lang/String;

    :cond_0
    return-void
.end method
