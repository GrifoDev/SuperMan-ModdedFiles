.class public Lcom/android/keyguard/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardCarrierPasswordView$1;,
        Lcom/android/keyguard/KeyguardCarrierPasswordView$2;
    }
.end annotation


# instance fields
.field private deadline:J

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mFailedAttempts:I

.field private mInputContainer:Landroid/view/ViewGroup;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardCarrierPasswordView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardCarrierPasswordView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 5

    const-string/jumbo v2, "KeyguardCarrierPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x1000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.MASTER_CLEAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v3, 0x7f1204ba

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    iget v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_0
.end method

.method private setPasswordEntryEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private updateLayout()V
    .locals 3

    const v2, 0x7f070291

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private verifyPasswordAndUnlock()V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    new-instance v3, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw$1;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardCarrierPasswordView_4838(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardCarrierPasswordView_7603(ZI)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->updateLayout()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p3, :cond_4

    if-eqz p2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    return v3
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a03c5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->updateLayout()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$SP19MIYm-IAS6pzq_wp3CgDOJNw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, -0x400001

    and-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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
