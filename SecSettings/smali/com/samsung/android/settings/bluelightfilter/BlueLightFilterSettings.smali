.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;,
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sBlueLightFilterCustomEndTime:I

.field private static sBlueLightFilterCustomStartTime:I

.field private static sBlueLightFilterSchedule:I

.field private static sBlueLightFilterTurnOnAsSchedule:I

.field private static sBlueLightFilterTurnOnNow:I


# instance fields
.field private mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mBlueLightFilterDesc:Landroid/support/v7/preference/Preference;

.field private mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

.field private mBlueLightFilterTimeType:I

.field private mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

.field private mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLocationOn:Z

.field private mRunnableForUpdatePreference:Ljava/lang/Runnable;

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

.field private mUpdatePreferenceHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatusWithDelay(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private showLocationOnDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1203c6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v3, 0x7f120892

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v3, 0x7f12089e

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updatePreferenceStatus()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_type"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_scheduled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private updatePreferenceStatusWithDelay(I)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$5;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mUpdatePreferenceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mRunnableForUpdatePreference:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateScheduledStatus()V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_type"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "location_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x107e

    return v0
.end method

.method public getStringFromMills(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x5a0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    long-to-int v2, p1

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, p1

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v8, 0x7f150031

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v8, "blue_light_filter_turn_on_now"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v8, "blue_light_filter_seekbar"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "blue_light_filter_opacity"

    const/4 v11, 0x5

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    const-string/jumbo v8, "blue_light_filter_desc"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterDesc:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_type"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_scheduled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v8, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v8, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    const-string/jumbo v8, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "blue_light_filter_on_time"

    const-wide/16 v12, 0x474

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_on_time"

    const-wide/16 v10, 0x474

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v8, v6, v4

    if-ltz v8, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f1203ca

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez v2, :cond_0

    const-string/jumbo v8, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    new-instance v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    packed-switch p1, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_on_time"

    const-wide/16 v4, 0x474

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x5a0

    cmp-long v2, v8, v2

    if-gez v2, :cond_0

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    :goto_0
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_off_time"

    const-wide/16 v4, 0x1a4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x5a0

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    :goto_1
    new-instance v1, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v1}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v1

    :cond_1
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BlueLightFilter"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "blue_light_filter"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f1203cc

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b00f5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterTurnOnNow:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v5, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterTurnOnNow:I

    if-eqz v1, :cond_1

    move v4, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_type"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "location_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-ne v0, v6, :cond_6

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b00f4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterTurnOnAsSchedule:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v5, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterTurnOnAsSchedule:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v4, v3

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00f2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterSchedule:I

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showLocationOnDialog()V

    :goto_1
    const/4 v0, 0x1

    :cond_0
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V

    const/16 v1, 0x12c

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatusWithDelay(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterSchedule:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x2

    goto :goto_2
.end method

.method public onResume()V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_opacity"

    const/4 v8, 0x5

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_type"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_scheduled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v0, v9, :cond_8

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v0, v5, :cond_9

    :goto_3
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "BlueLightFilter"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    move v4, v6

    goto :goto_2

    :cond_9
    move v5, v6

    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    const-string/jumbo v1, "BlueLightFilterSettings"

    const-string/jumbo v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    const-string/jumbo v1, "BlueLightFilterSettings"

    const-string/jumbo v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 12

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    mul-int/lit8 v8, p2, 0x3c

    add-int/2addr v8, p3

    int-to-long v6, v8

    iget v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_on_time"

    invoke-static {v8, v9, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterCustomStartTime:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterCustomStartTime:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_on_time"

    const-wide/16 v10, 0x474

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v8, v4, v2

    if-ltz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f1203ca

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v8, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_off_time"

    invoke-static {v8, v9, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    sput v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterCustomEndTime:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterCustomEndTime:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method
