.class public Lcom/android/keyguard/KeyguardSimPersoView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPersoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPersoView$1;,
        Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    }
.end annotation


# static fields
.field private static mNumRetry:I


# instance fields
.field private mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

.field private volatile mSimCheckInProgress:Z

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPersoView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPersoView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return p0
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardSimPersoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPersoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    new-instance v0, Lcom/android/keyguard/KeyguardSimPersoView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPersoView$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    const v2, 0x7f120574

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a04c8

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a029e

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    sget v1, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setMaxLength(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    const-string/jumbo v0, "KeyguardSimPersoView"

    const-string/jumbo v1, "Resetting state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSubId:I

    sget v0, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f12065a

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f120577

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0
.end method

.method protected shouldLockout(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KTT_USIM_TEXT:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/keyguard/KeyguardSimPersoView;->mNumRetry:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120608

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f1204cc

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_3

    sget v1, Lcom/android/systemui/Rune;->SECURITY_VALUE_PERSO_LOCK_PASSWORD_LENGTH:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f12065a

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :goto_0
    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardSimPersoView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f120577

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/keyguard/KeyguardSimPersoView$2;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPersoView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lcom/android/keyguard/KeyguardSimPersoView$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardSimPersoView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mSimCheckInProgress:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoView;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPersoView$CheckSimPerso;->start()V

    :cond_4
    return-void
.end method
