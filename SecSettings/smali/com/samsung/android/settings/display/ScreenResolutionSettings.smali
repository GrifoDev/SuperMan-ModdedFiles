.class public Lcom/samsung/android/settings/display/ScreenResolutionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenResolutionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;
    }
.end annotation


# static fields
.field private static sScreenResolutionCancel:I

.field private static sScreenResolutionDone:I


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenChangeState:Z

.field private mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionCancel:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionDone:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/ScreenResolutionSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionCancel:I

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->sScreenResolutionDone:I

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenChangeState:Z

    new-instance v0, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d10

    return v0
.end method

.method initswitchBtn()V
    .locals 13

    const/4 v12, 0x0

    const v11, 0x7f080782

    const/4 v10, 0x0

    const-string/jumbo v8, "ScreenResolutionSettings"

    const-string/jumbo v9, "PSM initswitchBtn"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v8, 0x7f0d00a7

    invoke-virtual {v4, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8, v1, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v8}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    invoke-virtual {v7, v10, v10}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0a01e3

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v8, 0x7f080130

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    const v8, 0x7f0a0520

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    const v8, 0x7f0a0521

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    new-instance v9, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    const v9, 0x7f1205f5

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    new-instance v9, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings$3;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionSettings;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "show_button_background"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1500cd

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "selected_value"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const-string/jumbo v1, "WQHD,FHD,HD"

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setProgress(I)V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1
    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->initswitchBtn()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ScreenResolution"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mSaveButton:Landroid/widget/Button;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "ScreenResolution"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "selected_value"

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionSettings;->mScreenSeekBar:Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenResolutionSeekBarPreference;->getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
