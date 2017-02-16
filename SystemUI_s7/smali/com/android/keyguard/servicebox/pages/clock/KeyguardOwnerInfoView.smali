.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
.super Lcom/android/keyguard/KeyguardTextView;
.source "KeyguardOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsShowCMAS:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private setCMASIcon(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v1, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getKeyguardFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v2, v3

    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->keyguard_cmas_drawable_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCompoundDrawablePadding(I)V

    goto :goto_1
.end method

.method private updateCMASText(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_CMAS:Z

    if-eqz v2, :cond_3

    if-ne p1, v4, :cond_3

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PRESIDENTIAL_CMAS:Z

    if-eqz v2, :cond_4

    sget v0, Lcom/android/keyguard/R$string;->keyguard_presidential_cmas_text:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    :cond_1
    :goto_3
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    return v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->keyguard_cmas_text:I

    goto :goto_2

    :cond_5
    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    goto :goto_3
.end method

.method private updateOwnerInfo(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string/jumbo v2, "KeyguardOwnerInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateOwnerInfo(hasCMAS): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "KeyguardOwnerInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Show CMAS on owner info space ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateCMASText(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenOwnerInfoEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onAttachedToWindow()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onDetachedFromWindowInternal()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardTextView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 2

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->mIsShowCMAS:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setCMASIcon(Z)V

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public updateOwnerInfo(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
