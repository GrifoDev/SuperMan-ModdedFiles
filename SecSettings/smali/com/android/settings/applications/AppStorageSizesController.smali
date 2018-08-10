.class public Lcom/android/settings/applications/AppStorageSizesController;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSizesController$Builder;
    }
.end annotation


# instance fields
.field private final mAppSize:Landroid/support/v7/preference/Preference;

.field private final mCacheSize:Landroid/support/v7/preference/Preference;

.field private mCachedCleared:Z

.field private final mComputing:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mDataCleared:Z

.field private final mDataSize:Landroid/support/v7/preference/Preference;

.field private final mError:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastResultFailed:Z

.field private mLastTotalSize:J

.field private final mTotalSize:Landroid/support/v7/preference/Preference;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V
    .locals 2
    .param p5    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    iput-object p4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    iput p5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    iput p6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;II)V

    return-void
.end method

.method private getSizeStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2

    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    return-object v0
.end method

.method public setCacheCleared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    return-void
.end method

.method public setDataCleared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    return-void
.end method

.method public setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateUi(Landroid/content/Context;)V
    .locals 12

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    if-eqz v7, :cond_1

    iget v6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    :goto_0
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v7}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v2

    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-eqz v7, :cond_7

    const-wide/16 v4, 0x0

    :goto_2
    iget-wide v10, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    cmp-long v7, v10, v2

    if-eqz v7, :cond_3

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-wide v10, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    cmp-long v7, v10, v4

    if-eqz v7, :cond_4

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    if-eqz v7, :cond_8

    :cond_5
    const-wide/16 v0, 0x0

    :goto_3
    iget-wide v10, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    cmp-long v7, v10, v0

    if-eqz v7, :cond_6

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    add-long v10, v2, v4

    add-long v8, v10, v0

    iget-wide v10, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_0

    iput-wide v8, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1, v8, v9}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v7}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v4

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v7}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v0

    goto :goto_3
.end method
