.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$1;,
        Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;,
        Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static INTERNAL_STORAGE_TEXT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mStorageSize:J


# instance fields
.field private mAppSize:Landroid/preference/Preference;

.field private mCacheSize:Landroid/preference/Preference;

.field private mCanClearData:Z

.field private mCandidates:[Landroid/os/storage/VolumeInfo;

.field private mChangeStorageButton:Landroid/widget/Button;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

.field private mClearUri:Lcom/android/settings/applications/SecLayoutPreference;

.field private mClearUriButton:Landroid/widget/Button;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mDataSize:Landroid/preference/Preference;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mExternalCodeSize:Landroid/preference/Preference;

.field private mExternalDataSize:Landroid/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mStorageUsed:Landroid/preference/Preference;

.field private mTotalSize:Landroid/preference/Preference;

.field private mUri:Landroid/preference/PreferenceCategory;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initiateClearUserData()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/AppStorageSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/applications/AppStorageSettings;->mStorageSize:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearUriPermissions()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    return-void
.end method

.method private static getDeviceTotalSize(J)J
    .locals 10

    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    new-instance v5, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    add-long v0, p0, v6

    :goto_0
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    const-wide/32 v8, 0x40000000

    mul-long v2, v8, v6

    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getRatio(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)I
    .locals 8

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-wide/16 v2, 0x0

    :cond_1
    const/4 v0, 0x0

    sget-wide v4, Lcom/android/settings/applications/AppStorageSettings;->mStorageSize:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v2

    sget-wide v6, Lcom/android/settings/applications/AppStorageSettings;->mStorageSize:J

    div-long/2addr v4, v6

    long-to-int v0, v4

    :cond_2
    return v0
.end method

.method private static getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const v2, 0x7f0b153f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageType()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b19f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method public static getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 14

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10404d1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-wide v10, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v12, -0x2

    cmp-long v9, v10, v12

    if-nez v9, :cond_1

    :cond_0
    const v9, 0x7f0b153e

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    return-object v9

    :cond_1
    iget-wide v10, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x40000

    and-int/2addr v9, v10

    if-eqz v9, :cond_4

    const v9, 0x7f0b19f7

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_8

    const-class v9, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    sget-object v9, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    if-ne v2, v9, :cond_5

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    const-string/jumbo v9, "private"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4, v5}, Lcom/android/settings/applications/AppStorageSettings;->getDeviceTotalSize(J)J

    move-result-wide v4

    :cond_3
    sput-wide v4, Lcom/android/settings/applications/AppStorageSettings;->mStorageSize:J

    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "internal:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const v10, 0x7f0b0392

    invoke-virtual {p1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_4
    sget-object v2, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "privatemode"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    const-string/jumbo v9, "private"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v4, v5}, Lcom/android/settings/applications/AppStorageSettings;->getDeviceTotalSize(J)J

    move-result-wide v4

    :cond_6
    sput-wide v4, Lcom/android/settings/applications/AppStorageSettings;->mStorageSize:J

    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "external:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v3, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const v10, 0x7f0b0392

    invoke-virtual {p1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_7
    const v9, 0x7f0b153e

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    return-object v9

    :cond_8
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->getSize(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const v10, 0x7f0b19f5

    invoke-virtual {p1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private initDataButtons()V
    .locals 4

    const v3, 0x7f0b150b

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iput-boolean v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_2
    :goto_1
    const-string/jumbo v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v1, 0x7f0b151d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_1
.end method

.method private initMoveDialog()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v14, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v15, v15, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v1

    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "candidates: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_6

    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v14

    invoke-static {v1, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    new-array v7, v14, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    const/4 v11, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v14, v5, [Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-ge v4, v14, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9, v14}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v10, v4

    const-string/jumbo v14, "usb"

    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "AppStorage is USB"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    sget-object v15, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v3, v4

    :cond_1
    :goto_2
    sub-int v14, v4, v11

    aput-object v12, v7, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    sub-int v16, v4, v11

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    aput-object v14, v15, v16

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v14}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v14

    sget-object v15, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move v3, v4

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    if-eqz v11, :cond_4

    sget-object v14, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "only 2 items with USB"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "storage_used"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v14, "change_storage_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v14, "storage_space"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    return-void

    :cond_4
    new-array v8, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    aget-object v14, v7, v6

    aput-object v14, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f0b19fc

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v8, v3, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0b10f5

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    :goto_4
    return-void

    :cond_6
    const-string/jumbo v14, "storage_used"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v14, "change_storage_button"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v14, "storage_space"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private initiateClearUserData()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Clearing user data for package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataObserver:Lcom/android/settings/applications/AppStorageSettings$ClearUserDataObserver;

    invoke-virtual {v0, v1, v3}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldnt clear application user data for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v4, 0x7f0b152b

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private isMoveInProgress()Z
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    return v1
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 7

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const v5, 0x7f0b150b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cleared user data for package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.android.universalswitch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.universalSwitch.CLEARDATA_ACTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.permission.universalSwitch_CLEARDATA"

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Sending Broadcast to Universal Switch"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {p0, v4}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initDataButtons()V

    return-void
.end method

.method private refreshGrantedUriPermissions()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->removeUriPermissionsFromUi()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/UriPermission;

    invoke-virtual {v11}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/MutableInt;

    if-nez v6, :cond_1

    new-instance v18, Landroid/util/MutableInt;

    const/16 v19, 0x1

    invoke-direct/range {v18 .. v19}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget v0, v6, Landroid/util/MutableInt;->value:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/util/MutableInt;->value:I

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/MutableInt;

    move-object/from16 v0, v18

    iget v9, v0, Landroid/util/MutableInt;->value:I

    new-instance v15, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const v20, 0x7f13000e

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v9, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    const v18, 0x7f040130

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v15, v10}, Landroid/preference/Preference;->setOrder(I)V

    sget-object v18, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Adding preference \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\' at order "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/SecLayoutPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/SecLayoutPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private refreshSizeInfo()V
    .locals 10

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mHaveSizes:Z

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v4, v6

    :cond_4
    :goto_1
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    iput-wide v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCodeSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_6

    iput-wide v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastDataSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_7

    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastCacheSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastTotalSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCanClearData:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {p0, v6}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalCodeSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    iget-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mLastExternalDataSize:J

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/AppStorageSettings;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/applications/AppStorageSettings;->setEnabledClearDataBtn(Z)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private removeUriPermissionsFromUi()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/SecLayoutPreference;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setEnabledClearDataBtn(Z)V
    .locals 2

    const-string/jumbo v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setupViews()V
    .locals 7

    const v6, 0x7f11064d

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b153e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b153f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mInvalidSizeStr:Ljava/lang/CharSequence;

    const-string/jumbo v2, "total_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mTotalSize:Landroid/preference/Preference;

    const-string/jumbo v2, "app_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppSize:Landroid/preference/Preference;

    const-string/jumbo v2, "data_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mDataSize:Landroid/preference/Preference;

    const-string/jumbo v2, "external_code_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    const-string/jumbo v2, "external_data_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "storage_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalCodeSize:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mExternalDataSize:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string/jumbo v2, "clear_data_button"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/SecLayoutPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    const-string/jumbo v2, "storage_used"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b137b

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const v5, 0x7f0b0391

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "change_storage_button"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/SecLayoutPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    const v3, 0x7f0b19fb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v2, "cache_size"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mCacheSize:Landroid/preference/Preference;

    const-string/jumbo v2, "clear_cache_button"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/SecLayoutPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    const v3, 0x7f0b14fc

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const-string/jumbo v2, "uri_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mUri:Landroid/preference/PreferenceCategory;

    const-string/jumbo v3, "clear_uri_button"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/SecLayoutPreference;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/SecLayoutPreference;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUri:Lcom/android/settings/applications/SecLayoutPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    const v3, 0x7f0b14fe

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v3

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b152d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    const v2, 0x7f0b178d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b152f

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b1533

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b1534

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    const v2, 0x7f0b152e

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mCandidates:[Landroid/os/storage/VolumeInfo;

    aget-object v5, v6, p2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    sget-object v6, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "internal storage => external storage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v1, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "external storage => internal storage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearCacheObserver:Lcom/android/settings/applications/AppStorageSettings$ClearCacheObserver;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/AppStorageSettings;->showDialogInner(II)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->isMoveInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mClearUriButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedBySystem:Z

    if-eqz v1, :cond_c

    :cond_a
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->clearUriPermissions()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10404d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStorageSettings;->INTERNAL_STORAGE_TEXT:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->setupViews()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->initMoveDialog()V

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshUi()Z

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshSizeInfo()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v6, "isSDCardMoveAllowed"

    invoke-static {v4, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-object v4, Lcom/android/settings/applications/AppStorageSettings;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSDCardMoveAllowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mChangeStorageButton:Landroid/widget/Button;

    if-ne v0, v2, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->mPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/applications/AppStorageSettings;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method protected refreshUi()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->retrieveAppEntry()Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshSizeInfo()V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshGrantedUriPermissions()V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mStorageUsed:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->getStorageType()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->refreshButtons()V

    const/4 v0, 0x1

    return v0
.end method
