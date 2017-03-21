.class public Lcom/samsung/android/settings/location/LocationSettingsEnabler;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettingsEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mContext:Landroid/content/Context;

.field private final mLocationModeObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationSettingsEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mActive:Z

    new-instance v0, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$1;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iput-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    return-void
.end method

.method private updatePrefSummary(I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1358

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1357

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07c9

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07c8

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07ca

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1356

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07c6

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07c5

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b07c7

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b1355

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onLocationOptionChange(Ljava/lang/Object;Z)Z
    .locals 13

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "gps"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v11, "isGPSStateChangeAllowed"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_1

    const/4 v9, 0x1

    return v9

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f100216

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz p2, :cond_3

    const/16 v9, 0x3e8

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->showVzwLocationConsentDialog(Landroid/content/Context;)V

    :goto_2
    const/4 v9, 0x1

    return v9

    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v9, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0426

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$2;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0427

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$3;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "wifi_call_enable"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/settings/VoWiFiCallingDBManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "RWC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "FMC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_3
    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    if-eqz v6, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b07cc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0b07cd

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$4;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;)V

    const v10, 0x7f0b1413

    invoke-virtual {v2, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;

    invoke-direct {v9, p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler$5;-><init>(Lcom/samsung/android/settings/location/LocationSettingsEnabler;Ljava/lang/Object;)V

    const v10, 0x7f0b1414

    invoke-virtual {v2, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    :cond_8
    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->setLocationMode(Landroid/content/Context;I)V

    goto/16 :goto_2
.end method

.method public onModeChanged(IZ)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v2

    if-eq v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz p2, :cond_6

    :goto_1
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    const-string/jumbo v1, "LocationSettingsEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onModeChanged : mSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "gps"

    invoke-static {v3, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v7, "isGPSStateChangeAllowed"

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return v5

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    return v4
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onLocationOptionChange(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mLocationModeObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v5, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mValidListener:Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->updatePrefSummary(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->refreshLocationMode(Landroid/content/Context;)V

    return-void
.end method
