.class public Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "KeyguardUsimTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;
    }
.end annotation


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPlayingShortcutAffordance:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-void
.end method

.method private getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    return-object p1

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->intToState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "KeyguardUsimTextView"

    const-string/jumbo v2, "mTelephonyManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method private updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string/jumbo v2, "KeyguardUsimTextView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateText(simState): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10404c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120488

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x7f120756

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(I)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f1204a0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v2, :cond_5

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SKT_USIM_TEXT:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x13

    if-ne v3, v2, :cond_5

    const v2, 0x7f12049e

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onFinishInflate()V

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCurrentSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText(Lcom/android/internal/telephony/IccCardConstants$State;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setAlpha(F)V

    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    return-void
.end method

.method public startHideHelpTextAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShortcutHintAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method

.method public startShowHelpTextAnimation()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const-wide/16 v4, 0xc8

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    return-void
.end method
