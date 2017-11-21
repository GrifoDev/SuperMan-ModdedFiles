.class public Lcom/samsung/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;
    }
.end annotation


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mLastOrientation:I

.field private mLastToast:Landroid/widget/Toast;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWindowmanager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiPickerDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    new-instance v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkAndShowWindowPinnedMsg()Z
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    const-string/jumbo v4, "WifiPickerDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAndShowWindowPinnedMsg() -:- isWindowPinned ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    :cond_0
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_1
    return v8

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method private initialize()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1107e3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v3, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v3}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const v3, 0x7f1107f4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/samsung/android/settings/wifi/WifiPickerDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiPickerDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020522

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/16 v3, 0xbb

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "WifiPickerDialog"

    const-string/jumbo v3, "Windowmanager is not yet initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "WifiPickerDialog"

    const-string/jumbo v3, "problem caught in requesting for system key event."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v3, "accessibility"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    :try_start_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f040362

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->setContentView(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v3, 0x7f0b1237

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->setTitle(I)V

    const v3, 0x1020016

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutDirection(I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    const v3, 0x7f040361

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WifiPickerDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->checkAndShowWindowPinnedMsg()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiPickerDialog"

    const-string/jumbo v1, "key consumed when window is pinned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/settings/wifi/WifiPickerDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
