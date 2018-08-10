.class public Lcom/samsung/android/settings/notification/VolumeLimiterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;,
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;,
        Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

.field private mUsePassword:Landroid/support/v14/preference/SwitchPreference;

.field private offMstarState:Z

.field private offShowPW:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offShowPW:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offShowPW:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateUi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    sget-object v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    return-void
.end method

.method private setNextEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setNextText(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method private setVolumeLimiter(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_limiter_value"

    const/16 v3, 0x9

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    return-void
.end method

.method private updateUi()V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v6, v7, :cond_3

    if-ge v1, v8, :cond_1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const v6, 0x7f121067

    invoke-virtual {p0, v6, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v4, v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->buttonText:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextText(I)V

    return-void

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ge v4, v6, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f121068

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iget v7, v7, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    if-lez v1, :cond_4

    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setNextEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f121067

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-lt v0, v1, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    iget v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f121066

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1014

    return v0
.end method

.method public handleNext()V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    :goto_0
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v6, "input_method"

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v4, v6, :cond_6

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    if-ne v4, v5, :cond_4

    :cond_3
    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showError(Ljava/lang/String;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    :cond_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    sget-object v6, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volumelimit_secure_password"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volumelimit_set_password"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_8
    sget-object v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "volumelimit_on"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "volumelimit_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    if-eqz p1, :cond_0

    const-string/jumbo v2, "notificationDialogShown"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volumelimit_set_password"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->showSetPasswordDialog()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "audio"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mAudioManager:Landroid/media/AudioManager;

    const v1, 0x7f150131

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "maximum_volume"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    new-instance v0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setCallback(Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;)V

    const-string/jumbo v1, "use_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$2;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "volumelimit_on"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volumelimit_set_password"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->releaseMediaPlayer()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "volumelimit_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUsePassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "volumelimit_set_password"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->prepareMediaPlayer()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "notificationDialogShown"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->onActivityStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b04e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "volumelimit_set_password"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->offMstarState:Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mMaximumVolume:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->setVolumeLimiter(Z)V

    return-void
.end method

.method public showSetPasswordDialog()V
    .locals 8

    const/4 v6, 0x0

    const v5, 0x7f0800d1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0070

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0152

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$3;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a05a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$4;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const v3, 0x7f0a061f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$5;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$6;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordMaxLength:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v3, 0x7f0a03b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    sget-object v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;->Introduction:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121026

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$7;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected updateStage(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/VolumeLimiterSettings$Stage;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->updateUi()V

    return-void
.end method
