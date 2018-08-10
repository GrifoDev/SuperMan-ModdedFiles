.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/UnrestrictedDataAccess$1;,
        Lcom/android/settings/datausage/UnrestrictedDataAccess$2;,
        Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;,
        Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
    }
.end annotation


# static fields
.field private static sMore:I

.field private static sMoreShowAll:I

.field private static sMoreShowAllowedAppsFirst:I


# instance fields
.field private final ALLOW_UNRESTRICTED_DATA_USAGE:I

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mHandler:Landroid/os/Handler;

.field private mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

.field private mRestrictOption:Landroid/view/Menu;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowSortSelected:Z

.field private mShowSystem:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mRestrictOption:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->searchUnrestrictedDatausageApps()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, 0x1bbe

    iput v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->ALLOW_UNRESTRICTED_DATA_USAGE:I

    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mOnGenericMotionListener:Lcom/android/settings/datausage/UnrestrictedDataAccess$GenericMotionListener;

    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$2;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private rebuild()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private searchUnrestrictedDatausageApps()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const-string/jumbo v18, "AllowUnrestrictedDataUsageOn"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/4 v9, 0x1

    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string/jumbo v4, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_8

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v6, 0x1

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_7
    if-eqz v6, :cond_b

    if-eqz v11, :cond_b

    const/4 v12, 0x1

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_13

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "|"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    if-nez v14, :cond_c

    new-instance v14, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v14, v0, v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v14, v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_3
    invoke-virtual {v14}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isChecked()Z

    move-result v18

    if-eqz v18, :cond_f

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AllowUnrestrictedDataUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_c
    invoke-virtual {v14}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    goto :goto_3

    :cond_d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "no"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AllowUnrestrictedDataUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_f
    if-eqz v9, :cond_11

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v18

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AlreadyOn"

    const-string/jumbo v20, "no"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AllowUnrestrictedDataUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v18

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AlreadyOff"

    const-string/jumbo v20, "yes"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AllowUnrestrictedDataUsage"

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_13
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120d0a

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1bbe

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const/16 v0, 0x30d

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void

    :cond_0
    const/16 v0, 0x30e

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setAnimationAllowed(Z)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v2, p0, v3}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-eqz p1, :cond_1

    const-string/jumbo v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_sorted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setHasOptionsMenu(Z)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12114e

    :goto_0
    const/16 v1, 0x2b

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x2c

    const v1, 0x7f121158

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mRestrictOption:Landroid/view/Menu;

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    :cond_0
    const v0, 0x7f121159

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMore:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMore:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12114e

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAll:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAll:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f121159

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_2

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v0, :cond_4

    const v0, 0x7f1219d9

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mExtraLoaded:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->rebuild()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAllowedAppsFirst:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/datausage/UnrestrictedDataAccess;->sMoreShowAllowedAppsFirst:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f121158

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AllowUnrestrictedDataUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    instance-of v4, p1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->logSpecialPermissionChange(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get0(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->-get1(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object v2

    iput-boolean v1, v2, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    :cond_1
    return v3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v2
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_8

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    if-ne v9, v10, :cond_1

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    if-nez v8, :cond_5

    new-instance v8, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, p0, v10, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v8, v3}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    iget-boolean v10, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v10, :cond_7

    invoke-virtual {v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    goto :goto_2

    :cond_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {v8, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    goto :goto_1

    :cond_8
    iget-boolean v10, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    if-eqz v10, :cond_a

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_9

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v10, v6}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v10, v6}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setOrder(I)V

    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AllowUnrestrictedDataUsage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "show_sorted"

    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSortSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setLoading(ZZ)V

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->setGoToTopEnabled(Z)V

    return-void
.end method

.method shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
