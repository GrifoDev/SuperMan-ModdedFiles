.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;
.super Landroid/app/Activity;
.source "ShareAccessibilityExportImport.java"


# static fields
.field private static MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

.field private static RevSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isDialogShown:Z

.field private static isSdCardAvailable:Z

.field private static isSecondDialogShown:Z

.field private static settingValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExportFailNotificationManager:Landroid/app/NotificationManager;

.field private mExportNotificationManager:Landroid/app/NotificationManager;

.field private path:Ljava/lang/String;

.field pending_noti_external_intent:Landroid/app/PendingIntent;

.field pending_noti_internal_intent:Landroid/app/PendingIntent;

.field private window:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static synthetic -get0()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->importNotificationSet(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSdCardAvailable:Z

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z

    const-string/jumbo v0, "com.samsung.settings.action.MANAGE_ACCESSIBILITY_IMPORT"

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->window:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private ShareAccessibilityExport_Init()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ShareAccessibilityImport_Init()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f020485

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportFailNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0268

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void
.end method

.method private exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const v11, 0x7f020485

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v6, "com.sec.android.app.myfiles"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :cond_1
    const-string/jumbo v6, "ShareAccessibilityExportImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exportNotificationSet which :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_4

    const-string/jumbo v6, "START_FOLDER"

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "samsung.myfiles.intent.extra.START_PATH"

    sget-object v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b026e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0264

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "notification"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    if-nez p3, :cond_5

    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_internal_intent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0266

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "file://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_4
    if-ne p3, v9, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "/Accessibility"

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "START_FOLDER"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "samsung.myfiles.intent.extra.START_PATH"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x2

    invoke-static {p0, v6, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    :cond_5
    if-ne p3, v9, :cond_3

    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->pending_noti_external_intent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private importNotificationSet(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b026e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0265

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->MANAGE_ACCESSIBILITY_IMPORT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "importnotiticker"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "importnotititle"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "filename"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0267

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showContent(I)V
    .locals 10

    const-wide/16 v8, 0x0

    const v7, 0x7f0b0263

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableInternalMemorySize()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportMyFiles()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b026a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FOLDERPATH"

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "CONTENT_TYPE"

    const-string/jumbo v5, "application/x-sasf"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "JUST_SELECT_MODE"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getAvailableExternalMemorySize(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportSDCards()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b026b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "FOLDERPATH"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "CONTENT_TYPE"

    const-string/jumbo v5, "application/x-sasf"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "JUST_SELECT_MODE"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v4, 0x4

    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public exportMyFiles()V
    .locals 8

    const/16 v7, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v7, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Settings of accessibility_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".sasf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_INTERNAL_FOLDER_PATH:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    sput v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    const-string/jumbo v3, "ShareAccessibilityExportImport"

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v3, "ShareAccessibilityExportImport"

    const-string/jumbo v4, "finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void

    :cond_3
    const v3, 0x7f0b0263

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b026d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_internal_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public exportSDCards()V
    .locals 9

    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v8, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "/Accessibility"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->createFolder(Ljava/lang/String;)V

    sput v8, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    const-string/jumbo v4, "ShareAccessibilityExportImport"

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Settings of accessibility_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sasf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v8}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportNotificationSet(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    const-string/jumbo v4, "ShareAccessibilityExportImport"

    const-string/jumbo v5, "finish"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    return-void

    :cond_3
    const v4, 0x7f0b0263

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b026d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->exportFailureNotification(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->export_external_file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resultCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    const-string/jumbo v0, "FILE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult PICK_SINGLE_FILE path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ShareAccessibilityExportImport"

    const-string/jumbo v1, "data is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityExport_Init()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->ShareAccessibilityImport_Init()V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    const-string/jumbo v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->showContent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    const-string/jumbo v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateDialog id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0

    :pswitch_0
    const v2, 0x7f0b025b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    const v4, 0x7f0b153d

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$3;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V

    const v4, 0x7f0b026c

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "ShareAccessibilityExportImport"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sput-object v2, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->settingValue:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mExportNotificationManager:Landroid/app/NotificationManager;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->removeDialog(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
