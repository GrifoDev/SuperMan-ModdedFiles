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


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mAppName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field public final mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsExcluded:Z

.field private mTaskId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private static resolveDialogTheme(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1110053

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    const v1, 0x1030132

    :goto_0
    return v1

    :cond_0
    const v1, 0x103012e

    goto :goto_0
.end method


# virtual methods
.method public checkUnableToPin()Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->checkHomeActivityPackageName(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method public clearPrompt()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v1, "clearPrompt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->unregisterReceivers()V

    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_ScreenPinningRequestDialog_3683(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

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

    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f120752

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

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

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public showPrompt(ILjava/lang/String;Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mTaskId:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->registerReceivers()V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v15

    invoke-direct {v4, v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x7f120748

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f120747

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v14, Lcom/android/systemui/recents/-$Lambda$Y-rXniRvFPPITJ3oVTzSjQnFa78;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/recents/-$Lambda$Y-rXniRvFPPITJ3oVTzSjQnFa78;-><init>(Ljava/lang/Object;)V

    const v15, 0x7f120826

    invoke-virtual {v4, v15, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d8

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v15, v15, 0x10

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v14, "Recents_ScreenPinningRequestDialog"

    const-string/jumbo v15, "showPrompt"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIsExcluded:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAppName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v16, 0x7f120751

    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f120750

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v14, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v4, v14, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->resolveDialogTheme(Landroid/content/Context;)I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_5

    const v14, 0x7f0d018a

    :goto_1
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    :goto_2
    const v14, 0x7f0a03cf

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    const v14, 0x7f12074e

    :goto_3
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "navigationbar_key_order"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_b

    const v9, 0x7f0804aa

    :goto_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_c

    const v3, 0x7f0804a8

    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_d

    const v14, 0x7f0601be

    :goto_8
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v13

    const v14, 0x7f0a02fe

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x7f0a0430

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    if-nez v7, :cond_e

    move v14, v9

    :goto_9
    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v7, :cond_f

    :goto_a
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v13}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v14

    iget-boolean v14, v14, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v14, :cond_4

    if-eqz v12, :cond_4

    if-nez v7, :cond_10

    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_4
    :goto_b
    if-nez v7, :cond_11

    const v14, 0x7f0a042e

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    :goto_c
    if-eqz v2, :cond_12

    const/4 v14, 0x4

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    const-string/jumbo v14, "Recents_ScreenPinningRequestDialog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "showPrompt: accessibilityEnabled = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " rtlLayoutEnabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " navigationKeyOrder="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    const v15, 0x7f12074f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f12074a

    move-object/from16 v0, p0

    invoke-virtual {v4, v14, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f120749

    move-object/from16 v0, p0

    invoke-virtual {v4, v14, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :cond_5
    const v14, 0x7f0d0189

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    const v14, 0x7f12074d

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_9

    const v14, 0x7f12074c

    :goto_e
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_9
    const v14, 0x7f12074b

    goto :goto_e

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_b
    const v9, 0x7f0804ab

    goto/16 :goto_6

    :cond_c
    const v3, 0x7f0804a9

    goto/16 :goto_7

    :cond_d
    const v14, 0x7f0601bf

    goto/16 :goto_8

    :cond_e
    move v14, v3

    goto/16 :goto_9

    :cond_f
    move v9, v3

    goto/16 :goto_a

    :cond_10
    const/high16 v14, -0x40800000    # -1.0f

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    goto/16 :goto_b

    :cond_11
    const v14, 0x7f0a02fd

    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    goto/16 :goto_c

    :cond_12
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d
.end method

.method public unregisterReceivers()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->mIntentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
