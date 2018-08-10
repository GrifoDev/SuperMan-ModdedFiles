.class public final Landroid/app/usage/UsageStats;
.super Ljava/lang/Object;
.source "UsageStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBeginTimeStamp:J

.field public mChooserCounts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mEndTimeStamp:J

.field public mLastEvent:I

.field public mLastTimeUsed:J

.field public mLaunchCount:I

.field public mPackageName:Ljava/lang/String;

.field public mTotalTimeInForeground:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/UsageStats$1;

    invoke-direct {v0}, Landroid/app/usage/UsageStats$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageStats;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v0, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iput-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget v0, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v0, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    iput v0, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget-object v0, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Landroid/app/usage/UsageStats;)V
    .locals 14

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t merge UsageStats for package \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' with UsageStats for package \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\'."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    iget-wide v10, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v12, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    iget v9, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget v10, p1, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    iget-wide v10, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v12, p1, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    :cond_1
    iget-wide v10, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v12, p1, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    iget-wide v10, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v12, p1, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    iget-wide v10, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v12, p1, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget v9, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v10, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/2addr v9, v10

    iput v9, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-nez v9, :cond_3

    iget-object v9, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    iput-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    :cond_2
    return-void

    :cond_3
    iget-object v9, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v9, :cond_2

    iget-object v9, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v9, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v9, p1, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    :cond_4
    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArrayMap;

    add-int v10, v7, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public getLastTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    return-wide v0
.end method

.method public getLastTimeUsed()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    return-wide v0
.end method

.method public getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;
    .locals 2

    new-instance v0, Landroid/app/usage/UsageStats;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageStats;-><init>(Landroid/app/usage/UsageStats;)V

    const-string/jumbo v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTimeInForeground()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v8, p0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, p0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, p0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v8, p0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    iget v8, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget v8, p0, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
