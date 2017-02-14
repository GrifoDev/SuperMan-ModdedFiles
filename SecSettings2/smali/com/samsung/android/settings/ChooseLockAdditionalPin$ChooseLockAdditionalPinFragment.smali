.class public Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "ChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;,
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;,
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;,
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field public MaxLengthFilter:Landroid/text/InputFilter;

.field private isAppLockPatternAdditionalPin:Z

.field private isBlock:Z

.field private isFallback:Z

.field private isPersonalPageLockPatternAdditionalPin:Z

.field private isSetLockToSignature:Z

.field private isSetupWizardLock:Z

.field private isSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mDone:Z

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHasChallenge:Z

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsParentDirectionLock:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPatternSavedString:Ljava/lang/String;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRequestedQuality:I

.field private mTitleText:Landroid/widget/TextView;

.field private mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

.field title:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showSoftInput()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x20000

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    iput v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    iput-object v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHasChallenge:Z

    iput-object v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetupWizardLock:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    new-instance v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$3;-><init>(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method private handleNext()V
    .locals 15

    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    iput-object v10, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v7, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isAppLockPatternAdditionalPin:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForAppLockPattern(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v9, 0x0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v14

    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "screen-lock enabled : pattern"

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v6, 0x0

    :goto_5
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz v9, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_9
    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHasChallenge:Z

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChallenge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChallenge:J

    :cond_a
    iget-wide v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChallenge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, v0, v14}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V

    goto/16 :goto_0

    :cond_b
    sget v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_d
    sget v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto/16 :goto_3

    :cond_e
    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    sget v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    :cond_f
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    sget v2, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    invoke-virtual {v0, v1, v10, v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_11
    sget v6, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto/16 :goto_5

    :cond_12
    sget v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto :goto_6

    :cond_13
    const-string/jumbo v0, "ChooseLockAdditionalPin"

    const-string/jumbo v1, "critical: challenge returned zero."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v12, v0, [B

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput-byte v0, v12, v1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "hw_auth_token"

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    goto/16 :goto_0

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    goto/16 :goto_0

    :cond_15
    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object v0, v11

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0
.end method

.method private saveAdditionalPinForAppLockPattern(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v0, "applock_locktype_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->setAppLockFingerPrintLockscreen(ZI)V

    const-string/jumbo v1, "applock_locktype_iris"

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "applock_lock_type"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "applock_lock_type"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showSoftInput()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get4()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get4()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "ChooseLockAdditionalPin"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ChooseLockAdditionalPin"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private startVerifyPattern(Lcom/android/internal/widget/LockPatternUtils;Z)V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-wide v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChallenge:J

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    new-instance v5, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$4;-><init>(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void

    :cond_1
    sget v4, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto :goto_0
.end method

.method private updateUi()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const v6, 0x7f0b1099

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b082e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v6, v7, :cond_0

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v5, 0x7f0b1099

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v6, v7, :cond_1

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v5, 0x7f0b109c

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x20

    if-le v0, v6, :cond_2

    const/16 v6, 0x7f

    if-le v0, v6, :cond_3

    :cond_2
    const v5, 0x7f0b109f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    const/16 v6, 0x30

    if-lt v0, v6, :cond_4

    const/16 v6, 0x39

    if-gt v0, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/16 v6, 0x41

    if-lt v0, v6, :cond_5

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const/16 v6, 0x61

    if-lt v0, v6, :cond_6

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    const/high16 v7, 0x20000

    if-ne v7, v6, :cond_9

    if-gtz v2, :cond_8

    if-lez v4, :cond_9

    :cond_8
    const v5, 0x7f0b109d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_9
    iget v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    const/high16 v7, 0x70000

    if-ne v7, v6, :cond_c

    if-gtz v2, :cond_a

    if-lez v4, :cond_b

    :cond_a
    const v5, 0x7f0b0866

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_b
    return-object v9

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v7

    if-eqz v7, :cond_d

    :goto_2
    invoke-virtual {v6, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    const v5, 0x7f0b109e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_d
    sget v5, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto :goto_2

    :cond_e
    return-object v9
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "ChooseLockAdditionalPin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1101a8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/high16 v6, 0x10000

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.password_type"

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    const-string/jumbo v1, "lockscreen.password_type"

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const-string/jumbo v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.password_min"

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const-string/jumbo v1, "lockscreen.password_max"

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    const-string/jumbo v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHasChallenge:Z

    const-string/jumbo v1, "challenge"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChallenge:J

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCurrentPattern:Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    const-string/jumbo v1, "Block"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isBlock:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignature:Z

    const-string/jumbo v1, "isDirectionLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v1, "lockscreen.password_type"

    iget v3, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get5()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string/jumbo v1, "SignatureOwnAdditionalPin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    const-string/jumbo v1, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    const-string/jumbo v1, "AppLockPatternOwnAdditionalPin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isAppLockPatternAdditionalPin:Z

    const-string/jumbo v1, "SetupWizardLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetupWizardLock:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PersonalPagePatternSaved"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isAppLockPatternAdditionalPin:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "AppLockPatternSaved"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPatternSavedString:Ljava/lang/String;

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "SignatureLockSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    iput v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    iput v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    :cond_2
    return-void

    :cond_3
    sget v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MY_USER_ID:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v9, 0x7f02033b

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v5, 0x7f040061

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v6, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    const v5, 0x7f1101a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f1101a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "show_button_background"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const v5, 0x7f1101aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v5, 0x7f1101a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setWritingBuddyEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x2000000

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v5, v1, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v5, 0x7f1101a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f1101a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-lez v5, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/text/InputFilter;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    aput-object v9, v8, v7

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v9, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v6

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    if-nez p3, :cond_6

    sget-object v5, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    :cond_3
    :goto_1
    iput-boolean v7, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mDone:Z

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f110021

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mTitleText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object v4

    :cond_5
    move v5, v7

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "first_pin"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    const-string/jumbo v5, "ui_stage"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b086b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    const-string/jumbo v0, "ChooseLockAdditionalPin"

    const-string/jumbo v1, "[PPCLP] onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mIsParentDirectionLock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b086a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get3()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b09f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->-get2()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b0b36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0b0869

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "ui_stage"

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "first_pin"

    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    return-void
.end method
