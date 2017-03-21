.class public Lcom/android/settings/SimPinLockSettings;
.super Lcom/android/settings/InstrumentedActivity;
.source "SimPinLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPinLockSettings$1;,
        Lcom/android/settings/SimPinLockSettings$2;,
        Lcom/android/settings/SimPinLockSettings$LockState;,
        Lcom/android/settings/SimPinLockSettings$TouchInput;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-SimPinLockSettings$LockStateSwitchesValues:[I

.field private static mEnableCancelBackConcept:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBackSpaceButton:Landroid/view/View;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCurrentInputLockNumber:Ljava/lang/String;

.field private mEnteredDigits:I

.field private mExceptionIsNull:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

.field private mNewPin:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mOldPin:Ljava/lang/String;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z

.field private num_of_retry:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/SimPinLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    return v0
.end method

.method private static synthetic -getcom-android-settings-SimPinLockSettings$LockStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/SimPinLockSettings;->-com-android-settings-SimPinLockSettings$LockStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/SimPinLockSettings;->-com-android-settings-SimPinLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/SimPinLockSettings$LockState;->values()[Lcom/android/settings/SimPinLockSettings$LockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/settings/SimPinLockSettings;->-com-android-settings-SimPinLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/settings/SimPinLockSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/SimPinLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->iccLockChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SimPinLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->iccPinChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SimPinLockSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPinLockSettings;->reportDigit(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mExceptionIsNull:Z

    new-instance v0, Lcom/android/settings/SimPinLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPinLockSettings$1;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SimPinLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPinLockSettings$2;-><init>(Lcom/android/settings/SimPinLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private deleteDigit()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget v2, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    :cond_0
    return-void
.end method

.method private iccLockChanged(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b07f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b07f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b07f5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0e89

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0e8a

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b1246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b07ee

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2
.end method

.method private iccPinChanged(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, ""

    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getLockPinKey()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b07f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b07f5

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0e89

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0e8a

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b1244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b07ee

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0b1245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    goto/16 :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SimPinLockSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reportDigit(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    return-void
.end method

.method private tryChangePin()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/settings/SimPinLockSettings;->-getcom-android-settings-SimPinLockSettings$LockStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "Exception: unexpected state"

    invoke-direct {p0, v0}, Lcom/android/settings/SimPinLockSettings;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b123e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b123f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    iget-boolean v0, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b07fc

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b123b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b07fd

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b123c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;->getPinRetry()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/SimPinLockSettings;->num_of_retry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0b07f9

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/SimPinLockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b123d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_5

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->onClickConfirm()V

    goto :goto_0

    :cond_2
    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    const/16 v4, 0x10

    if-gt v3, v4, :cond_4

    add-int/lit8 v4, v3, -0x7

    invoke-direct {p0, v4}, Lcom/android/settings/SimPinLockSettings;->reportDigit(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_5
    if-nez v0, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-boolean v4, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    if-eqz v4, :cond_a

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    const/4 v2, 0x1

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget v4, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-lez v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_a
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->deleteDigit()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->onClickConfirm()V

    return-void
.end method

.method public onClickConfirm()V
    .locals 6

    const v5, 0x7f0b07f7

    const v3, 0x7f0b07ed

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b07f6

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0b07ec

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    :cond_2
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void

    :cond_4
    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/settings/SimPinLockSettings;->-getcom-android-settings-SimPinLockSettings$LockStateSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {v2}, Lcom/android/settings/SimPinLockSettings$LockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "Exception: unexpected click"

    invoke-direct {p0, v1}, Lcom/android/settings/SimPinLockSettings;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected click event"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SimPinLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->tryChangePin()V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0b07f8

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_4
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_3

    :cond_7
    const v1, 0x7f0b1242

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mOldPin:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/SimPinLockSettings;->mCurrentInputLockNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SimPinLockSettings;->mToState:Z

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/android/settings/SimPinLockSettings;->mEnableCancelBackConcept:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->setupViews()V

    new-instance v1, Lcom/android/settings/SimPinLockSettings$TouchInput;

    invoke-direct {v1, p0, v4}, Lcom/android/settings/SimPinLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPinLockSettings;Lcom/android/settings/SimPinLockSettings$TouchInput;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "checkbox"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0b1236

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->updateViews()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0b1239

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    sget-object v1, Lcom/android/settings/SimPinLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPinLockSettings;->updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SimPinLockSettings;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPinLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SimPinLockSettings;->mEnteredDigits:I

    return-void
.end method

.method protected setupViews()V
    .locals 1

    const v0, 0x7f040293

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->setContentView(I)V

    const v0, 0x7f1101a5

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v0, 0x7f1102c1

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mPasswordText:Landroid/widget/TextView;

    const v0, 0x7f1102c2

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f1102ce

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f11019b

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPinLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mCancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/SimPinLockSettings;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateStage(Lcom/android/settings/SimPinLockSettings$LockState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SimPinLockSettings;->mLockState:Lcom/android/settings/SimPinLockSettings$LockState;

    invoke-direct {p0}, Lcom/android/settings/SimPinLockSettings;->updateViews()V

    return-void
.end method
