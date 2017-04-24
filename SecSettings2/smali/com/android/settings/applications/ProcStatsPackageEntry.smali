.class public Lcom/android/settings/applications/ProcStatsPackageEntry;
.super Ljava/lang/Object;
.source "ProcStatsPackageEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsPackageEntry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/applications/ProcStatsPackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z


# instance fields
.field mAvgBgMem:J

.field mAvgRunMem:J

.field mBgDuration:J

.field mBgWeight:D

.field final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field mMaxBgMem:J

.field mMaxRunMem:J

.field final mPackage:Ljava/lang/String;

.field mRunDuration:J

.field mRunWeight:D

.field public mUiLabel:Ljava/lang/String;

.field public mUiTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWindowLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->DEBUG:Z

    new-instance v0, Lcom/android/settings/applications/ProcStatsPackageEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsPackageEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mWindowLength:J

    return-void
.end method

.method public static getFrequency(FLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0b1a39

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0b1a3a

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    mul-float/2addr v1, p0

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0b1a3b

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/android/settings/applications/ProcStatsEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public retrieveUiData(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    :try_start_0
    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android"

    const v2, 0xa200

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    const v1, 0x7f0b16ba

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    const v2, 0xa200

    invoke-virtual {p2, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mUiLabel:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateMetrics()V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iget-wide v6, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    int-to-long v6, v0

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
