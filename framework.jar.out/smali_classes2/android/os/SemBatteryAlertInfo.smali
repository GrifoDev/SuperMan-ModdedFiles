.class public Landroid/os/SemBatteryAlertInfo;
.super Ljava/lang/Object;
.source "SemBatteryAlertInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SemBatteryAlertInfo$1;,
        Landroid/os/SemBatteryAlertInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SemBatteryAlertInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDoNotAlertWhenChargerConnected:Z

.field private mHourArr:[I

.field private mId:I

.field private mIncubationPeriod:J

.field private mMaxLevelArr:[I

.field private mMinLevelArr:[I

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemBatteryAlertInfo$1;

    invoke-direct {v0}, Landroid/os/SemBatteryAlertInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemBatteryAlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    iput-boolean v1, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    invoke-virtual {p0}, Landroid/os/SemBatteryAlertInfo;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SemBatteryAlertInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SemBatteryAlertInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/SemBatteryAlertInfo$Builder;)V
    .locals 3

    const/16 v2, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get2(Landroid/os/SemBatteryAlertInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get6(Landroid/os/SemBatteryAlertInfo$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get3(Landroid/os/SemBatteryAlertInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get0(Landroid/os/SemBatteryAlertInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get1(Landroid/os/SemBatteryAlertInfo$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get5(Landroid/os/SemBatteryAlertInfo$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    invoke-static {p1}, Landroid/os/SemBatteryAlertInfo$Builder;->-get4(Landroid/os/SemBatteryAlertInfo$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/os/SemBatteryAlertInfo$Builder;Landroid/os/SemBatteryAlertInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SemBatteryAlertInfo;-><init>(Landroid/os/SemBatteryAlertInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDoNotAlertWhenChargerConnected()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    return v0
.end method

.method public getHourArr()[I
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    return v0
.end method

.method public getIncubationPeriod()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    return-wide v0
.end method

.method public getMaxLevel(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    aget v0, v0, p1

    :cond_0
    return v0
.end method

.method public getMinLevel(I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    aget v0, v0, p1

    :cond_0
    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/os/SemBatteryAlertInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/os/SemBatteryAlertInfo;->mIncubationPeriod:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/os/SemBatteryAlertInfo;->mDoNotAlertWhenChargerConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mHourArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMinLevelArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/os/SemBatteryAlertInfo;->mMaxLevelArr:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
