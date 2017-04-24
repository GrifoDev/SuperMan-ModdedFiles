.class public Lcom/android/settings/SimPersoLockSettings;
.super Lcom/android/settings/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPersoLockSettings$1;,
        Lcom/android/settings/SimPersoLockSettings$2;,
        Lcom/android/settings/SimPersoLockSettings$LockState;,
        Lcom/android/settings/SimPersoLockSettings$TouchInput;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

.field private static final MAX_PASSWD:I

.field private static mEnableCancelBackConcept:Z

.field private static mNum_Retry:I


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private mEnteredDigits:I

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return v0
.end method

.method private static synthetic -getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings$LockState;->values()[Lcom/android/settings/SimPersoLockSettings$LockState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/settings/SimPersoLockSettings;->-com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

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

.method static synthetic -wrap0(Lcom/android/settings/SimPersoLockSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/SimPersoLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SimPersoLockSettings;->simLockPasswdChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    sput-boolean v3, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$1;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$2;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private deleteDigit()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    :cond_0
    return-void
.end method

.method private reportDigit(I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    sget v1, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    return-void
.end method

.method private simLockChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const v0, 0x7f0b0812

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0810

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private simLockPasswdChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simLockPasswdChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const v0, 0x7f0b0812

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0810

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b07f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_1
.end method

.method private tryChangeSimLockPasswd()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private updateViews()V
    .locals 3

    const/16 v2, 0x8

    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SimPersoLockSettings"

    const-string/jumbo v1, "Exception: unexpected state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b080a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b080b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b080e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0813

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b080f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0814

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_9

    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b0811

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0b07f5

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

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0

    :cond_2
    const/16 v4, 0x43

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x7

    if-lt v3, v4, :cond_4

    const/16 v4, 0x10

    if-gt v3, v4, :cond_4

    add-int/lit8 v4, v3, -0x7

    invoke-direct {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->reportDigit(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    return v4

    :cond_5
    if-nez v0, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-boolean v4, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

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

    iget v4, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-lez v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

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

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected getProgressDialog()Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b07f7

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const v0, 0x7f0b0812

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->deleteDigit()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    goto :goto_0
.end method

.method public onClickConfirm()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    if-nez v2, :cond_0

    const v2, 0x7f0b07ed

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    sget v3, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v2, v3, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :cond_2
    const v2, 0x7f0b080c

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    const v2, 0x7f0b07ee

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v3}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Exception: unexpected click"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unexpected click event"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_1
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f0b080d

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_2
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :cond_6
    const v2, 0x7f0b07ef

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-interface {v2, v3, v1, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "novel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/android/settings/SimPersoLockSettings;->mEnableCancelBackConcept:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->setupViews()V

    new-instance v2, Lcom/android/settings/SimPersoLockSettings$TouchInput;

    invoke-direct {v2, p0, v5}, Lcom/android/settings/SimPersoLockSettings$TouchInput;-><init>(Lcom/android/settings/SimPersoLockSettings;Lcom/android/settings/SimPersoLockSettings$TouchInput;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "checkbox"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Change USIM lock state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const v2, 0x7f0b029c

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "SimPersoLockSettings"

    const-string/jumbo v3, "Change USIM lock password"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    const v2, 0x7f0b029f

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_4
    sget-object v2, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v2}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

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
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

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

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

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

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/SimPersoLockSettings;->mEnteredDigits:I

    return-void
.end method

.method protected setupViews()V
    .locals 2

    const v1, 0x7f040294

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->setContentView(I)V

    const v1, 0x7f1101a5

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f1102c1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordText:Landroid/widget/TextView;

    const v1, 0x7f1102c2

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1102ce

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f11019b

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    const-string/jumbo v0, "SimPersoLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    return-void
.end method
