.class public Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;
.super Landroid/app/Activity;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static mIsFromKnoxIris:Z


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mCancelButton:Landroid/widget/LinearLayout;

.field private mCheckSimplePassword:Z

.field private mHeading:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mIsValidEntry:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/LinearLayout;

.field private mNextText:Landroid/widget/TextView;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordConfirm:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdChangeEnforceStatus:I

.field private mRequestedQuality:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->handleNext()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/high16 v0, 0x40000

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    iput v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

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

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

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

    add-int/lit8 v1, v4, -0x4

    const/4 v0, 0x0

    :goto_0
    if-gt v0, v1, :cond_2

    const-string/jumbo v4, "0123456789"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "9876543210"

    add-int/lit8 v5, v0, 0x4

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

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x4

    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_5

    const-string/jumbo v4, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v5, v0, 0x4

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

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private handleNext()V
    .locals 10

    const/4 v9, 0x0

    const/16 v6, 0x10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sget-boolean v4, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v4, v1, v9, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setIsFingerAsSupplement(IZ)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "knox_finger_print_plus"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v4, v7, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const v5, 0x7f0b1392

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setNextEnabled()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v1, "#47252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v27, 0x0

    aput-object p1, v22, v27

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenNumericSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumNumericSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumCharacterSequenceLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v27, 0x0

    aput-object p1, v23, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aput-object v27, v23, v28

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenStringDistance"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMinimumCharacterChangeLength"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasForbiddenData"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v28, "getMaximumCharacterOccurences"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v27, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v28, "isPasswordPatternMatched"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v13, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    add-int/lit8 v28, v9, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b086e

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_1

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    add-int/lit8 v28, v8, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b086d

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_1
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v14, v0, :cond_2

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0870

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_3

    const v27, 0x7f0b086f

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_4

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b0871

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_4
    if-nez v17, :cond_5

    const v27, 0x7f0b0872

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_5
    const/16 v27, 0x0

    return-object v27

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    const v27, 0x7f0b06e5

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_7
    const v27, 0x7f0b08b3

    goto :goto_0

    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    const v27, 0x7f0b0700

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_9
    const v27, 0x7f0b08b2

    goto :goto_1

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b1099

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_c

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v29, 0x0

    aput-object v28, v27, v29

    const v28, 0x7f0b109c

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_c
    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v6, v0, :cond_d

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-le v6, v0, :cond_e

    :cond_d
    const v27, 0x7f0b10a0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_e
    const/16 v27, 0x30

    move/from16 v0, v27

    if-lt v6, v0, :cond_f

    const/16 v27, 0x39

    move/from16 v0, v27

    if-gt v6, v0, :cond_f

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v20, v20, 0x1

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_f
    const/16 v27, 0x41

    move/from16 v0, v27

    if-lt v6, v0, :cond_10

    const/16 v27, 0x5a

    move/from16 v0, v27

    if-gt v6, v0, :cond_10

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    :cond_10
    const/16 v27, 0x61

    move/from16 v0, v27

    if-lt v6, v0, :cond_11

    const/16 v27, 0x7a

    move/from16 v0, v27

    if-gt v6, v0, :cond_11

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x20000

    move/from16 v0, v28

    move/from16 v1, v27

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x30000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    :cond_13
    if-gtz v18, :cond_14

    if-lez v25, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    move/from16 v27, v0

    if-gtz v27, :cond_15

    const v27, 0x7f0b109e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x30000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    const/16 v27, 0x3

    move/from16 v0, v24

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    const v27, 0x7f0b10a5

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x60000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v28, v0

    const v29, 0x7f130006

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v27, v0

    move/from16 v0, v21

    move/from16 v1, v27

    if-ge v0, v1, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v28, v0

    const v29, 0x7f130009

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v27, v0

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v28, v0

    const v29, 0x7f130007

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v28, v0

    const v29, 0x7f130008

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v27, v0

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v28, v0

    const v29, 0x7f13000a

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v27, v0

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v28, v0

    const v29, 0x7f13000b

    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x70000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_1f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    if-gtz v18, :cond_1d

    if-lez v25, :cond_1e

    :cond_1d
    const v27, 0x7f0b0866

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_1e
    const/16 v27, 0x0

    return-object v27

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x40000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_21

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    move/from16 v27, v0

    const/high16 v28, 0x50000

    move/from16 v0, v28

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    const/4 v5, 0x1

    :goto_5
    if-nez v4, :cond_20

    if-eqz v5, :cond_23

    :cond_20
    if-nez v18, :cond_23

    const v27, 0x7f0b10a1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_21
    const/4 v4, 0x0

    goto :goto_4

    :cond_22
    const/4 v5, 0x0

    goto :goto_5

    :cond_23
    if-eqz v5, :cond_24

    if-nez v21, :cond_24

    const v27, 0x7f0b10a2

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    const v27, 0x7f0b109c

    :goto_6
    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    return-object v27

    :cond_25
    const v27, 0x7f0b109d

    goto :goto_6

    :cond_26
    const/16 v27, 0x0

    return-object v27
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setNextEnabled()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsValidEntry:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->handleNext()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f110428
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/high16 v11, 0x70000

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const v8, 0x7f0b07a2

    invoke-virtual {p0, v8, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v5, "lockscreen.password_type"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v5, 0x7f040152

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->setContentView(I)V

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "true"

    aput-object v5, v4, v7

    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy1"

    const-string/jumbo v8, "getRequiredPwdPatternRestrictions"

    invoke-static {p0, v5, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    :cond_0
    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isChangeRequested"

    const/4 v9, 0x0

    invoke-static {p0, v5, v8, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    const/high16 v8, 0x20000

    if-lt v5, v8, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v8, "isFromKnoxIris"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    iput-boolean v7, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCheckSimplePassword:Z

    const-string/jumbo v5, "lockscreen.password_type"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const-string/jumbo v5, "lockscreen.password_min"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    const-string/jumbo v5, "lockscreen.password_max"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    const-string/jumbo v5, "lockscreen.password_min_letters"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLetters:I

    const-string/jumbo v5, "lockscreen.password_min_uppercase"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinUpperCase:I

    const-string/jumbo v5, "lockscreen.password_min_lowercase"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLowerCase:I

    const-string/jumbo v5, "lockscreen.password_min_numeric"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNumeric:I

    const-string/jumbo v5, "lockscreen.password_min_symbols"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinSymbols:I

    const-string/jumbo v5, "lockscreen.password_min_nonletter"

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    invoke-virtual {v2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinNonLetter:I

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x40000

    if-eq v8, v5, :cond_2

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x50000

    if-ne v8, v5, :cond_4

    :cond_2
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsAlphaMode:Z

    const-string/jumbo v5, "lockscreen.password_old"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mOldPassword:Ljava/lang/String;

    const/4 v0, 0x4

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-lt v5, v10, :cond_8

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-ge v5, v8, :cond_8

    :cond_3
    :goto_1
    const v5, 0x7f1101a5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    sget-boolean v5, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mIsFromKnoxIris:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f0b0771

    invoke-virtual {p0, v8, v6}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const v5, 0x7f11042b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextText:Landroid/widget/TextView;

    const-string/jumbo v6, "#47252525"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f1101a6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v5, 0x7f110427

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$3;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordConfirm:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$4;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$4;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;-><init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v5, 0x7f110428

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mCancelButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f11042a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mNextButton:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    const/high16 v8, 0x60000

    if-eq v8, v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->hasPwdPatternRestriction:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-ne v11, v5, :cond_2

    :cond_5
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPwdChangeEnforceStatus:I

    if-lez v5, :cond_7

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mRequestedQuality:I

    if-eq v11, v5, :cond_6

    move v5, v6

    goto/16 :goto_0

    :cond_6
    move v5, v7

    goto/16 :goto_0

    :cond_7
    move v5, v7

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    if-ge v5, v10, :cond_9

    iput v10, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1

    :cond_9
    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    if-le v5, v8, :cond_3

    iget v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMaxLength:I

    iput v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mHeading:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const v8, 0x7f0b067c

    invoke-virtual {p0, v8, v6}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
