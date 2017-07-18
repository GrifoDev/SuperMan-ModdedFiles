.class public abstract Lcom/android/settings/location/LocationSettingsBase;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LocationSettingsBase.java"


# instance fields
.field private mActive:Z

.field private mCurrentMode:I

.field protected mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/location/LocationSettingsBase;->setVzwProviderAndMode(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    return-void
.end method

.method private setVzwProviderAndMode(Landroid/content/Context;ZI)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vzw_lbs"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isRestricted(Landroid/content/Context;)Z
    .locals 20

    const-string/jumbo v17, "user"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/UserManager;

    const-string/jumbo v17, "no_share_location"

    invoke-virtual/range {v16 .. v17}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    const-string/jumbo v17, "gps"

    const/16 v18, 0x0

    aput-object v17, v13, v18

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const-string/jumbo v17, "network"

    const/16 v18, 0x0

    aput-object v17, v14, v18

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v17, "false"

    const/16 v18, 0x0

    aput-object v17, v12, v18

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v15, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v17, v15, v18

    const-string/jumbo v17, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v18, "isSettingsChangesAllowed"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v18, "isLocationProviderBlocked"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v13}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v18, "isLocationProviderBlocked"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v14}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v17, "content://com.sec.knox.provider/LocationPolicy"

    const-string/jumbo v18, "isGPSStateChangeAllowed"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v15}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string/jumbo v18, "gps"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isSettingsChangesAllowed = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isLocationProviderBlockedGPS = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isLocationProviderBlockedNetwork = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isLocationGPSStateChangeAllowed = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_1

    if-nez v5, :cond_2

    if-nez v6, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    const/4 v4, 0x1

    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_0

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_0

    if-eqz v3, :cond_4

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_4

    :goto_2
    const/4 v11, 0x1

    :cond_0
    const-string/jumbo v17, "LocationSettingsBase"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isRestricted()   mdmRestricted= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " UserRestricted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v9, :cond_5

    :goto_3
    return v11

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    if-nez v10, :cond_0

    goto :goto_2

    :cond_5
    const/4 v11, 0x1

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "enterprise_policy_new"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getLocationPolicy()Lcom/samsung/android/knox/location/LocationPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mLocationPolicy:Lcom/samsung/android/knox/location/LocationPolicy;

    :cond_0
    new-instance v1, Lcom/android/settings/location/LocationSettingsBase$1;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationSettingsBase$1;-><init>(Lcom/android/settings/location/LocationSettingsBase;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public abstract onModeChanged(IZ)V
.end method

.method public onPause()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public refreshLocationMode(Landroid/content/Context;)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Location mode has been changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    :cond_2
    return-void
.end method

.method public setLocationMode(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "LocationSettingsBase"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "LocationSettingsBase"

    const-string/jumbo v2, "Restricted user, not setting location mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettingsBase;->mActive:Z

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/settings/location/LocationSettingsBase;->onModeChanged(IZ)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/settings/location/LocationSettingsBase;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "NEW_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->updateVerizonProvider(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode(Landroid/content/Context;)V

    return-void
.end method

.method public showVzwLocationConsentDialog(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0431

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettingsBase$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$2;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0432

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/location/LocationSettingsBase$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$3;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/location/LocationSettingsBase$4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/location/LocationSettingsBase$4;-><init>(Lcom/android/settings/location/LocationSettingsBase;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b07eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateVerizonProvider(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->isRestricted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "LocationSettingsBase"

    const-string/jumbo v3, "updateVerizonProvider Restricted user, not setting location mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gps"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportHuxGpsEnableVzwLbsStack"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vzw_lbs"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.nim.vznavigator.app2app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "context"

    if-eqz v0, :cond_3

    const-string/jumbo v2, "vznavigator:app2app?version=2.0&credential=0211&commands=A"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "vznavigator:app2app?version=2.0&credential=0211&commands=D"

    goto :goto_0
.end method
