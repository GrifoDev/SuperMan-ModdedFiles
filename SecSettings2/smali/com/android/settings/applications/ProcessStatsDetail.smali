.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsDetail$1;,
        Lcom/android/settings/applications/ProcessStatsDetail$2;,
        Lcom/android/settings/applications/ProcessStatsDetail$3;,
        Lcom/android/settings/applications/ProcessStatsDetail$PkgService;
    }
.end annotation


# static fields
.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sServiceCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;"
        }
    .end annotation
.end field

.field static final sServicePkgCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcessStatsDetail$PkgService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mForceStop:Landroid/view/MenuItem;

.field private mMaxMemoryUsage:D

.field private mOnePercentTime:J

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProcGroup:Landroid/preference/PreferenceCategory;

.field private final mServiceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalScale:D

.field private mTotalTime:J

.field private mWeightToRam:D


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServiceCompare:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->sServicePkgCompare:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkForceStop()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget v7, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v5, 0x0

    :goto_1
    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    iget-object v7, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    const/4 v4, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v4, :cond_7

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private createDetails()V
    .locals 22

    const v17, 0x7f08001b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    return-void

    :cond_0
    const-string/jumbo v17, "processes"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->fillProcessesSection()V

    const-string/jumbo v17, "status_header"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/SecSummaryPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v20, v0

    cmpl-double v17, v18, v20

    if-lez v17, :cond_1

    const/4 v14, 0x1

    :goto_0
    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v20, v0

    mul-double v4, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    move-wide/from16 v18, v0

    div-double v18, v4, v18

    move-wide/from16 v0, v18

    double-to-float v6, v0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v11, v17, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0, v11}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    double-to-long v0, v4

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setAmount(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/SecSummaryPreference;->setUnits(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    long-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    const-string/jumbo v17, "frequency"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4090000000000000L    # 1024.0

    mul-double v12, v18, v20

    const-string/jumbo v17, "max_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v18

    double-to-long v0, v12

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    move-wide/from16 v18, v0

    goto/16 :goto_1
.end method

.method private doStopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    return-void
.end method

.method private fillProcessesSection()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v12, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    const-string/jumbo v13, "os"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    iput-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v12, v12, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    invoke-static {v12, v5}, Lcom/android/settings/applications/ProcessStatsDetail;->getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_2
    sget-object v12, Lcom/android/settings/applications/ProcessStatsDetail;->sEntryCompare:Ljava/util/Comparator;

    invoke-static {v4, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/ProcStatsEntry;

    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSelectable(Z)V

    iget-wide v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v12, v5, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    mul-double/2addr v12, v14

    double-to-long v12, v12

    iget-wide v14, v5, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-long v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    long-to-float v12, v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    long-to-float v13, v14

    div-float/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x7f0b1a40

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/settings/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    const/4 v13, 0x2

    if-ge v12, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ProcessStatsDetail;->mProcGroup:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method private static getProcessName(Ljava/lang/String;Lcom/android/settings/applications/ProcStatsEntry;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    return-object p0

    :cond_1
    iget-object v2, p1, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ProcessStatsDetail;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    return-object v0
.end method

.method private killProcesses()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b1586

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b1587

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/ProcessStatsDetail$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0b152e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b152f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private stopService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->showStopServiceDialog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ProcessStatsDetail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t find app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->doStopService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateRunningServices()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v7, 0x7fffffff

    invoke-virtual {v1, v7}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/CancellablePreference;

    invoke-virtual {v7, v9}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v7, :cond_2

    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v7, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v7, v4, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-nez v7, :cond_1

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/CancellablePreference;

    if-eqz v3, :cond_1

    new-instance v7, Lcom/android/settings/applications/ProcessStatsDetail$4;

    invoke-direct {v7, p0, v6}, Lcom/android/settings/applications/ProcessStatsDetail$4;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    invoke-virtual {v3, v7}, Lcom/android/settings/CancellablePreference;->setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/settings/CancellablePreference;->setCancellable(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "package_entry"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ProcStatsPackageEntry;->retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    const-string/jumbo v1, "weight_to_ram"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mWeightToRam:D

    const-string/jumbo v1, "total_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    const-string/jumbo v1, "max_memory_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mMaxMemoryUsage:D

    const-string/jumbo v1, "total_scale"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalScale:D

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mTotalTime:J

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mOnePercentTime:J

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mServiceMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->createDetails()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0b1500

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mForceStop:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->killProcesses()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->checkForceStop()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mApp:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/settings/AppHeader;->createAppHeader(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method
