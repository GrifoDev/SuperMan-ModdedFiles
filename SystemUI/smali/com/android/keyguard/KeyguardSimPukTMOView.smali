.class public Lcom/android/keyguard/KeyguardSimPukTMOView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSimPukTMOView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukTMOView$1;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSimPukTMOView;)Landroid/telecom/TelecomManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/telecom/TelecomManager;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardSimPukTMOView;Landroid/telecom/TelecomManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukTMOView;->resumeCall(Landroid/telecom/TelecomManager;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->updateEmergencyCallButton()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSimPukTMOView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private getTelecommManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private isInCall(Landroid/telecom/TelecomManager;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "KeyguardSimPukTMOView"

    const-string/jumbo v1, "isInCall : TelecomManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private resumeCall(Landroid/telecom/TelecomManager;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardSimPukTMOView"

    const-string/jumbo v1, "resumeCall : TelecomManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEmergencyCallButton()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v2, 0x7f0a01a0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->getTelecommManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSimPukTMOView;->isInCall(Landroid/telecom/TelecomManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x10404ce

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f120578

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v5, 0x7f0a02c6

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11200c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x7f120657

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x7f120656

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mContext:Landroid/content/Context;

    const v7, 0x10402f8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v5, 0x7f0a01a0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    if-eqz v4, :cond_4

    const v5, 0x7f120578

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    :goto_0
    new-instance v5, Lcom/android/keyguard/KeyguardSimPukTMOView$2;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v5, 0x7f0a01c8

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardSimPukTMOView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v5, 0x7f120658

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Lcom/android/keyguard/KeyguardSimPukTMOView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardSimPukTMOView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const v5, 0x7f120655

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_3

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume(I)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
