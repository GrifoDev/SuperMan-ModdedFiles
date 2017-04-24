.class public Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;
.super Landroid/app/Fragment;
.source "FingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;,
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;,
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static MIN_PASSWORD_LENGTH:I

.field private static THRESHOLD_OF_SEQUENTIAL_CHAR:I


# instance fields
.field private MaxLengthFilter:Landroid/text/InputFilter;

.field private isExistRequestedPWQ:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordDesc:Landroid/widget/TextView;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mSavedPassword:Ljava/lang/String;

.field private mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

.field private rotateState:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getShortPasswordLength()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->getFingerPasswordQuality()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$1;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$2;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 4

    const/16 v3, 0xbb

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const-string/jumbo v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "has internal loop password : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v4, "0123456789"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const-string/jumbo v4, "0123456789"

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "9876543210"

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "ChooseLockPassword"

    const-string/jumbo v5, "has Sequential password"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    sub-int v1, v4, v5

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_5

    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "zyxwvutsrqponmlkjihgfedcba"

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "ChooseLockPassword"

    const-string/jumbo v5, "has Sequential password"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method private getScreenOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private handleNext()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0, v0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v4, "FingerprintSettings_changepassword"

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b06b4

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FpstFingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateUi()V
    .locals 11

    const v10, 0x7f0b0705

    const v9, 0x7f0b0687

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isDetached()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v4, "FpstFingerprintPasswordFragment"

    const-string/jumbo v5, "Fragment was detached. UpdateUi is cancelled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v7, 0x7f0b11c2

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_5

    if-lez v1, :cond_5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_3

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p0, v9, v6}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v6, :cond_1

    new-array v4, v4, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v10, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v7, 0x7f0b06fc

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f0b083a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v6, v7, :cond_7

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v10, v7}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_9

    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v9, v7}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->betaHint:I

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iget v7, v7, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->alphaHint:I

    new-array v8, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_0

    const v28, 0x7f0b06f0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    const v28, 0x7f0b070b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_2

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b11b4

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_3

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b11b7

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_3
    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v28, 0x20

    move/from16 v0, v28

    if-lt v6, v0, :cond_4

    const/16 v28, 0x7f

    move/from16 v0, v28

    if-le v6, v0, :cond_5

    :cond_4
    const v28, 0x7f0b11bb

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_5
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v6, v0, :cond_6

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v6, v0, :cond_6

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v21, v21, 0x1

    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_6
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v6, v0, :cond_7

    const/16 v28, 0x5a

    move/from16 v0, v28

    if-gt v6, v0, :cond_7

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_7
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v6, v0, :cond_8

    const/16 v28, 0x7a

    move/from16 v0, v28

    if-gt v6, v0, :cond_8

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v28, v0

    const/high16 v29, 0x20000

    move/from16 v0, v29

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    if-gtz v19, :cond_a

    if-lez v26, :cond_b

    :cond_a
    const v28, 0x7f0b11b9

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v28, v0

    const/high16 v29, 0x60000

    move/from16 v0, v29

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v28, v0

    move/from16 v0, v19

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v29, v0

    const v30, 0x7f130007

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v28, v0

    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v29, v0

    const v30, 0x7f13000a

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v28, v0

    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    const v30, 0x7f130008

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    const v30, 0x7f130009

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v29, v0

    const v30, 0x7f13000b

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v28, v0

    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    const v30, 0x7f13000c

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v31, 0x0

    aput-object v30, v29, v31

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v28, v0

    const/high16 v29, 0x40000

    move/from16 v0, v29

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    move/from16 v28, v0

    const/high16 v29, 0x50000

    move/from16 v0, v29

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    const/4 v5, 0x1

    :goto_3
    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    :cond_12
    if-nez v19, :cond_15

    const v28, 0x7f0b11bc

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_13
    const/4 v4, 0x0

    goto :goto_2

    :cond_14
    const/4 v5, 0x0

    goto :goto_3

    :cond_15
    if-eqz v5, :cond_16

    if-nez v22, :cond_16

    const v28, 0x7f0b11bd

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_16
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v28, "true"

    const/16 v29, 0x0

    aput-object v28, v24, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "getForbiddenStrings"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    aput-object p1, v23, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "hasForbiddenNumericSequence"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "getMaximumNumericSequenceLength"

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "hasForbiddenCharacterSequence"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "getMaximumCharacterSequenceLength"

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v28, 0x0

    aput-object p1, v25, v28

    const/16 v28, 0x0

    const/16 v29, 0x1

    aput-object v28, v25, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "hasForbiddenStringDistance"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "getMinimumCharacterChangeLength"

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "hasForbiddenData"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "hasMaxRepeatedCharacters"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v30, "getMaximumCharacterOccurences"

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v28

    const-string/jumbo v29, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v30, "isPasswordPatternMatched"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    if-nez v10, :cond_17

    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v7, v0, :cond_18

    :cond_17
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_1a

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    add-int/lit8 v29, v10, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b087a

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_18
    if-nez v8, :cond_17

    if-nez v9, :cond_17

    if-nez v11, :cond_17

    :cond_19
    const/16 v28, 0x0

    return-object v28

    :cond_1a
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v12, v0, :cond_1b

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    add-int/lit8 v29, v9, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b0879

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_1b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v15, v0, :cond_1c

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b087c

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_1c
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v13, v0, :cond_1d

    const v28, 0x7f0b087b

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_1d
    const/16 v28, 0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b087d

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    return-object v28

    :cond_1e
    if-nez v18, :cond_19

    const v28, 0x7f0b087e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v28

    return-object v28
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "FpstFingerprintPasswordFragment"

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

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintPassword;

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->setOnKeyBackListener(Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1101a8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v2, "FpstFingerprintPasswordFragment"

    const-string/jumbo v3, "onConfigurationChanged"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    :goto_0
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x61000

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "FpstFingerprintPasswordFragment"

    const-string/jumbo v5, "onCreate"

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->setRetainInstance(Z)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->semIsSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    :cond_0
    const-string/jumbo v1, "FpstFingerprintPasswordFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCheckSimplePassword = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCheckSimplePassword:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getScreenOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->rotateState:I

    sput-boolean v2, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v1

    if-lez v1, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    const-string/jumbo v1, "FpstFingerprintPasswordFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isExistRequestedPWQ = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->isExistRequestedPWQ:Z

    if-nez v1, :cond_2

    sput v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    sput v4, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->THRESHOLD_OF_SEQUENTIAL_CHAR:I

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    :cond_2
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get0()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword;->-set0(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    :cond_3
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get0()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get0()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    sget v3, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    if-ge v1, v3, :cond_4

    sget v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MIN_PASSWORD_LENGTH:I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_4
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get0()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    if-ne v1, v8, :cond_5

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    if-gez v1, :cond_7

    :goto_1
    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_8

    move v1, v4

    :goto_2
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    :cond_5
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get0()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    const-string/jumbo v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLetters:I

    const-string/jumbo v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinUpperCase:I

    const-string/jumbo v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLowerCase:I

    const-string/jumbo v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNumeric:I

    const-string/jumbo v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinSymbols:I

    const-string/jumbo v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :goto_3
    return-void

    :cond_6
    move v1, v3

    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mRequestedQuality:I

    goto/16 :goto_1

    :cond_8
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v1, "FingerprintPassword"

    const-string/jumbo v2, "mDPM is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    const-string/jumbo v12, "FpstFingerprintPasswordFragment"

    const-string/jumbo v13, "onCreateView"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get2()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_0
    :goto_0
    const v12, 0x7f0400f2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const v12, 0x7f110369

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordDesc:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordDesc:Landroid/widget/TextView;

    const v13, 0x7f0b06ef

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v12, 0x7f1101a8

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f1101a9

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "show_button_background"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const v13, 0x7f02033b

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mNextButton:Landroid/widget/Button;

    const v13, 0x7f02033b

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    instance-of v12, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_3
    const v12, 0x7f1101aa

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    const v12, 0x7f1101a6

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/text/InputFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->MaxLengthFilter:Landroid/text/InputFilter;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    new-instance v14, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordMaxLength:I

    invoke-direct {v14, v15}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v13, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v12, v13, v14, v15}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v12, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {v12, v2, v13, v14}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    const v12, 0x7f1101a5

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get2()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v12}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getInputType()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setInputType(I)V

    instance-of v12, v2, Landroid/preference/PreferenceActivity;

    if-eqz v12, :cond_5

    move-object v7, v2

    check-cast v7, Landroid/preference/PreferenceActivity;

    const/4 v9, 0x0

    const-string/jumbo v12, "FingerprintSettings_changepassword"

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const v9, 0x7f0b06b3

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v13, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$4;-><init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    :cond_7
    return-object v10

    :cond_8
    const-string/jumbo v12, "FpstFingerprintPasswordFragment"

    const-string/jumbo v13, "onCreateView_PreviousStage : fingerprint_setup_wizard"

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string/jumbo v12, "#00b081"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v12, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, -0x80000000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v11, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const/high16 v13, 0x2000000

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    :cond_b
    const v12, 0x7f110366

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    const v9, 0x7f0b0686

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->handleNext()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyBack()Z
    .locals 3

    const-string/jumbo v0, "FpstFingerprintPasswordFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnKeyPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;->Introduction:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "FpstFingerprintPasswordFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->EnableSystemKey()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string/jumbo v0, "FpstFingerprintPasswordFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FingerprintSettings_changepassword"

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintPassword;->-get1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->DisableSystemKey()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected updateStage(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mUiStage:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$Stage;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->updateUi()V

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
