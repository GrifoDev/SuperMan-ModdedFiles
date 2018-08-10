.class public Lcom/android/settings/SimPersoLockSettings;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "SimPersoLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SimPersoLockSettings$1;,
        Lcom/android/settings/SimPersoLockSettings$2;,
        Lcom/android/settings/SimPersoLockSettings$3;,
        Lcom/android/settings/SimPersoLockSettings$LockState;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-SimPersoLockSettings$LockStateSwitchesValues:[I

.field private static final MAX_PASSWD:I

.field private static mNum_Retry:I


# instance fields
.field private final MSG_SHOW_SOFTINPUT:I

.field private mCancelButton:Landroid/widget/Button;

.field protected mH:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

.field private mNewPasswd:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;

.field private mOldPasswd:Ljava/lang/String;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field private mRes:Landroid/content/res/Resources;

.field private mToState:Z


# direct methods
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

.method static synthetic -wrap0(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->showSoftInput()V

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
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigUsimPersonalLockPwdLength"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$1;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SimPersoLockSettings;->MSG_SHOW_SOFTINPUT:I

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$2;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SimPersoLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SimPersoLockSettings$3;-><init>(Lcom/android/settings/SimPersoLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showSoftInput()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "[PPCLP] showSoftInput returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
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

    const v1, 0x7f121934

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

    const v1, 0x7f121936

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

    const v0, 0x7f120f43

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

    const v1, 0x7f120f3f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121928

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

    const v0, 0x7f120f43

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

    const v1, 0x7f120f3f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121928

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    sput v3, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f121933

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

    const v1, 0x7f120f40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12192c

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

    const v1, 0x7f120f41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12192d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121967

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12190e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f120f37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    sget v0, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121966

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f121906

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

    const v1, 0x7f120f42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f12192e

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
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11b0

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

    const v1, 0x7f12192b

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
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/SimPersoLockSettings;->mNum_Retry:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const v0, 0x7f120f43

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    return-void
.end method

.method public onClickConfirm()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const v4, 0x7f12192f

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    sget v4, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    if-le v1, v4, :cond_4

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    :cond_2
    const v4, 0x7f120f45

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_3
    const v4, 0x7f121937

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/SimPersoLockSettings;->-getcom-android-settings-SimPersoLockSettings$LockStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SimPersoLockSettings;->mLockState:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {v5}, Lcom/android/settings/SimPersoLockSettings$LockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v4, "SimPersoLockSettings"

    const-string/jumbo v5, "Exception: unexpected click"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unexpected click event"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_REENTER:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mNewPasswd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->tryChangeSimLockPasswd()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f120f44

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :goto_2
    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :cond_6
    const v4, 0x7f121932

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mOldPasswd:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_NEW:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v4}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-interface {v4, v5, v2, v0}, Lcom/android/internal/telephony/IccCard;->setIccSimPersoEnabled(ZLjava/lang/String;Landroid/os/Message;)V

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
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SimPersoLockSettings;->mToState:Z

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->setupViews()V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "checkbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Change USIM lock state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v1, 0x7f121935

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SimPersoLockSettings;->updateViews()V

    return-void

    :cond_1
    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Change USIM lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const v1, 0x7f121929

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_2
    sget-object v1, Lcom/android/settings/SimPersoLockSettings$LockState;->LOCK_CONFIRM_AND_CHANGE:Lcom/android/settings/SimPersoLockSettings$LockState;

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->updateStage(Lcom/android/settings/SimPersoLockSettings$LockState;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->onClickConfirm()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SimPersoLockSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/SimPersoLockSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected setupViews()V
    .locals 6

    const v5, 0x7f080418

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v1, 0x7f0d02db

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->setContentView(I)V

    const v1, 0x7f0a0152

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a05a1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/SimPersoLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "show_button_background"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    const v1, 0x7f0a061f

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v4, 0x2000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    const v1, 0x7f0a03b1

    invoke-virtual {p0, v1}, Lcom/android/settings/SimPersoLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/android/settings/SimPersoLockSettings;->MAX_PASSWD:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_1
    move v1, v3

    goto :goto_0
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
