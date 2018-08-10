.class public Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;,
        Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field private static final PEN_NOTIFICATION_OFF:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private ContactUs_appId:Ljava/lang/String;

.field private ContactUs_appName:Ljava/lang/String;

.field private ContactUs_packageName:Ljava/lang/String;

.field private IntentUpdated:Z

.field private bUpdated:Z

.field private isMemoSupported:Z

.field private mAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mAirCommandEnable:Z

.field private mAirCommandPref:Landroid/support/v7/preference/SecPreference;

.field private mAirViewObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDirectPenObserver:Landroid/database/ContentObserver;

.field private mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mInboxSPen:Z

.field private mLearnAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPenDetachObserver:Landroid/database/ContentObserver;

.field private mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

.field private mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mShortcutList:Ljava/lang/String;

.field private mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mInboxSPen:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    const-string/jumbo v0, "com.sec.android.app.SmartClipService"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    const-string/jumbo v0, "Spen"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    const-string/jumbo v0, "304612tl4e"

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$1;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$2;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private appsCountSummaryUpdate()V
    .locals 22

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string/jumbo v16, ""

    const v19, 0x7f121aca

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v18, " "

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "UpdateSavedAirCmd mShortcutList :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v14, v15

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_8

    aget-object v19, v15, v10

    const-string/jumbo v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "execute"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/SemExecutableManager;

    const-string/jumbo v19, "0"

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v4, 0x0

    new-instance v5, Landroid/content/ComponentName;

    const/16 v19, 0x1

    aget-object v19, v13, v19

    const/16 v20, 0x2

    aget-object v20, v13, v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v19, "A"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_2
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v19, "S"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string/jumbo v19, "P"

    const/16 v20, 0x3

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const-string/jumbo v19, "1"

    const/16 v20, 0x0

    aget-object v20, v13, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    if-eqz v9, :cond_6

    const/16 v19, 0x4

    aget-object v19, v13, v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/SemExecutableManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v3, 0x0

    const/16 v19, 0x1

    :try_start_2
    aget-object v19, v13, v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_1

    const/16 v19, 0x1

    aget-object v19, v13, v19

    invoke-virtual {v11}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "mAppName :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v7

    const-string/jumbo v19, "SPenSettingsMenu"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Fail to get application info : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string/jumbo v19, "SPenSettingsMenu"

    const-string/jumbo v20, "ExecuteManager is null"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3

    :cond_8
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    const v20, 0x7f120227

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v19, v0

    const v20, 0x7f120227

    invoke-virtual/range {v19 .. v20}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_5
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
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

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SPenSettingsMenu"

    const-string/jumbo v3, "Failed to get shortcut list, no activity found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isEDMkBlockAirCommand(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v3, "isAirCommandModeAllowed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v2, "SPenSettingsMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EDMkBlock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKnoxContanerEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KnoxContaner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isKnoxCustomBlockAirCommand(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v1, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    const-string/jumbo v2, "getAirGestureOptionState"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "knoxCustomBlock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNotesEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string/jumbo v0, "com.samsung.android.app.notes"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setAirviewDB(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_icon_label"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_list_scroll"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_hovering_link_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAirViewTalkBackDisableDialog()V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f120b11

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120821

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120823

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120080

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120065

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d001e

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v7, 0x7f0a0259

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a025a

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f120b10

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f121c15

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$6;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$7;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showDirectPenInputTalkBackDisableDialog()V
    .locals 10

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f12141f

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v5, ""

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.samsung.android.app.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120821

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120823

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120080

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f120065

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1030132

    invoke-direct {v0, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v0, v7}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v7, 0x7f0d001e

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v7, 0x7f0a0259

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0a025a

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f121425

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$8;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const v9, 0x7f121c15

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$9;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    const/high16 v9, 0x1040000

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;-><init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateEnableState()V
    .locals 14

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isKnoxCustomBlockAirCommand(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isKnoxContanerEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isEDMkBlockAirCommand(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandEnable:Z

    :goto_0
    const-string/jumbo v10, "SPenSettingsMenu"

    const-string/jumbo v11, "updateEnableState() "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_8

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :cond_1
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x3

    new-array v1, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x3

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandEnable:Z

    if-eqz v10, :cond_3

    const v10, 0x7f121417

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const-string/jumbo v10, "2"

    const/4 v11, 0x0

    aput-object v10, v3, v11

    const/4 v2, 0x1

    :cond_3
    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-eqz v10, :cond_a

    const v10, 0x7f121418

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v1, v11

    const-string/jumbo v10, "3"

    const/4 v11, 0x1

    aput-object v10, v3, v11

    add-int/lit8 v2, v2, 0x1

    :cond_4
    :goto_3
    const v10, 0x7f121413

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    const-string/jumbo v10, "0"

    const/4 v11, 0x2

    aput-object v10, v3, v11

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [Ljava/lang/CharSequence;

    new-array v7, v2, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_4
    array-length v10, v1

    if-ge v4, v10, :cond_c

    aget-object v10, v1, v4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    aget-object v10, v1, v4

    aput-object v10, v6, v0

    aget-object v10, v3, v4

    aput-object v10, v7, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandEnable:Z

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    iget-boolean v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandEnable:Z

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-boolean v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandEnable:Z

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "air_cmd_use_minimized"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_b

    const/4 v10, 0x3

    if-ne v8, v10, :cond_4

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_c
    const-string/jumbo v10, "SPenSettingsMenu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "entries.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10, v6}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10, v7}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method private updateState()V
    .locals 10

    const-wide/16 v8, 0x0

    const-string/jumbo v6, "SPenSettingsMenu"

    const-string/jumbo v7, "updateState() "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "pen_detached_time"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f1210ba

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    cmp-long v6, v0, v8

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \u200e "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f121a03

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v6, 0x7f1210b9

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x12de

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "shortcut_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "SPenSettingsMenu"

    const-string/jumbo v6, "onCreate() "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1500af

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirCommandPref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_spen_screen_on"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    const-string/jumbo v5, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v5, v8}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    const-string/jumbo v5, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v5, "about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v5, "learn_about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLearnAboutSpen:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.sec.android.app.SPenKeeper"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isNotesEnabled(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->isMemoSupported:Z

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string/jumbo v5, "spen_contact_us"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string/jumbo v5, "com.sec.feature.spen_usp"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v5, v0, 0xa

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    const-string/jumbo v5, "pen_detachment_category"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "pen_detachment_option_list"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "battery_saving"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f12141c

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f121731

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mUseMinimizedSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const v6, 0x7f12011e

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.app.spenhub"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string/jumbo v5, "about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.service.aircommand"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v5, "pen_air_cmd_settings_menu"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "com.samsung.android.service.aircommand"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getSPenUSPLevel(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_d

    :cond_c
    const-string/jumbo v5, "learn_about_spen_features"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->removePreference(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "SPenSettingsMenu"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    const v9, 0x7f121b3d

    const/16 v5, 0x3e8

    const v8, 0x7f121b3e

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "key_writing_buddy"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b04a2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v4, :cond_2

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz v4, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_4

    const/4 v2, 0x1

    :cond_0
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_5

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showDirectPenInputTalkBackDisableDialog()V

    return v7

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    if-eqz v4, :cond_7

    move v5, v7

    :goto_3
    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v8

    :goto_4
    invoke-virtual {v9, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_writing_buddy"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v7

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_6
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "direct pen input : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_writing_buddy"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    const v5, 0x7f121422

    goto :goto_4

    :cond_9
    move v5, v6

    goto :goto_5

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_b

    :goto_7
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_6

    :cond_b
    move v8, v9

    goto :goto_7

    :cond_c
    const-string/jumbo v10, "pen_air_view"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b049e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v4, :cond_f

    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v10, v11, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    if-eqz v4, :cond_13

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v10, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_10

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_11

    const/4 v2, 0x1

    :cond_d
    :goto_a
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_12

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V

    return v7

    :cond_f
    move v5, v6

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    goto :goto_9

    :cond_11
    const/4 v2, 0x0

    goto :goto_a

    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v10, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_e

    if-nez v0, :cond_e

    if-nez v2, :cond_e

    :cond_13
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setAirviewDB(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_14

    :goto_b
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "pen_hovering"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_15

    move v5, v7

    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_d
    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "air view : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_14
    const v8, 0x7f12140f

    goto :goto_b

    :cond_15
    move v5, v6

    goto :goto_c

    :cond_16
    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    invoke-static {v10, v11, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_17

    :goto_e
    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_d

    :cond_17
    move v8, v9

    goto :goto_e

    :cond_18
    const-string/jumbo v8, "battery_saving"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detect_mode_disabled"

    if-eqz v4, :cond_19

    move v5, v7

    :goto_f
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_1a

    move v5, v7

    :goto_10
    invoke-static {v5}, Lcom/samsung/android/hardware/SemHardwareInterface;->setEPenSavingmode(I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "battery saving : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detect_mode_disabled"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_19
    move v5, v6

    goto :goto_f

    :cond_1a
    move v5, v6

    goto :goto_10

    :cond_1b
    const-string/jumbo v8, "key_spen_pointer_switch"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering_pointer"

    if-eqz v4, :cond_1c

    move v5, v7

    :goto_11
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pointer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_hovering_pointer"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1c
    move v5, v6

    goto :goto_11

    :cond_1d
    const-string/jumbo v8, "loss_prevention_alert"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_alert"

    if-eqz v4, :cond_1e

    move v5, v7

    :goto_12
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loss prevention alert : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "pen_detachment_alert"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1e
    move v5, v6

    goto :goto_12

    :cond_1f
    const-string/jumbo v8, "action_memo_on_off_screen"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "action_memo_on_off_screen"

    if-eqz v4, :cond_20

    move v5, v7

    :goto_13
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off memo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "action_memo_on_off_screen"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_20
    move v5, v6

    goto :goto_13

    :cond_21
    const-string/jumbo v8, "screen_off_note"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_off_memo"

    if-eqz v4, :cond_22

    move v5, v7

    :goto_14
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Screen off note : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "screen_off_memo"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_22
    move v5, v6

    goto :goto_14

    :cond_23
    const-string/jumbo v8, "key_spen_screen_on"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_screen_on"

    if-eqz v4, :cond_24

    move v5, v7

    :goto_15
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SPen screen on : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_screen_on"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_24
    move v5, v6

    goto :goto_15

    :cond_25
    const-string/jumbo v8, "key_additional_feedback_pen_sound"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_sound"

    if-eqz v4, :cond_26

    move v5, v7

    :goto_16
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    if-eqz v4, :cond_27

    const-string/jumbo v5, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_17
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback sound : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_sound"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_26
    move v5, v6

    goto :goto_16

    :cond_27
    sget-object v5, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->PEN_NOTIFICATION_OFF:Ljava/lang/String;

    goto :goto_17

    :cond_28
    const-string/jumbo v8, "key_additional_feedback_pen_haptic"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "spen_feedback_haptic"

    if-eqz v4, :cond_29

    move v5, v7

    :goto_18
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_attach_detach_vibration"

    if-eqz v4, :cond_2a

    move v5, v7

    :goto_19
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "SPenSettingsMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pen additional feedback haptic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "spen_feedback_haptic"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_29
    move v5, v6

    goto :goto_18

    :cond_2a
    move v5, v6

    goto :goto_19

    :cond_2b
    const-string/jumbo v8, "pen_detachment_option_list"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_detachment_option"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b04a0

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v7

    :cond_2c
    const-string/jumbo v8, "key_air_cmd_use_minimized"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "air_cmd_use_minimized"

    if-eqz v4, :cond_2d

    move v8, v7

    :goto_1a
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b049b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-eqz v4, :cond_2e

    :goto_1b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v7

    :cond_2d
    move v8, v6

    goto :goto_1a

    :cond_2e
    move v5, v6

    goto :goto_1b

    :cond_2f
    return v7
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8

    const v7, 0x7f0b04a6

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "key_air_button"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "SEAC"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    const-string/jumbo v5, "battery_saving"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "key_spen_pointer_switch"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "loss_prevention_alert"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    const-string/jumbo v5, "action_memo_on_off_screen"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_4

    :cond_9
    const-string/jumbo v5, "screen_off_note"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    goto :goto_5

    :cond_b
    const-string/jumbo v5, "key_additional_feedback_pen_sound"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04a9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "key_additional_feedback_pen_haptic"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b04aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v7}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    move v3, v4

    goto :goto_7

    :cond_f
    const-string/jumbo v3, "spen_contact_us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b049f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    const v3, 0x7f121429

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->ContactUs_appId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAppsAndFunctionsPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b049c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "about_spen_features"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0499

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.app.spenhub"

    const-string/jumbo v5, "com.samsung.android.app.spenhub.ui.SpenhubActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v3, "learn_about_spen_features"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.samsung.android.service.aircommand"

    const-string/jumbo v6, "com.samsung.android.service.aircommand.settings.SettingsTutorialActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :try_start_3
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 14

    const-string/jumbo v10, "SPenSettingsMenu"

    const-string/jumbo v11, "onResume() "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v10, "com.samsung.android.service.aircommand"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "pen_detachment_option_list"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setHighlightPreferenceKey(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->setPreferenceHighlighted(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->highlightPreferenceIfNeeded()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v6, 0x1

    :goto_0
    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "air_cmd_apps_and_functions"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "from"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "aircommand"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "shortcut_list"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mShortcutList:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->IntentUpdated:Z

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateEnableState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->updateState()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_c

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setEnabled(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v11}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setValueIndex(I)V

    :cond_5
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDisablePenDetectionSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_detect_mode_disabled"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_11

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenScreenOnPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "spen_screen_on"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_13

    const/4 v9, 0x1

    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_6
    :goto_6
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mLossPreventionAlertSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_detachment_alert"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    :goto_7
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackSoundSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "spen_feedback_sound"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenFeedbackHapticSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "spen_feedback_haptic"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    :goto_9
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v12, "isAirViewModeAllowed"

    invoke-static {v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_18

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :goto_a
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_hovering"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_b
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_hovering"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1a

    const v10, 0x7f121b3e

    :goto_c
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_hovering"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x1

    :goto_d
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_e
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v10

    if-eqz v10, :cond_21

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_20

    const v10, 0x7f121b3e

    :goto_10
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v10, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detached_time"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachObserver:Landroid/database/ContentObserver;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenObserver:Landroid/database/ContentObserver;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_hovering"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mAirViewObserver:Landroid/database/ContentObserver;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    iget-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    if-nez v10, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getShortCutList()V

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->bUpdated:Z

    goto/16 :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->appsCountSummaryUpdate()V

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_c
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mSpenPointerSwtichPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_hovering_pointer"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_12
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mActionMemoOnOffScreenSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "action_memo_on_off_screen"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    :goto_13
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mScreenoffNoteSwitchPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "screen_off_memo"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x1

    :goto_14
    invoke-virtual {v11, v10}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_detachment_option"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v3, 0x0

    :goto_15
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    array-length v10, v10

    if-ge v3, v10, :cond_5

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v7, v10, :cond_d

    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/samsung/android/settings/spen/SpenDropDownPreference;

    invoke-virtual {v10, v3}, Lcom/samsung/android/settings/spen/SpenDropDownPreference;->setValueIndex(I)V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_e
    const/4 v10, 0x0

    goto :goto_12

    :cond_f
    const/4 v10, 0x0

    goto :goto_13

    :cond_10
    const/4 v10, 0x0

    goto :goto_14

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_14
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_18
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_a

    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_1a
    const v10, 0x7f12140f

    goto/16 :goto_c

    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_1c
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mPenAirViewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "pen_hovering"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1d

    const v10, 0x7f121b3e

    :goto_16
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_e

    :cond_1d
    const v10, 0x7f121b3d

    goto :goto_16

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pen_writing_buddy"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v1, 0x1

    :goto_17
    iget-object v10, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v10, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto/16 :goto_f

    :cond_1f
    const/4 v1, 0x0

    goto :goto_17

    :cond_20
    const v10, 0x7f121422

    goto/16 :goto_10

    :cond_21
    iget-object v11, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->mDirectPenInputPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_22

    const v10, 0x7f121b3e

    :goto_18
    invoke-virtual {v11, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_11

    :cond_22
    const v10, 0x7f121b3d

    goto :goto_18
.end method
