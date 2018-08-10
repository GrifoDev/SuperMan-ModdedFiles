.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardOwnerInfoView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$2;,
        Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;
    }
.end annotation


# instance fields
.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mHasSpace:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

.field private mSpaceChangedListener:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHasSpace:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$2;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateCompoundVisible(Z)V

    return-void
.end method

.method private updateCMASText(I)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_CMAS:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_PRESIDENTIAL_CMAS:Z

    if-eqz v1, :cond_2

    const v0, 0x7f120499

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const v0, 0x7f120478

    goto :goto_1
.end method

.method private updateOwnerInfo(I)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const-string/jumbo v5, "KeyguardOwnerInfoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    :cond_0
    const-string/jumbo v5, "KeyguardOwnerInfoView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Show CMAS on owner info space ! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateCMASText(I)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v5}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isShowOwnerInfoOnKeyguard()Z

    move-result v5

    xor-int/lit8 v1, v5, 0x1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateLayout()V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "KeyguardOwnerInfoView"

    const-string/jumbo v6, "updateOwnerInfo "

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v9}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public hasSpace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHasSpace:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method public onClockColorChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockPackageChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateTextView()V

    return-void
.end method

.method public onClockStyleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateTextView()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mFontScale:F

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindowInternal()V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sec-roboto-light"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    return-void
.end method

.method public setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    return-void
.end method

.method public setSpaceChangedListener(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mSpaceChangedListener:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;

    return-void
.end method

.method public updateLayout()V
    .locals 5

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isScalableClockShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mServiceBoxController:Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setMinimumHeight(I)V

    sget-boolean v3, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v3, :cond_1

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHasSpace:Z

    if-eq v3, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mHasSpace:Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mSpaceChangedListener:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mSpaceChangedListener:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;

    invoke-interface {v3, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;->onOwnerInfoSpaceChanged(Z)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateOwnerInfo()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateTextView()V
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->isThemeClockEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->adaptiveColorMain:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    return-void

    :cond_2
    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->shouldUseDefaultColor()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->semClearAllTextEffect()V

    sget-object v1, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getDateColor()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->originShadowColorId:I

    iget v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mUpdateFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColor:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v0, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->whitebgShadowColorId:I

    const-string/jumbo v1, "KeyguardOwnerInfoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shadowColorResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->getShadowDy()F

    move-result v3

    sget-object v4, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setShadowLayer(FFFI)V

    :cond_4
    return-void
.end method
