.class public final Lcom/android/internal/app/procstats/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessStats$1;,
        Lcom/android/internal/app/procstats/ProcessStats$PackageState;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;,
        Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field public static final ALL_MEM_ADJ:[I

.field public static final ALL_PROC_STATES:[I

.field public static final ALL_SCREEN_ADJ:[I

.field public static final BACKGROUND_PROC_STATES:[I

.field static final BAD_TABLE:[I

.field public static COMMIT_PERIOD:J = 0x0L

.field public static COMMIT_UPTIME_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field private static final MAGIC:I = 0x50535454

.field public static final NON_CACHED_PROC_STATES:[I

.field private static final PARCEL_VERSION:I = 0x15

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field public static final STATE_TOP:I = 0x1

.field public static final SYS_MEM_USAGE_CACHED_AVERAGE:I = 0x2

.field public static final SYS_MEM_USAGE_CACHED_MAXIMUM:I = 0x3

.field public static final SYS_MEM_USAGE_CACHED_MINIMUM:I = 0x1

.field public static final SYS_MEM_USAGE_COUNT:I = 0x10

.field public static final SYS_MEM_USAGE_FREE_AVERAGE:I = 0x5

.field public static final SYS_MEM_USAGE_FREE_MAXIMUM:I = 0x6

.field public static final SYS_MEM_USAGE_FREE_MINIMUM:I = 0x4

.field public static final SYS_MEM_USAGE_KERNEL_AVERAGE:I = 0xb

.field public static final SYS_MEM_USAGE_KERNEL_MAXIMUM:I = 0xc

.field public static final SYS_MEM_USAGE_KERNEL_MINIMUM:I = 0xa

.field public static final SYS_MEM_USAGE_NATIVE_AVERAGE:I = 0xe

.field public static final SYS_MEM_USAGE_NATIVE_MAXIMUM:I = 0xf

.field public static final SYS_MEM_USAGE_NATIVE_MINIMUM:I = 0xd

.field public static final SYS_MEM_USAGE_SAMPLE_COUNT:I = 0x0

.field public static final SYS_MEM_USAGE_ZRAM_AVERAGE:I = 0x8

.field public static final SYS_MEM_USAGE_ZRAM_MAXIMUM:I = 0x9

.field public static final SYS_MEM_USAGE_ZRAM_MINIMUM:I = 0x7

.field public static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final sPageTypeRegex:Ljava/util/regex/Pattern;


# instance fields
.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mHasSwappedOutPss:Z

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/app/procstats/ProcessStats$PackageState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPageTypeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTypeSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private final mPageTypeZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public final mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

.field public final mSysMemUsageArgs:[J

.field public final mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodEndUptime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field public mTimePeriodStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v3, v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v0, 0x4

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BACKGROUND_PROC_STATES:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    const-string/jumbo v0, "^Node\\s+(\\d+),.*. type\\s+(\\w+)\\s+([\\s\\d]+?)\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/procstats/ProcessStats;->BAD_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    new-instance v0, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v0, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    const/16 v1, 0x8

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    new-instance v1, Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v1}, Lcom/android/internal/app/procstats/SparseMappingTable;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    const/16 v1, 0x10

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    new-instance v1, Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/SysMemUsageTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    :cond_0
    return-void
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 4

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    return-void
.end method

.method private dumpFragmentationLocked(Ljava/io/PrintWriter;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v5, "Available pages by page size:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    const-string/jumbo v5, "Zone %3d  %14s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    if-nez v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_1

    const-string/jumbo v5, "%6d"

    new-array v6, v9, [Ljava/lang/Object;

    aget v7, v4, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p1, v5, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    array-length v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    not-int v0, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8

    const/16 v4, 0xa

    if-gt p2, v4, :cond_0

    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    return-void

    :cond_0
    array-length v0, p3

    if-le p4, v0, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p4, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ltz v3, :cond_2

    int-to-long v4, v3

    aput-wide v4, p3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    not-int v4, v3

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_2

    aput v4, p1, v6

    return-object v1

    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    :cond_2
    add-int/2addr v4, v0

    array-length v5, v1

    if-lt v4, v5, :cond_0

    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v3

    goto :goto_1
.end method

.method private resetCommon()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->reset()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->resetTable()V

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/procstats/ProcessStats;->evaluateSystemProperties(Z)Z

    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessStats;->updateFragmentation()V

    return-void
.end method

.method private static splitAndParseNumbers(Ljava/lang/String;)[I
    .locals 12

    const/16 v11, 0x39

    const/16 v10, 0x30

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_1

    if-gt v1, v11, :cond_1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    new-array v7, v2, [I

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move v6, v5

    :goto_2
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v10, :cond_4

    if-gt v1, v11, :cond_4

    if-nez v3, :cond_3

    const/4 v3, 0x1

    add-int/lit8 v8, v1, -0x30

    :goto_3
    move v5, v6

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    goto :goto_2

    :cond_3
    mul-int/lit8 v8, v8, 0xa

    add-int/lit8 v9, v1, -0x30

    add-int/2addr v8, v9

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_7

    const/4 v3, 0x0

    add-int/lit8 v5, v6, 0x1

    aput v8, v7, v6

    goto :goto_4

    :cond_5
    if-lez v2, :cond_6

    add-int/lit8 v9, v2, -0x1

    aput v8, v7, v9

    :cond_6
    return-object v7

    :cond_7
    move v5, v6

    goto :goto_4
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    not-int v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10

    const-wide/32 v8, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-wide v4, p2, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    const-string/jumbo v3, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    :cond_0
    cmp-long v3, v4, v8

    if-gtz v3, :cond_1

    long-to-int v3, v4

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x20

    shr-long v6, v4, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    not-int v2, v3

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v4

    long-to-int v0, v6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessStats;)V
    .locals 42

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v27

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/SparseArray;

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {v32 .. v32}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, v32

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/util/SparseArray;

    const/16 v21, 0x0

    :goto_2
    invoke-virtual/range {v34 .. v34}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v14

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v15

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v0, v14, :cond_2

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    move-object/from16 v0, v24

    if-eq v4, v0, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v4

    if-ne v4, v8, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v28

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_2
    const/16 v19, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v0, v15, :cond_3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/procstats/ServiceState;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->add(Lcom/android/internal/app/procstats/ServiceState;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v29

    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {v29 .. v29}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/util/SparseArray;

    const/16 v20, 0x0

    :goto_6
    invoke-virtual/range {v33 .. v33}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v13, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v8, :cond_7

    new-instance v8, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v9, p0

    move v11, v6

    move v12, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v13, v6, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4, v13, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/android/internal/app/procstats/ProcessState;->add(Lcom/android/internal/app/procstats/ProcessState;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_9
    const/16 v16, 0x0

    :goto_7
    const/16 v4, 0x8

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v36, v4, v16

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    aget-wide v38, v9, v16

    add-long v36, v36, v38

    aput-wide v36, v4, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v4, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(Lcom/android/internal/app/procstats/SysMemUsageTable;)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v38, v0

    cmp-long v4, v36, v38

    if-gez v4, :cond_b

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    add-long v36, v36, v38

    move-wide/from16 v0, v36

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    or-int/2addr v4, v9

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    return-void
.end method

.method public addSysMemUsage(JJJJJ)V
    .locals 7

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    mul-int/lit8 v1, v2, 0xe

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const-wide/16 v4, 0x1

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x1

    aput-wide p1, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x4

    aput-wide p3, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0x7

    aput-wide p5, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xa

    aput-wide p7, v2, v3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    add-int/lit8 v3, v0, 0xd

    aput-wide p9, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsageArgs:[J

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeStats(I[JI)V

    :cond_1
    return-void
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v12, v3, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/util/SparseArray;

    const/4 v14, 0x0

    :goto_1
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_6

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_5

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-eqz p7, :cond_1

    move-object/from16 v0, p7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    :goto_3
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v18, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    :cond_0
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_1
    const/16 v18, 0x1

    goto :goto_3

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v16, Ljava/util/ArrayList;

    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v11, v3, :cond_9

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessTimeLocked([I[I[IJ)J

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_9
    sget-object v3, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v16
.end method

.method public computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 28

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    const/4 v4, 0x0

    :goto_0
    const/16 v22, 0xe

    move/from16 v0, v22

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v23, v22, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    aput-wide v24, v22, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getTotalMemUsage()[J

    move-result-object v20

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v8, v0, :cond_5

    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v6

    add-int v11, v22, v23

    mul-int/lit8 v16, v11, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v22, v0

    aget-wide v12, v22, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v11, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v22, v0

    sub-long v22, p2, v22

    add-long v12, v12, v22

    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-wide/from16 v22, v0

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKey(B)I

    move-result v17

    move-object/from16 v10, v20

    const/4 v5, 0x0

    const/16 v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getArrayForKey(I)[J

    move-result-object v19

    invoke-static/range {v17 .. v17}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIndexFromKey(I)I

    move-result v18

    add-int/lit8 v22, v18, 0x0

    aget-wide v22, v19, v22

    const-wide/16 v24, 0x3

    cmp-long v22, v22, v24

    if-ltz v22, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemUsage:[J

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->mergeSysMemUsage([JI[JI)V

    move-object/from16 v10, v19

    move/from16 v5, v18

    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x2

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    long-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x5

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    long-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x8

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    long-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0xb

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    long-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0xe

    aget-wide v24, v10, v24

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    long-to-double v0, v12

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v24, v5, 0x0

    aget-wide v24, v10, v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_7

    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseArray;

    const/4 v9, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_6

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 51

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v41

    const-string/jumbo v3, "vers,5"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const/16 v40, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const-string/jumbo v3, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v40, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const-string/jumbo v3, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v40, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v40, 0x0

    :cond_2
    if-eqz v40, :cond_3

    const-string/jumbo v3, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, ",swapped-out-pss"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v3, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v33, 0x0

    :goto_1
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_b

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/util/SparseArray;

    const/16 v36, 0x0

    :goto_2
    invoke-virtual/range {v48 .. v48}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_5

    move-object/from16 v0, v48

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, v48

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/util/SparseArray;

    const/16 v37, 0x0

    :goto_3
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v37

    if-ge v0, v3, :cond_a

    move-object/from16 v0, v50

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, v50

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v30

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v31

    const/16 v34, 0x0

    :goto_4
    move/from16 v0, v34

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    :cond_8
    const/16 v35, 0x0

    :goto_5
    move/from16 v0, v35

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v42

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v11, p1

    move-object v12, v4

    move v13, v5

    move v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->dumpTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V

    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v43

    const/16 v33, 0x0

    :goto_6
    invoke-virtual/range {v43 .. v43}, Landroid/util/ArrayMap;->size()I

    move-result v3

    move/from16 v0, v33

    if-ge v0, v3, :cond_d

    move-object/from16 v0, v43

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v43

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/SparseArray;

    const/16 v36, 0x0

    :goto_7
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v0, v36

    if-ge v0, v3, :cond_c

    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    move-object/from16 v0, v49

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v17, p1

    move/from16 v19, v5

    move-wide/from16 v20, v8

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V

    add-int/lit8 v36, v36, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v33, v33, 0x1

    goto :goto_6

    :cond_d
    const-string/jumbo v3, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v21, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v24, v0

    move-object/from16 v20, p1

    move-wide/from16 v26, v8

    invoke-static/range {v20 .. v27}, Lcom/android/internal/app/procstats/DumpUtils;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v45

    if-lez v45, :cond_10

    const-string/jumbo v3, "sysmemusage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v32, 0x0

    :goto_8
    move/from16 v0, v32

    move/from16 v1, v45

    if-ge v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyAt(I)I

    move-result v39

    invoke-static/range {v39 .. v39}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v47

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-static {v0, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    const/16 v38, 0x0

    :goto_9
    const/16 v3, 0x10

    move/from16 v0, v38

    if-ge v0, v3, :cond_f

    const/4 v3, 0x1

    move/from16 v0, v38

    if-le v0, v3, :cond_e

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getValue(II)J

    move-result-wide v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v38, v38, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v32, v32, 0x1

    goto :goto_8

    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v46, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, v46

    invoke-direct {v0, v3, v7}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-string/jumbo v3, "weights,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v32, 0x0

    :goto_a
    const/16 v3, 0xe

    move/from16 v0, v32

    if-ge v0, v3, :cond_11

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v12, v3, v32

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(D)V

    const-string/jumbo v3, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v3, v3, v32

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v32, 0x0

    :goto_b
    move/from16 v0, v32

    move/from16 v1, v29

    if-ge v0, v1, :cond_15

    const-string/jumbo v3, "availablepages,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [I

    if-nez v44, :cond_13

    const/16 v28, 0x0

    :goto_c
    const/16 v38, 0x0

    :goto_d
    move/from16 v0, v38

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    if-eqz v38, :cond_12

    const-string/jumbo v3, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    aget v3, v44, v38

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v38, v38, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v28, v0

    goto :goto_c

    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v32, v32, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 10

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-object/from16 v8, p12

    move/from16 v9, p13

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 51

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/SysMemUsageTable;->getKeyCount()I

    move-result v5

    if-lez v5, :cond_0

    const-string/jumbo v5, "System memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    const-string/jumbo v6, "  "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6, v7, v9}, Lcom/android/internal/app/procstats/SysMemUsageTable;->dump(Ljava/io/PrintWriter;Ljava/lang/String;[I[I)V

    const/16 v44, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v36

    const/16 v40, 0x0

    const/16 v29, 0x0

    :goto_0
    invoke-virtual/range {v36 .. v36}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_19

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v36

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/util/SparseArray;

    const/16 v32, 0x0

    :goto_1
    invoke-virtual/range {v46 .. v46}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_18

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    move-object/from16 v0, v46

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/SparseArray;

    const/16 v33, 0x0

    :goto_2
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v33

    if-ge v0, v5, :cond_17

    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    move-object/from16 v0, v49

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v37

    :goto_3
    if-nez v37, :cond_5

    const/16 v42, 0x0

    const/16 v30, 0x0

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v42, 0x1

    :cond_1
    if-nez v42, :cond_5

    :cond_2
    add-int/lit8 v33, v33, 0x1

    goto :goto_2

    :cond_3
    const/16 v37, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    :cond_5
    if-gtz v16, :cond_6

    if-lez v28, :cond_9

    :cond_6
    if-nez v40, :cond_8

    if-eqz v44, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    const-string/jumbo v5, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v40, 0x1

    const/16 v44, 0x1

    :cond_8
    const-string/jumbo v5, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, " / v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    if-eqz p5, :cond_a

    if-eqz p6, :cond_e

    :cond_a
    const/16 v30, 0x0

    :goto_5
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v37, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    :goto_6
    add-int/lit8 v30, v30, 0x1

    goto :goto_5

    :cond_b
    if-eqz p7, :cond_c

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string/jumbo v5, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, " (multi, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "        "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v5, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string/jumbo v6, "        "

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    const-string/jumbo v5, "        "

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_d
    const-string/jumbo v5, " (unique, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/16 v30, 0x0

    :goto_8
    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_12

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v37, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_10

    :cond_f
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    :cond_10
    if-eqz p7, :cond_11

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_f

    :cond_11
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    const-string/jumbo v7, "      "

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v6, p1

    move-wide/from16 v12, p3

    invoke-static/range {v6 .. v15}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    :cond_13
    const/16 v31, 0x0

    :goto_a
    move/from16 v0, v31

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ServiceState;

    if-nez v37, :cond_14

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_14

    :goto_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    :cond_14
    if-eqz p7, :cond_15

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_15

    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    if-eqz p6, :cond_16

    const-string/jumbo v5, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_c
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v19, "        "

    const-string/jumbo v20, "          "

    const-string/jumbo v21, "    "

    move-object/from16 v18, p1

    move-wide/from16 v22, p3

    move-wide/from16 v24, v14

    move/from16 v26, p5

    move/from16 v27, p6

    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/app/procstats/ServiceState;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZ)V

    goto :goto_b

    :cond_16
    const-string/jumbo v5, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    :cond_18
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v41

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v29, 0x0

    :goto_d
    invoke-virtual/range {v41 .. v41}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move/from16 v0, v29

    if-ge v0, v5, :cond_21

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/util/SparseArray;

    const/16 v32, 0x0

    :goto_e
    invoke-virtual/range {v47 .. v47}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_20

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v45

    add-int/lit8 v35, v35, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->hasAnyData()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    :goto_f
    add-int/lit8 v32, v32, 0x1

    goto :goto_e

    :cond_1b
    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz p2, :cond_1c

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1a

    :cond_1c
    add-int/lit8 v34, v34, 0x1

    if-eqz v44, :cond_1d

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1d
    const/16 v44, 0x1

    if-nez v40, :cond_1e

    const-string/jumbo v5, "Multi-Package Common Processes:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v40, 0x1

    :cond_1e
    if-eqz p7, :cond_1f

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_1f
    const-string/jumbo v5, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v5, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getDurationsBucketCount()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v20, "        "

    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v18, v4

    move-object/from16 v19, p1

    move-wide/from16 v24, p3

    invoke-virtual/range {v18 .. v25}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V

    const-string/jumbo v20, "        "

    sget-object v21, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v22, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v23, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v18, v4

    move-object/from16 v19, p1

    invoke-virtual/range {v18 .. v23}, Lcom/android/internal/app/procstats/ProcessState;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    const-string/jumbo v5, "        "

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/internal/app/procstats/ProcessState;->dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto/16 :goto_f

    :cond_20
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_d

    :cond_21
    if-eqz p6, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v5, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22
    if-eqz v44, :cond_23

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_23
    if-eqz p5, :cond_25

    const-string/jumbo v5, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-wide/from16 v22, p3

    move/from16 v24, p7

    invoke-virtual/range {v19 .. v24}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    :goto_10
    if-eqz p6, :cond_24

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v5, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFragmentationLocked(Ljava/io/PrintWriter;)V

    return-void

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_10
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    const-string/jumbo v7, "  "

    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/procstats/ProcessStats;->NON_CACHED_PROC_STATES:[I

    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/procstats/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 18

    const-string/jumbo v4, "Run time Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "  "

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/procstats/DumpUtils;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "Memory usage:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v17, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;

    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    const-wide/16 v12, 0x0

    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Kernel "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Native "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    const/4 v15, 0x0

    :goto_0
    const/16 v4, 0xe

    if-ge v15, v4, :cond_1

    const/4 v4, 0x7

    if-eq v15, v4, :cond_0

    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v4, v15

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v4, v15

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    aget v14, v4, v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Cached "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Free   "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    const-string/jumbo v6, "  "

    const-string/jumbo v7, "Z-Ram  "

    move-object/from16 v0, v17

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget v14, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemSamples:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    move-result-wide v12

    const-string/jumbo v4, "  TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "  "

    sget-object v4, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v7, v4, v5

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    const/4 v5, 0x7

    aget-wide v8, v4, v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->totalTime:J

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    const/4 v5, 0x7

    aget v14, v4, v5

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v14}, Lcom/android/internal/app/procstats/ProcessStats;->printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "          Start time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v4, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "  Total elapsed time: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRunning:Z

    if-eqz v4, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v4, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const-string/jumbo v4, " (shutdown)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_3

    const-string/jumbo v4, " (sysprops)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const-string/jumbo v4, " (complete)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_4
    if-eqz v16, :cond_5

    const-string/jumbo v4, " (partial)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, " (swapped-out-pss)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/16 v4, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_1
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method public getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .locals 3

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 25

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    move-object v4, v2

    :goto_0
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->setMultiPackage(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual {v2, v10, v11}, Lcom/android/internal/app/procstats/ProcessState;->clone(J)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v20

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    :goto_1
    if-ltz v22, :cond_5

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/app/procstats/ServiceState;->getProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    if-ne v3, v2, :cond_3

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ServiceState;->setProcess(Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_3
    add-int/lit8 v22, v22, -0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cloning proc state: no package state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for proc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    move-object v5, v2

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object v12, v4

    move-object v13, v2

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v12 .. v19}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .locals 7

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;II)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v6

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ServiceState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    :goto_0
    new-instance v0, Lcom/android/internal/app/procstats/ServiceState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    iget-object v1, v6, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method printMemoryCategory(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;DJJI)J
    .locals 8

    const-wide/16 v4, 0x0

    cmpl-double v4, p4, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, p4

    long-to-double v6, p6

    div-double/2addr v4, v6

    double-to-long v2, v4

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ": "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v4, " ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " samples)"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-long v4, p8, v2

    return-wide v4

    :cond_0
    return-wide p8
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    invoke-static {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-lez v11, :cond_2

    const/16 v23, 0x1

    :goto_0
    if-eqz v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    :cond_0
    const-string/jumbo v11, "magic number"

    const v12, 0x50535454

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    return-void

    :cond_1
    const/16 v23, 0x1

    goto :goto_0

    :cond_2
    const/16 v23, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    const/16 v11, 0x15

    move/from16 v0, v27

    if-eq v0, v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_4
    const-string/jumbo v11, "state count"

    const/16 v12, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    return-void

    :cond_5
    const-string/jumbo v11, "adj count"

    const/16 v12, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    return-void

    :cond_6
    const-string/jumbo v11, "pss count"

    const/4 v12, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    return-void

    :cond_7
    const-string/jumbo v11, "sys mem usage count"

    const/16 v12, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    return-void

    :cond_8
    const-string/jumbo v11, "longs size"

    const/16 v12, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v11}, Lcom/android/internal/app/procstats/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    return-void

    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->buildTimePeriodStartClockStr()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SparseMappingTable;->readFromParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    array-length v12, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v11, v12}, Lcom/android/internal/app/procstats/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/SysMemUsageTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v11

    if-nez v11, :cond_b

    return-void

    :cond_a
    const/4 v11, 0x0

    goto :goto_1

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-gez v18, :cond_c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad process count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_c
    if-lez v18, :cond_14

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_d

    const-string/jumbo v11, "bad process name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-gez v21, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_f
    if-lez v21, :cond_c

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    const-string/jumbo v11, "bad process package name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    :goto_2
    if-eqz v4, :cond_13

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_e

    return-void

    :cond_12
    const/4 v4, 0x0

    goto :goto_2

    :cond_13
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_e

    return-void

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-gez v17, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_15
    if-lez v17, :cond_29

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    const-string/jumbo v11, "bad package name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-gez v21, :cond_17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_17
    if-lez v21, :cond_15

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-gez v22, :cond_19

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad versions count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_19
    if-lez v22, :cond_17

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v26, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v6, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/util/SparseArray;

    if-nez v28, :cond_1a

    new-instance v28, Landroid/util/SparseArray;

    invoke-direct/range {v28 .. v28}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v28

    invoke-virtual {v11, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-gez v19, :cond_1c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package process count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1b
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    :goto_3
    if-lez v19, :cond_22

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1d

    const-string/jumbo v11, "bad package process name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11, v9, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessState;

    if-nez v5, :cond_1e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "no common proc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_1e
    if-eqz v24, :cond_21

    if-eqz v23, :cond_1f

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/procstats/ProcessState;

    :goto_4
    if-eqz v4, :cond_20

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_1b

    return-void

    :cond_1f
    const/4 v4, 0x0

    goto :goto_4

    :cond_20
    new-instance v4, Lcom/android/internal/app/procstats/ProcessState;

    const-wide/16 v10, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Lcom/android/internal/app/procstats/ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v11

    if-nez v11, :cond_1b

    return-void

    :cond_21
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    if-gez v20, :cond_24

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "bad package service count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_23
    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    if-lez v20, :cond_19

    add-int/lit8 v20, v20, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_25

    const-string/jumbo v11, "bad package service name"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    return-void

    :cond_25
    const/16 v11, 0x9

    move/from16 v0, v27

    if-le v0, v11, :cond_27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    :goto_5
    if-eqz v23, :cond_28

    move-object/from16 v0, v26

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    :goto_6
    if-nez v10, :cond_26

    new-instance v10, Lcom/android/internal/app/procstats/ServiceState;

    const/4 v15, 0x0

    move-object/from16 v11, p0

    move-object v12, v6

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/app/procstats/ServiceState;-><init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessState;)V

    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/internal/app/procstats/ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v11

    if-nez v11, :cond_23

    return-void

    :cond_27
    const/4 v14, 0x0

    goto :goto_5

    :cond_28
    const/4 v10, 0x0

    goto :goto_6

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/16 v25, 0x0

    :goto_7
    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    goto :goto_7

    :cond_2a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/internal/app/procstats/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public resetSafely()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessStats;->resetCommon()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    :goto_1
    if-ltz v5, :cond_0

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_2
    if-ltz v2, :cond_b

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    :goto_3
    if-ltz v5, :cond_9

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v6, v17, -0x1

    :goto_4
    if-ltz v6, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v3, v17, -0x1

    :goto_5
    if-ltz v3, :cond_3

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v12, v0, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    :goto_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_2
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    :cond_3
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v4, v17, -0x1

    :goto_7
    if-ltz v4, :cond_5

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/ServiceState;->isInUse()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v13, v8, v9}, Lcom/android/internal/app/procstats/ServiceState;->resetSafely(J)V

    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_4
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    :cond_5
    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    iget-object v0, v10, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v17

    if-gtz v17, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_4

    :cond_7
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_8

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_a

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17

    add-int/lit8 v2, v17, -0x1

    :goto_9
    if-ltz v2, :cond_11

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int/lit8 v5, v17, -0x1

    :goto_a
    if-ltz v5, :cond_f

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isInUse()Z

    move-result v17

    if-nez v17, :cond_c

    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v17, v0

    if-lez v17, :cond_e

    :cond_c
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isActive()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->isMultiPackage()Z

    move-result v17

    if-eqz v17, :cond_d

    iget v0, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpNumInUse:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    iget-object v12, v12, Lcom/android/internal/app/procstats/ProcessState;->tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeStandalone()V

    invoke-virtual {v15, v5, v12}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    :goto_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    :cond_d
    invoke-virtual {v12, v8, v9}, Lcom/android/internal/app/procstats/ProcessState;->resetSafely(J)V

    goto :goto_b

    :cond_e
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeDead()V

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_b

    :cond_f
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-gtz v17, :cond_10

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    return-void
.end method

.method public updateFragmentation()V
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/pagetypeinfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->sPageTypeRegex:Ljava/util/regex/Pattern;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/procstats/ProcessStats;->splitAndParseNumbers(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_2
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    throw v7

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;JI)V
    .locals 32

    const v25, 0x50535454

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v25, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/app/ProcessMap;->size()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_1

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v9, :cond_0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ProcessState;

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v5, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_6

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v10

    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v10, :cond_5

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v7, :cond_3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v8, :cond_4

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/procstats/ServiceState;

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/ServiceState;->commitStateTime(J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mHasSwappedOutPss:Z

    move/from16 v25, v0

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SparseMappingTable;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    aget-wide v28, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    move-wide/from16 v30, v0

    sub-long v30, p2, v30

    add-long v28, v28, v30

    aput-wide v28, v25, v26

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mSysMemUsage:Lcom/android/internal/app/procstats/SysMemUsageTable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/SysMemUsageTable;->writeToParcel(Landroid/os/Parcel;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v6, :cond_b

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v9, :cond_a

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v12, 0x0

    :goto_a
    if-ge v12, v5, :cond_11

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/util/SparseArray;

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x0

    :goto_b
    if-ge v15, v9, :cond_10

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x0

    :goto_c
    move/from16 v0, v16

    if-ge v0, v10, :cond_f

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v7, :cond_d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/app/procstats/ProcessState;->getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_c
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_e

    :cond_d
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x0

    :goto_f
    if-ge v14, v8, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/procstats/ServiceState;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/app/procstats/ServiceState;->getProcessName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeZones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeLabels:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPageTypeSizes:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [I

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_12
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/procstats/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    return-void
.end method
