.class public Lcom/android/incallui/SelectPhoneSimAccountActivity;
.super Landroid/app/Activity;


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V

    return-void
.end method

.method private attemptFinish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->semIsResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    :cond_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->setStatusBar(Z)V

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v0, "appops"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    const-string v4, "android:system_alert_window"

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v3, v2}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    if-ne v0, v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->show(Landroid/app/FragmentManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    invoke-direct {p0, v0, v6}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    invoke-direct {p0, v7, v6}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v6}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v6}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->setStatusBar(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const v0, 0x7f090267

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->cancelAccountSelection()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public setStatusBar(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBar = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->getSystemService(Landroid/content/Context;)Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    sget v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->disable(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mStatusBarManager:Lcom/android/incallui/wrapper/StatusBarManagerWrapper;

    sget v1, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->DISABLE_EXPAND:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/wrapper/StatusBarManagerWrapper;->disable(I)V

    goto :goto_0
.end method
