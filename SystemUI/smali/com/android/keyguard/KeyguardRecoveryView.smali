.class public Lcom/android/keyguard/KeyguardRecoveryView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardRecoveryView$1;
    }
.end annotation


# instance fields
.field private final mDisappearYTranslation:I

.field private mEntry:Ljava/lang/String;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private final mShowImeAtScreenOn:Z

.field private mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

.field private mSwitchImeButton:Lcom/android/systemui/widget/SystemUIImageView;

.field final watcher:Landroid/text/SpanWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardRecoveryView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardRecoveryView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRecoveryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/keyguard/KeyguardRecoveryView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRecoveryView$1;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mDisappearYTranslation:I

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

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


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a03c5

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSecurityViewId()I
    .locals 1

    const v0, 0x7f0a028c

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    const v0, 0x7f120528

    return v0
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardRecoveryView_8024(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f08041a

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_password_show_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_whitebg_password_show_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12064b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setAccessibilitySelection(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const v1, 0x7f080419

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_password_hide_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setOriginImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const-string/jumbo v1, "lock_whitebg_password_hide_btn"

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setWhiteBgImage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->verifyPasswordAndUnlock()V

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
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    const/16 v4, 0x11

    invoke-interface {v2, v3, v5, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v3, Lcom/android/keyguard/KeyguardRecoveryView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardRecoveryView$3;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    const v2, 0x7f0a03c8

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120520

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v3, Lcom/android/keyguard/-$Lambda$MWBYSV8UNHb92dzPlcAiOQs1hqI;

    invoke-direct {v3, p0}, Lcom/android/keyguard/-$Lambda$MWBYSV8UNHb92dzPlcAiOQs1hqI;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mKnoxStateMonitor:Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v2}, Lcom/android/systemui/KnoxStateMonitor;->isPasswordVisibilityEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const-string/jumbo v2, "KeyguardRecoveryView"

    const-string/jumbo v3, "<<<--->>> hide button"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowPassswordButton:Lcom/android/systemui/widget/SystemUIImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    const v2, 0x7f0a050d

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSwitchImeButton:Lcom/android/systemui/widget/SystemUIImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSwitchImeButton:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/KeyguardRecoveryView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSwitchImeButton:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSwitchImeButton:Lcom/android/systemui/widget/SystemUIImageView;

    new-instance v3, Lcom/android/keyguard/KeyguardRecoveryView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardRecoveryView$4;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070292

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "KeyguardRecoveryView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPasswordChecked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_old"

    iget-object v7, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "confirm_credentials"

    invoke-virtual {v1, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "isRecovery"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x800000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, p1, v9, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :goto_1
    xor-int/lit8 v6, p2, 0x1

    invoke-virtual {p0, v9, v6}, Lcom/android/keyguard/KeyguardRecoveryView;->resetPasswordText(ZZ)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/util/ResetDeviceUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    new-instance v0, Lcom/android/keyguard/KeyguardRecoveryView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardRecoveryView$2;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-interface {v1, v2, v4, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f120603

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->setAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mDisappearYTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->onPasswordChecked(IZIZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/keyguard/KeyguardRecoveryView$5;

    invoke-direct {v4, p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView$5;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method
