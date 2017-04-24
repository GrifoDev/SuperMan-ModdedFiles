.class public Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.super Ljava/lang/Object;
.source "ScreenPinningRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;
    }
.end annotation


# static fields
.field private static mDialog:Landroid/app/AlertDialog;


# instance fields
.field public DEVICE_TYPE_WIFI_ONLY:Z

.field private filter:Landroid/content/IntentFilter;

.field private mAactivityLabel:Ljava/lang/String;

.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private taskId:I


# direct methods
.method static synthetic -get0()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 9

    const/high16 v6, 0x800000

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v7, v5, v7, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v2, :cond_0

    iget-object v5, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    return v7

    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_1
    return v8

    :cond_2
    return v7
.end method

.method public clearPrompt()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->unregisterReceivers()V

    sget-object v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    sput-object v2, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->checkUnableToPin()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0f0273

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v2, "checkUnableToPin is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->taskId:I

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->startSystemLockTaskMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v1, "registerReceivers - mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showPrompt(ILjava/lang/String;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->registerReceivers()V

    iput-object p2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAactivityLabel:Ljava/lang/String;

    iput p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->taskId:I

    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const v11, 0x7f0f0271

    invoke-virtual {v9, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->DEVICE_TYPE_WIFI_ONLY:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const-string/jumbo v9, "Recents_ScreenPinningRequestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "accessibilityEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v6, :cond_4

    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0270

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    const/4 v7, 0x5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_6

    const v9, 0x7f0f0272

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v9, 0x104000a

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_4
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    sput-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d8

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-object v9, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v9, "Recents_ScreenPinningRequestDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "showPrompt isExcluded : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f0269

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    const-string/jumbo v9, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v10, "mAccessibilityService is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_4
    if-eqz v1, :cond_5

    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v10, 0x7f0f026d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0f0274

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0f0275

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4
.end method

.method public unregisterReceivers()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->filter:Landroid/content/IntentFilter;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v2, "unregisterReceivers - mContext is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
