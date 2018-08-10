.class public Lcom/android/keyguard/KeyguardPasswordView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPasswordView$1;
    }
.end annotation


# instance fields
.field private mBouncerShowing:Z

.field private final mDisappearYTranslation:I

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputContainer:Landroid/view/ViewGroup;

.field private mIsIrisAuthenticated:Z

.field private mIsMobileKeyboardCovered:I

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mShowImeAtScreenOn:Z

.field private mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private mSwitchImeButton:Landroid/view/View;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBouncerShowing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPasswordView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsIrisAuthenticated:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPasswordView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPasswordView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBouncerShowing:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardPasswordView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsIrisAuthenticated:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 14

    const-string/jumbo v0, "com.sec.android.inputmethod/.SamsungKeypad"

    const-string/jumbo v1, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v12, 0x1

    if-le v4, v12, :cond_1

    const/4 v12, 0x1

    return v12

    :cond_1
    const/4 v12, 0x1

    invoke-virtual {p1, v5, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    const-string/jumbo v12, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string/jumbo v12, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x1

    if-le v10, v12, :cond_3

    const/4 v10, 0x1

    :cond_3
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sub-int v7, v10, v2

    if-gtz v7, :cond_7

    if-eqz p2, :cond_0

    const/4 v12, 0x1

    if-le v2, v12, :cond_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v12, 0x1

    if-le v4, v12, :cond_9

    const/4 v12, 0x1

    :goto_2
    return v12

    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private isHideKeyboardByDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    return v0
.end method

.method private updateSwitchImeButton()V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v5, v3}, Lcom/android/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v2, v1, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v1, :cond_4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070291

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected displayDefaultSecurityMessage()V
    .locals 7

    const/4 v6, -0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v3}, Lcom/android/systemui/KeyguardTextBuilder;->getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_IS_VZW_DEVICE:Z

    if-eqz v1, :cond_2

    const v1, 0x7f12060c

    invoke-virtual {p0, v1, v6}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->m2StepVerification:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutBiometricAttemptDeadline(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f1204b1

    invoke-virtual {p0, v1, v6}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v1, 0x7f12060b

    invoke-virtual {p0, v1, v6}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    goto :goto_1
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/samsung/android/security/MemoryWipeUtils;->getChars(Landroid/widget/TextView;)[C

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/samsung/android/security/MemoryWipeUtils;->clear([C)V

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a03c5

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_IS_VZW_DEVICE:Z

    if-eqz v1, :cond_1

    const v1, 0x7f12060c

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const v1, 0x7f12060b

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setSubSecurityMessage(II)V

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a0289

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f120528

    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_11911(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mBouncerShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHideKeyboardByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsMobileKeyboardCovered:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardPasswordView"

    const-string/jumbo v1, "Update iris preview caused due to click on password entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12042d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x8

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->irisAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_13021(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f08041a

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_password_show_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_whitebg_password_show_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12064b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setAccessibilitySelection(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f080419

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_password_hide_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_whitebg_password_hide_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_15373(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_16062()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_16357(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "show_keyboard_button"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_6527(I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHideKeyboardByDefault()Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p1, v3, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$4;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPasswordView_6999()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "show_keyboard_button"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

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
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->verifyPasswordAndUnlock()V

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
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v0, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    const v0, 0x7f0a03c8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v1, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isPasswordVisibilityEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "KeyguardPasswordView"

    const-string/jumbo v1, "<<<--->>> hide button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    const v0, 0x7f0a050d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/KeyguardPasswordView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    new-instance v1, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->updateSwitchImeButton()V

    new-instance v0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$5;-><init>(Ljava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mIsMobileKeyboardCovered:I

    :cond_3
    new-instance v0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onLayout(ZIIII)V

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEcaView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, p5, :cond_2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarForceHide()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEcaView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1050158

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    invoke-virtual {v3, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, p5, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mEcaView:Landroid/view/View;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    const-string/jumbo v5, "password"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPasswordChecked(IZIZLjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowKeyboardButton()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mSwitchImeButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;

    invoke-direct {v0, p1, p0}, Lcom/android/keyguard/-$Lambda$4VW9lNn8l0gNW33dycehlPY1vNg$6;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected resetState()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->displayDefaultSecurityMessage()V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->m2StepVerification:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAuthenticatedWithBiometric(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPasswordView;->isHideKeyboardByDefault()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPasswordView;->setPasswordEntryInputEnabled(Z)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPasswordView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPasswordView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method
