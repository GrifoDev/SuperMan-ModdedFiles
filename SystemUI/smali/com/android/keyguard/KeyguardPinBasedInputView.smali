.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPinBasedInputView$1;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mButton0:Landroid/view/View;

.field private mButton1:Landroid/view/View;

.field private mButton2:Landroid/view/View;

.field private mButton3:Landroid/view/View;

.field private mButton4:Landroid/view/View;

.field private mButton5:Landroid/view/View;

.field private mButton6:Landroid/view/View;

.field private mButton7:Landroid/view/View;

.field private mButton8:Landroid/view/View;

.field private mButton9:Landroid/view/View;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCurrentMobileKeyboard:I

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputContainer:Landroid/view/ViewGroup;

.field private mIsImagePinLock:Z

.field protected mOkButton:Landroid/view/View;

.field private mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPinBasedInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPinBasedInputView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPinBasedInputView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateKeyboardView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    new-instance v0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$1;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private initializeBottomContainerView()V
    .locals 6

    const v5, 0x7f08059d

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f050036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsImagePinLock:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0a0247

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/KeyguardPinBasedInputView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$4;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledRapidKeyInput()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    new-instance v3, Lcom/android/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    const v1, 0x7f0a0150

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$Lambda$f9UaSmcmMPVZCr-NYUrOZyEN4tk;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$Lambda$f9UaSmcmMPVZCr-NYUrOZyEN4tk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/-$Lambda$f9UaSmcmMPVZCr-NYUrOZyEN4tk$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/-$Lambda$f9UaSmcmMPVZCr-NYUrOZyEN4tk$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    const v1, 0x7f0a023d

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    const v1, 0x7f0a023e

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    const v1, 0x7f0a023f

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    const v1, 0x7f0a0240

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    const v1, 0x7f0a0241

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    const v1, 0x7f0a0243

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    const v1, 0x7f0a0244

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    const v1, 0x7f0a0245

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    const v1, 0x7f0a0246

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto/16 :goto_0

    :cond_5
    const v1, 0x7f0a0248

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    goto/16 :goto_1
.end method

.method private isUseKeyboard()Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    goto :goto_0
.end method

.method private performClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method private performNumberClick(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateKeyboardView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isUseKeyboard()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->setNeedsInput(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070462

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    if-eqz p2, :cond_0

    instance-of v3, p2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onUserInput()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mKeyguardTextBuilder:Lcom/android/systemui/KeyguardTextBuilder;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/KeyguardTextBuilder;->getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_IS_VZW_DEVICE:Z

    if-eqz v1, :cond_1

    const v1, 0x7f120617

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setSubSecurityMessage(II)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const v1, 0x7f120616

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setSubSecurityMessage(II)V

    goto :goto_0

    :cond_2
    return v3
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPinBasedInputView_21077(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->deleteLastChar()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardPinBasedInputView_21787(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->doHapticKeyClick()V

    return v1
.end method

.method public needsInput()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mAttached:Z

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iget v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateKeyboardView()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mAttached:Z

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->verifyPasswordAndUnlock()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/PasswordTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setSelected(Z)V

    const v2, 0x7f0a0238

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mInputContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v3, Lcom/android/keyguard/KeyguardPinBasedInputView$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$2;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v2, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    const v2, 0x7f0a00f4

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/PasswordTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setInputType(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateKeyboardView()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v3, Lcom/android/keyguard/KeyguardPinBasedInputView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPinBasedInputView$3;-><init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/PasswordTextView;->setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    const v2, 0x7f0a00d0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v2, Lcom/android/systemui/Rune;->STATBAR_CONFIG_STATUSBAR_SIDE_PADDING:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v0, v1, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->initializeBottomContainerView()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->verifyPasswordAndUnlock()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v2

    :cond_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performClick(Landroid/view/View;)V

    return v2

    :cond_1
    const/4 v1, 0x7

    if-lt p1, v1, :cond_2

    const/16 v1, 0x10

    if-gt p1, v1, :cond_2

    add-int/lit8 v0, p1, -0x7

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v2

    :cond_2
    const/16 v1, 0x90

    if-lt p1, v1, :cond_3

    const/16 v1, 0x99

    if-gt p1, v1, :cond_3

    add-int/lit16 v0, p1, -0x90

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v2

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onMeasure(II)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->measureChildren(II)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KeyguardPinBasedInputView"

    const-string/jumbo v2, "The Ok button size is 0X0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0a0247

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButtonRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->updateRippleSize(Landroid/view/View;Landroid/graphics/drawable/RippleDrawable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->isUseKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mCurrentMobileKeyboard:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->doHapticKeyClick()V

    :cond_0
    return v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mAttached:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/Rune;->isDeadzoneExist()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "KeyguardPinBasedInputView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged() Visiblity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string/jumbo v3, "dead_zone_port_x1"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_x2"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_y1"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const-string/jumbo v3, "dead_zone_port_x1"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_x2"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "dead_zone_port_y1"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOkButtonEnabled(Z)V

    return-void
.end method

.method protected resetState()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setOkButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setOkButtonEnabled(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mInputContainer:Landroid/view/ViewGroup;

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

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public updateStyle(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->initializeBottomContainerView()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton0:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton1:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton2:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton3:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton4:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton5:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton6:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton7:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton8:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButton9:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->updateViewstyle()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mIsImagePinLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method
