.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

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

.field private final mIcon:Landroid/widget/ImageView;

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private mOutdoorMode:Z

.field private final mPower:Landroid/os/IPowerManager;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/settings/BrightnessController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->setMarkerBrightness(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateHBMMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/settings/BrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$1;

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

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

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, p3}, Lcom/android/systemui/settings/ToggleSlider;->initSlider(Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    const-string/jumbo v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mPower:Landroid/os/IPowerManager;

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateHBMMode()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->setDoNotShowStrainPopup()V

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

    const-string/jumbo v3, "setMarkerBrightness = "

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

.method private updateHBMMode()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "high_brightness_mode_pms_enter"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setHbmMode(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIcon(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private updateMode()V
    .locals 5

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    :goto_0
    const-string/jumbo v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMode  autobrightness is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/BrightnessController;->updateIcon(Z)V

    goto :goto_0
.end method

.method private updateOutdoorMode(Z)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setOutdoorMode(Z)V

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/settings/ToggleSlider;->setTouchEnabled(Z)V

    :cond_0
    if-eqz p1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private updateSlider()V
    .locals 5

    const/4 v4, -0x2

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "brightness_pms_marker_screen"

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    iget v2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    const-string/jumbo v1, "StatusBar.BrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSlider = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public SendLogForBrightness(ZI)V
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Auto"

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QP05"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string/jumbo v0, "Manual"

    goto :goto_0
.end method

.method public isSliderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return v0
.end method

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

    const-string/jumbo v7, "onChanged  setMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

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
    iget-boolean v5, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v4, p4, v5

    if-eqz p5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v6, 0xda

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_6

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    invoke-interface {v1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    if-eqz p5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    const/16 v6, 0xdb

    invoke-static {v5, v6, p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_8
    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    add-int v4, p4, v5

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_PERSONAL_AUTO_BRIGHTNESS_CONTROL:Z

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-le v4, v5, :cond_b

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v5, v6

    :cond_9
    :goto_4
    const-string/jumbo v5, "StatusBar.BrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "auto brightness onChanged  val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " adj = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->setBrightnessAdj(F)V

    :cond_a
    if-nez p2, :cond_c

    new-instance v5, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;I)V

    invoke-static {v5}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_b
    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    if-ge v4, v5, :cond_9

    iget v5, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/settings/BrightnessController;->mDeafultBacklight:I

    iget v7, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float v0, v5, v6

    goto :goto_4

    :cond_c
    invoke-direct {p0, v4}, Lcom/android/systemui/settings/BrightnessController;->setMarkerBrightness(I)V

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 0

    return-void
.end method

.method public registerCallbacks()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->startObserving()V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateMode()V

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessController;->updateSlider()V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v2, p0}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_outdoor_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorMode:Z

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->updateOutdoorMode(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setDoNotShowStrainPopup()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "shown_max_brightness_dialog"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setDoNotShowStrainPopup(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSliderEnabled(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mOutdoorMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, v2}, Lcom/android/systemui/settings/ToggleSlider;->setTouchEnabled(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setTouchEnabled(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 2

    const-string/jumbo v0, "StatusBar.BrightnessController"

    const-string/jumbo v1, "unregisterCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;->stopObserving()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void
.end method
