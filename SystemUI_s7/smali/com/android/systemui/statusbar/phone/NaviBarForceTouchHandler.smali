.class public Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
.super Ljava/lang/Object;
.source "NaviBarForceTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;,
        Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;
    }
.end annotation


# static fields
.field private static mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;


# instance fields
.field private mActionArray:[Landroid/net/Uri;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mContext:Landroid/content/Context;

.field private final mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mForceTouchList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceTouchTestPkgChecked:I

.field private mIsFlashOn:Z

.field private mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)[Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->updateForceTouchList(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "navigationbar_left_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_left"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_center"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_right"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "navigationbar_right_additional"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    return-void
.end method

.method private broadcastForceTouchEvent(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.systemui.FORCE_TOUCH_PRESSED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "KeyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private callToNumber(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "NaviBarForceTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callToNumber() number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10004000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "NaviBarForceTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private changeAutoRotateConfiguration()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private expendStatusBar()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    const-string/jumbo v2, "NaviBarForceTouchHandler"

    const-string/jumbo v3, "expendStatusBar() Open Quick panel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NaviBarForceTouchHandler"

    const-string/jumbo v3, "Fail to expand notification"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getEventId(II)I
    .locals 2

    const/4 v0, -0x1

    if-lez p1, :cond_1

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xdc

    if-le p1, v1, :cond_2

    const/16 v1, 0x1e0

    if-ge p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x244

    if-le p1, v1, :cond_3

    const/16 v1, 0x370

    if-ge p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/16 v1, 0x3c0

    if-le p1, v1, :cond_4

    const/16 v1, 0x4e2

    if-ge p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v1, 0x4f6

    if-le p1, v1, :cond_0

    const/16 v1, 0x5a0

    if-ge p1, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getForceAction(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "NaviBarForceTouchHandler"

    const-string/jumbo v1, "getForceAction() buttonId invalied : return None"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "None"

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->NavBarLeftCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->NavBarLeftForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->NavBarCenterForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->NavBarRightForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->NavBarRightCornerForceAction()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSingleton:Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;

    return-object v0
.end method

.method private handleFlash()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const-string/jumbo v3, "0"

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mIsFlashOn:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NaviBarForceTouchHandler"

    const-string/jumbo v2, "Fail to set Torch Mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private injectKeyEvent(I)V
    .locals 10

    const/4 v2, 0x0

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->sendEvent(IIIJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v6, 0x1

    move-object v4, p0

    move v5, p1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->sendEvent(IIIJ)V

    return-void
.end method

.method private isForceTouchTestPackageInstalled()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    if-gez v3, :cond_0

    const-string/jumbo v1, "com.reliability.forcetouch"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    move v3, v4

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchTestPkgChecked:I

    if-ne v3, v4, :cond_2

    :goto_2
    return v4

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private launchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "NaviBarForceTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchActivity packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", activityName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private processFactoryCodes(I)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_FACTORY_BINARY:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "factory.pressure_touch_status"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "NaviBarForceTouchHandler"

    const-string/jumbo v1, "Skip force touch, requested by Factory App"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->isForceTouchTestPackageInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->broadcastForceTouchEvent(I)V

    :cond_1
    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private updateForceTouchList(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public forceClickOnNaviBar(II)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getEventId(II)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->processFactoryCodes(I)V

    if-ltz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** Force action null *** buttonId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceClickOnNaviBar() buttonId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v4, v0, v8

    const-string/jumbo v5, "None"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v8

    :cond_2
    const-string/jumbo v5, "FullScreen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v8, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->changeNavigationBarHeight(IZ)V

    return v7

    :cond_3
    const-string/jumbo v5, "AutoRotate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->changeAutoRotateConfiguration()V

    return v7

    :cond_4
    const-string/jumbo v5, "Flash"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->handleFlash()V

    return v7

    :cond_5
    const-string/jumbo v5, "QuickPanel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->expendStatusBar()V

    return v7

    :cond_6
    const-string/jumbo v5, "Capture"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v4, 0x3ec

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->injectKeyEvent(I)V

    return v7

    :cond_7
    const-string/jumbo v5, "LaunchApp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    aget-object v4, v0, v7

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v8

    aget-object v5, v2, v7

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->launchActivity(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_8
    const-string/jumbo v5, "DirectCall"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "NaviBarForceTouchHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forceClickOnNaviBar DirectCall ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->callToNumber(Ljava/lang/String;)V

    return v7

    :cond_9
    return v8
.end method

.method public init(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mNavibarButtonCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mActionArray:[Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mForceTouchList:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->getForceAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NaviBarForceTouchHandler;->mFlashCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    return-void
.end method
