.class public Lcom/android/settings/fuelgauge/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;,
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;,
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$3;,
        Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatteryDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mStatsType:I

.field private mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field final mUsageTypes:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$2;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsType:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageTypes:[I

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageAdvanced;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x0
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private addNotAvailableMessage()V
    .locals 3

    const-string/jumbo v0, "not_available"

    const-string/jumbo v2, "not_available"

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const v2, 0x7f1214b6

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_a

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    :cond_0
    invoke-static {v13}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "audioserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    const-string/jumbo v17, "cameraserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    const-string/jumbo v17, "media.extractor"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    const-string/jumbo v17, "mediadrmserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    const-string/jumbo v17, "media.codec"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_1

    const/16 v13, 0x3e8

    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object v15, v10

    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-gez v7, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    :goto_3
    if-lez v8, :cond_3

    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    if-lez v4, :cond_6

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_b
    new-instance v17, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$4;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v14
.end method

.method private static isSharedGid(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method calculateHiddenPower(Ljava/util/List;)D
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    iget v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    return-wide v2

    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method calculateRunningTimeBasedOnStatsType()J
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v0, v2, v4

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsType:I

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v2

    div-long/2addr v2, v4

    return-wide v2
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, "AdvancedBatteryUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method extractUsageType(Lcom/android/internal/os/BatterySipper;)I
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x4

    return v2

    :cond_1
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_2

    const/4 v2, 0x6

    return v2

    :cond_2
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_3

    const/4 v2, 0x5

    return v2

    :cond_3
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_4

    const/4 v2, 0x2

    return v2

    :cond_4
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_5

    const/4 v2, 0x7

    return v2

    :cond_5
    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v2, :cond_6

    const/16 v2, 0x8

    return v2

    :cond_6
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x3

    return v2

    :cond_8
    const/4 v2, 0x0

    return v2
.end method

.method findBatterySipperWithMaxBatteryUsage(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-object v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AdvancedBatteryUsage"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d8

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "battery_graph"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    const-string/jumbo v1, "battery_usage_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    const v2, 0x7f12115b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const v2, 0x7f120d12

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return v8

    :pswitch_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "classname"

    const-class v2, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getMetricsCategory()I

    move-result v7

    const v4, 0x7f120d12

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BatteryUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    move-object v6, p1

    check-cast v6, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsType:I

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "BatteryUsage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method parsePowerUsageData(Lcom/android/internal/os/BatteryStatsHelper;)Ljava/util/List;
    .locals 20
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v12

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageTypes:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v18, v4, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v18, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-direct/range {v18 .. v19}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;-><init>(I)V

    move-object/from16 v0, v18

    invoke-interface {v11, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v13}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->extractUsageType(Lcom/android/internal/os/BatterySipper;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    iget-wide v0, v13, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v18, v0

    add-double v4, v4, v18

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    iget-object v3, v13, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_2

    iget-wide v4, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v4, v13, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v5, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v5, v4, v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v4

    iput-wide v4, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    :cond_2
    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    iget-wide v0, v13, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->shouldShowBatterySipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->calculateHiddenPower(Ljava/util/List;)D

    move-result-wide v8

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalPowerMah:D

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v4

    move-object/from16 v0, v16

    iput-wide v4, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->percentage:D

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7, v10}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updateUsageDataSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;DI)V

    goto :goto_2

    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryDataMap:Ljava/util/Map;

    return-object v2
.end method

.method protected refreshUi()V
    .locals 56

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->updatePreference(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v23, Landroid/support/v7/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v47, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v10, v11, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v50

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-wide/from16 v0, v50

    long-to-double v10, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    const/4 v12, 0x1

    invoke-static {v7, v10, v11, v12}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v26, v10, v11

    const v11, 0x7f120361

    invoke-virtual {v7, v11, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v7, "battery_time_duration"

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v7, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    const-string/jumbo v7, "screen.full"

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v8, v10, v12

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v22

    new-instance v53, Landroid/util/TypedValue;

    invoke-direct/range {v53 .. v53}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v10, 0x1010429

    const/4 v11, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v7, v10, v0, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v53

    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v24

    if-eqz v47, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsType:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v18

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->calculateRunningTimeBasedOnStatsType()J

    move-result-wide v44

    move-wide/from16 v0, v44

    long-to-double v10, v0

    const/4 v7, 0x0

    invoke-static {v5, v10, v11, v7}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v48

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v10, 0x7f1214b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v7, v20, v10

    if-ltz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v49

    const-wide/16 v16, 0x0

    const/16 v30, -0x1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v10, "com.att.iqi"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v30

    :goto_2
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v36

    const/16 v29, 0x0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v36

    if-ge v0, v1, :cond_f

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/internal/os/BatterySipper;

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    move/from16 v0, v30

    if-ne v7, v0, :cond_5

    :cond_2
    :goto_4
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    :cond_3
    const-wide/16 v50, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v18, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual/range {v11 .. v18}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v40

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double v10, v10, v40

    double-to-int v7, v10

    const/4 v10, 0x1

    if-lt v7, v10, :cond_2

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v10, :cond_6

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v12

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v54

    const-wide/high16 v54, 0x4008000000000000L    # 3.0

    div-double v12, v12, v54

    cmpg-double v7, v10, v12

    if-ltz v7, :cond_2

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpg-double v7, v40, v10

    if-ltz v7, :cond_2

    const-string/jumbo v7, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_6
    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v10, :cond_7

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v12

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v12, v12, v54

    cmpg-double v7, v10, v12

    if-ltz v7, :cond_2

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v7, v40, v10

    if-ltz v7, :cond_2

    const-string/jumbo v7, "user"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_7
    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    const v10, 0x182b8

    if-lt v7, v10, :cond_8

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    const v10, 0x1869f

    if-le v7, v10, :cond_2

    :cond_8
    new-instance v52, Landroid/os/UserHandle;

    invoke-virtual/range {v43 .. v43}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    move-object/from16 v0, v52

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v28, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUm:Landroid/os/UserManager;

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-direct {v0, v7, v10, v11, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUm:Landroid/os/UserManager;

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v7, v10, v0}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUm:Landroid/os/UserManager;

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v7, v10, v0}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v42

    check-cast v42, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v42, :cond_9

    new-instance v42, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v12

    div-double v38, v10, v12

    move-wide/from16 v0, v40

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v7, v29, 0x1

    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    move-object/from16 v0, v42

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_a

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v10, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v10, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    move-object/from16 v0, v43

    iget-object v10, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mStatsType:I

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v10, v11}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v10

    move-object/from16 v0, v43

    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    :cond_a
    move-object/from16 v0, v43

    iget-wide v10, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->setUsageSummary(Landroid/support/v7/preference/Preference;J)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v10, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v7, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "tphone"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v33, "com.skt.prod.phone"

    const-string/jumbo v34, "com.skt.prod.dialer"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f121b69

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v28 .. v28}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz v7, :cond_c

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.skt.prod.phone"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    const-string/jumbo v10, "com.skt.prod.dialer"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const-string/jumbo v7, "AdvancedBatteryUsage"

    const-string/jumbo v10, "remove T phone"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    if-eqz v46, :cond_e

    const-string/jumbo v7, "com.skt.prod.phone"

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string/jumbo v7, "com.skt.prod.dialer"

    move-object/from16 v0, v46

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const-string/jumbo v7, "AdvancedBatteryUsage"

    const-string/jumbo v10, "remove T phone"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getCachedCount()I

    move-result v10

    sub-int/2addr v7, v10

    const/16 v10, 0xb

    if-le v7, v10, :cond_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUsageListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    if-nez v4, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->addNotAvailableMessage()V

    :cond_10
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    return-void

    :catch_0
    move-exception v27

    goto/16 :goto_2
.end method

.method setBatteryUtils(Lcom/android/settings/fuelgauge/BatteryUtils;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method setPowerUsageFeatureProvider(Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method

.method setUsageSummary(Landroid/support/v7/preference/Preference;J)V
    .locals 6

    const/4 v4, 0x0

    const-wide/32 v2, 0xea60

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double v2, p2

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f120372

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setUserManager(Landroid/os/UserManager;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method shouldHideCategory(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method shouldHideSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v1, 0x1

    iget v0, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method shouldShowBatterySipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateUsageDataSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;DI)V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->shouldHideSummary(Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->totalUsageTimeMs:J

    long-to-double v6, v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    :goto_0
    iput-object v4, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    :goto_1
    return-void

    :cond_1
    const v5, 0x7f120372

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->usageList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->findBatterySipperWithMaxBatteryUsage(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;

    move-result-object v1

    new-instance v0, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v0, v5, v6, v7, v1}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double/2addr v6, p2

    int-to-double v8, p4

    mul-double v2, v6, v8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f120371

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/settings/fuelgauge/PowerUsageAdvanced$PowerUsageData;->summary:Ljava/lang/CharSequence;

    goto :goto_1
.end method
