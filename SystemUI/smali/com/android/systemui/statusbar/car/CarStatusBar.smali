.class public Lcom/android/systemui/statusbar/car/CarStatusBar;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "CarStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarStatusBar$1;,
        Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

.field private mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

.field private mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

.field private mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarNavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/CarStatusBar$1;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    return-object v0
.end method

.method private registerPackageChangeReceivers()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 14

    const/16 v13, -0x60

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x14000000

    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v10, p2

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    :goto_0
    return v13

    :catch_0
    move-exception v12

    const-string/jumbo v0, "CarStatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected createNavigationBar()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00f2

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0d002d

    invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAlwaysOpaque(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x1840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string/jumbo v1, "CarNavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected createUserSwitcher()V
    .locals 4

    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a01cc

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/view/ViewStub;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    goto :goto_0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    return-object v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDockedTask()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    return v0
.end method

.method public hideBatteryView()V
    .locals 3

    const-string/jumbo v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_CarStatusBar_3482(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 5

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070677

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->stopListening()V

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->startListening()V

    const-string/jumbo v2, "CarStatusBar"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "CarStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStatusBarView(). mBatteryMeterView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected makeStatusBarView()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "CollapsedStatusBarFragment"

    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    return-void
.end method

.method protected onDensityOrFontScaleChanged()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDensityOrFontScaleChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onDensityOrFontScaleChanged()V

    return-void
.end method

.method public showBatteryView()V
    .locals 3

    const-string/jumbo v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->registerPackageChangeReceivers()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->startListening()V

    return-void
.end method

.method public startActivityOnStack(Landroid/content/Intent;I)I
    .locals 2

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public updateKeyguardState(ZZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->hide()V

    goto :goto_0
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0

    return-void
.end method

.method public userSwitched(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userSwitched(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSwitched(I)V

    :cond_0
    return-void
.end method
