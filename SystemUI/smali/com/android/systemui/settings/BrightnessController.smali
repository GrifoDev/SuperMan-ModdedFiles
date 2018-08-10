.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$1;,
        Lcom/android/systemui/settings/BrightnessController$2;,
        Lcom/android/systemui/settings/BrightnessController$3;,
        Lcom/android/systemui/settings/BrightnessController$4;,
        Lcom/android/systemui/settings/BrightnessController$5;,
        Lcom/android/systemui/settings/BrightnessController$6;,
        Lcom/android/systemui/settings/BrightnessController$7;,
        Lcom/android/systemui/settings/BrightnessController$8;,
        Lcom/android/systemui/settings/BrightnessController$9;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private final mDeafultBacklight:I

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHighBrightnessModeRunnable:Ljava/lang/Runnable;

.field private final mIcon:Landroid/widget/ImageView;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private final mOutdoorModeRunnable:Ljava/lang/Runnable;

.field private final mPower:Landroid/os/IPowerManager;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mStrainDialogRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStrainDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/settings/BrightnessController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHighBrightnessModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->setMarkerBrightness(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHighBrightnessModeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStrainDialogRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorModeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    new-instance v2, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Looper;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$10;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$10;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    const-string/jumbo v1, "vrmanager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {v1}, Lcom/android/systemui/settings/ToggleSlider;->setDualColorSlider()V

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mHighBrightnessModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mStrainDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setBrightness(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMarkerBrightness(I)V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMarkerBrightness() : brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryMarkerScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateVrMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .locals 10

    const/16 v9, 0x64

    const/4 v8, -0x2

    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eq v5, p3, :cond_4

    const-string/jumbo v5, "StatusBar.BrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onChanged() automaic = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v5, :cond_1

    if-eqz p3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v5, v6, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "brightness_pms_marker_screen"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v5}, Lcom/android/systemui/settings/BrightnessController;->setMode(I)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "brightness_pms_marker_screen"

    invoke-static {v5, v6, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    add-int v4, p4, v5

    if-eqz p5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v6, 0x1f2

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_6

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$11;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/settings/BrightnessController$11;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_3

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v4, p4, v5

    if-eqz p5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v6, 0xda

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_6

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$12;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/settings/BrightnessController$12;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    if-eqz p5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v6, 0xdb

    invoke-static {v5, v6, p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_a
    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v4, p4, v5

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-nez v5, :cond_c

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-le v4, v5, :cond_d

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v5, v6

    :cond_b
    :goto_4
    const-string/jumbo v5, "StatusBar.BrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onChanged() : val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", adj = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    :cond_c
    if-nez p2, :cond_e

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$13;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/settings/BrightnessController$13;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_d
    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-ge v4, v5, :cond_b

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v5, v6

    goto :goto_4

    :cond_e
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setMarkerBrightness(I)V

    goto/16 :goto_2

    :cond_f
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar.BrightnessController"

    const-string/jumbo v2, "Failed to register VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StatusBar.BrightnessController"

    const-string/jumbo v2, "Failed to unregister VR mode state listener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
