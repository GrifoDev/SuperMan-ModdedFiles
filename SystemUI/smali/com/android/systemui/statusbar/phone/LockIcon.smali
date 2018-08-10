.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$1;,
        Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;,
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mCurrentState:I

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mHasFingerPrintIcon:Z

.field private mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$4ML7UA3HI1AZz7rF4mD53wD9vY4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    const v0, 0x7f08042a

    return v0

    :cond_0
    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_1

    const v0, 0x7f08077c

    return v0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v3, :cond_2

    const v0, 0x7f080168

    return v0

    :cond_2
    if-ne p1, v1, :cond_4

    if-ne p2, v2, :cond_4

    const-string/jumbo v1, "SEP"

    sget-object v2, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const v0, 0x7f080428

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    if-ne p2, v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    const v0, 0x7f080424

    return v0

    :cond_5
    if-ne p2, v2, :cond_9

    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    if-nez p4, :cond_7

    :cond_6
    if-eqz p6, :cond_9

    xor-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_9

    if-eqz p4, :cond_9

    :cond_7
    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    const-string/jumbo v2, "SEP"

    if-ne v1, v2, :cond_8

    :goto_1
    return v0

    :cond_8
    const v0, 0x7f080426

    goto :goto_1

    :cond_9
    return v0
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    const v0, 0x7f080188

    goto :goto_0

    :pswitch_2
    const/4 v0, -0x1

    goto :goto_0

    :pswitch_3
    const v0, 0x1080383

    goto :goto_0

    :pswitch_4
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v0, 0x7f0801c6

    goto :goto_0

    :cond_1
    const v0, 0x7f080426

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0801c7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private getState()I
    .locals 6

    sget-object v5, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v5, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingFaceRecognitionRetry()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    return v5

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    return v5

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIrisRetryButton()Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    return v5

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledIrisOnFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    return v5

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingIBRetryButton()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0xb

    return v5

    :cond_4
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEnabledSmartScanRecognitionFirstScreen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIBRunning()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    return v5

    :cond_5
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    return v5

    :cond_6
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    return v5

    :cond_7
    const/4 v5, 0x5

    return v5
.end method

.method private isOnIconExact(Landroid/view/View;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    aget v3, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    aget v3, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private lockIconPossible()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getImageAlpha()I

    move-result v1

    const/16 v2, 0xbf

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateClickable()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isTouchExplorationEnabled()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    xor-int/lit8 v2, v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private updateImageDrawable(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "lock_ic_autolock"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_ic_autolock_white_solution"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "lock_ic_autolock_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "lock_ic_autolock_pressed_white_solution"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v5, :cond_3

    :cond_2
    const-string/jumbo v0, "ic_biometric_cancel_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_cancel_pressed_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    :cond_4
    :goto_1
    const-string/jumbo v0, "ic_biometric_retry_pressed"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_retry_pressed_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v0, v5, :cond_8

    :cond_7
    const-string/jumbo v0, "ic_biometric_cancel"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_cancel_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v0, v4, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_a

    :cond_9
    :goto_2
    const-string/jumbo v0, "ic_biometric_retry"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setOriginImage(Ljava/lang/String;)V

    const-string/jumbo v0, "ic_biometric_retry_whitebg"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setWhiteBgImage(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setAdaptiveColor(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->invalidateImage()V

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isLockIconSelected(FF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->lockIconPossible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->isOnIconExact(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_LockIcon_3654()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    const-string/jumbo v0, "SEP"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-lt v2, v8, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    return v6

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->isLockIconSelected(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v6, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;->trustCircleSelected()V

    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-ne v2, v8, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "4"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    if-lt v2, v8, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceRecognitionListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "4"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_9
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "3"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_b
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIrisListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "3"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_d
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForIB()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1012"

    const-string/jumbo v4, "5"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_f
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateIBListeningState()V

    const-string/jumbo v2, "101"

    const-string/jumbo v3, "1013"

    const-string/jumbo v4, "5"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    return v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    const-string/jumbo v0, "GED"

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setBottomIconsCallback(Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mIconCallback:Lcom/android/systemui/statusbar/phone/LockIcon$BottomIconsCallback;

    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 21

    const-string/jumbo v2, "SEP"

    sget-object v3, Lcom/android/systemui/Rune;->KEYWI_VALUE_SHORTCUT_STYLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const-string/jumbo v2, "LockIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentState = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastState = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mDeviceInteractive = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastDeviceInteractive = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mScreenOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", mLastScreenOn = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",  force = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_5

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_c

    :cond_2
    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateImageDrawable(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12065b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickable()V

    :goto_2
    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12055e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12053d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120548

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mCurrentState:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120522

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v20

    :goto_3
    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v4

    const/4 v2, 0x3

    if-eq v4, v2, :cond_e

    const/4 v2, 0x4

    if-ne v4, v2, :cond_17

    :cond_e
    const/4 v10, 0x1

    :goto_5
    move/from16 v19, v10

    move/from16 v17, v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v4, v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_18

    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v13

    const/4 v2, -0x1

    if-eq v13, v2, :cond_19

    const/16 v16, 0x1

    :goto_7
    const v2, 0x7f080424

    if-ne v13, v2, :cond_1a

    const/4 v10, 0x1

    const/16 v19, 0x1

    const/16 v17, 0x1

    :cond_10
    :goto_8
    if-eqz v16, :cond_1c

    sget-object v2, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    :goto_9
    instance-of v2, v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_1d

    move-object v9, v11

    check-cast v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    if-nez v10, :cond_12

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v14, :cond_11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eq v2, v15, :cond_12

    :cond_11
    new-instance v12, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    invoke-direct {v12, v11, v15, v14}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v11, v12

    :cond_12
    if-eqz v19, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_b
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    if-eqz v10, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v9, :cond_13

    if-eqz v16, :cond_13

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_13
    const v2, 0x7f080424

    if-ne v13, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v2

    if-eqz v2, :cond_21

    xor-int/lit8 v18, v17, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickable()V

    goto/16 :goto_2

    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_4

    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_f

    if-eqz p1, :cond_14

    goto/16 :goto_6

    :cond_19
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_1a
    const v2, 0x7f08077c

    if-ne v13, v2, :cond_1b

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/16 v17, 0x1

    goto/16 :goto_8

    :cond_1b
    const v2, 0x7f080168

    if-ne v13, v2, :cond_10

    const/4 v10, 0x1

    const/16 v19, 0x0

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    goto/16 :goto_9

    :cond_1d
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1f
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    :cond_21
    const/16 v18, 0x0

    goto :goto_e
.end method
