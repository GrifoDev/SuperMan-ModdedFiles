.class public Landroid/os/HqmStatsImpl;
.super Ljava/lang/Object;
.source "HqmStatsImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HqmStatsImpl$1;
    }
.end annotation


# static fields
.field public static final CF_SERVER:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/HqmStatsImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static final DV_SERVER:I = 0x0

.field public static final HQM_INTERFACE_API:I = 0x1

.field public static final HQM_INTERFACE_INTENT:I = 0x2

.field public static final HQM_INTERFACE_KERNEL:I = 0x0

.field public static final HQM_INTERFACE_UNKNOWN:I = -0x1

.field public static final NONE_SERVER:I = -0x1


# instance fields
.field private mHWParamResultDataFromA:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field

.field private mHWParamResultDataFromI:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field

.field private mHWParamResultDataFromK:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/HqmStatsImpl$1;

    invoke-direct {v0}, Landroid/os/HqmStatsImpl$1;-><init>()V

    sput-object v0, Landroid/os/HqmStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/HqmStatsImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HqmStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addHWParamResultData(ILjava/lang/String;Landroid/os/HWParamResultData;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHWParamResultDataMaps(I)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/HWParamResultData;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
