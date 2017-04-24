.class public Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PenAirCmdSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private IntentUpdated:Z

.field private bUpdated:Z

.field private mActivity:Landroid/app/Activity;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

.field private mShortcutList:Ljava/lang/String;

.field private mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private appsCountSummaryUpdate()V
    .locals 25

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const-string/jumbo v20, ""

    const-string/jumbo v9, ", "

    const-string/jumbo v4, "ar"

    const-string/jumbo v5, "ja"

    const-string/jumbo v3, "zh"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v9, "\u060c "

    :cond_0
    :goto_0
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "UpdateSavedAirCmd mShortcutList :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v18, v0

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v14, v0, :cond_b

    aget-object v22, v19, v14

    const-string/jumbo v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v22, v0

    const-string/jumbo v23, "execute"

    invoke-virtual/range {v22 .. v23}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/SemExecutableManager;

    const-string/jumbo v22, "0"

    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    const/4 v7, 0x0

    new-instance v8, Landroid/content/ComponentName;

    const/16 v22, 0x1

    aget-object v22, v17, v22

    const/16 v23, 0x2

    aget-object v23, v17, v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v22, "A"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_1
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    :cond_2
    :goto_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v9, "\u3001"

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    const-string/jumbo v9, "\uff0c"

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string/jumbo v22, "S"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    goto :goto_2

    :cond_7
    const-string/jumbo v22, "P"

    const/16 v23, 0x3

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v22, "1"

    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    if-eqz v13, :cond_9

    const/16 v22, 0x4

    aget-object v22, v17, v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/samsung/android/app/SemExecutableManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v15

    if-eqz v15, :cond_3

    const/4 v6, 0x0

    const/16 v22, 0x1

    :try_start_2
    aget-object v22, v17, v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_2

    const/16 v22, 0x1

    aget-object v22, v17, v22

    invoke-virtual {v15}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mAppName :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v11

    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Fail to get application info : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string/jumbo v22, "PenAirCmdSettingsMenu"

    const-string/jumbo v23, "ExecuteManager is null"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    :cond_b
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bf1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v22, v0

    const v23, 0x7f0b0bf1

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_6
.end method

.method private getShortCutList()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.REQUEST_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "request"

    const-string/jumbo v3, "shortcut_list"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PenAirCmdSettingsMenu"

    const-string/jumbo v3, "Failed to get shortcut list, no activity found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateEnableState()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "air_button_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "PenAirCmdSettingsMenu"

    const-string/jumbo v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "shortcut_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string/jumbo v0, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "key_air_cmd_detachment_option"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.app.spenhub"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "about_spen_features"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "about_spen_features_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "spen_contact_us"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "spen_contact_us_category"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "key_air_cmd_use_minimized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_use_minimized"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_1
    const-string/jumbo v4, "key_air_cmd_detachment_option"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_detachment_option"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_3
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100178

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3e8

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "spen_contact_us"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "about_spen_features"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.app.spenhub"

    const-string/jumbo v4, "com.samsung.android.app.spenhub.ui.SpenhubActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v1, "PenAirCmdSettingsMenu"

    const-string/jumbo v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "air_cmd_apps_and_functions"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "aircommand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getShortCutList()V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "air_cmd_use_minimized"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "air_cmd_detachment_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "air_button_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "shortcut_list"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->IntentUpdated:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->bUpdated:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method
