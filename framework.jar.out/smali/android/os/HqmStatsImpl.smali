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

    .prologue
    .line 32
    new-instance v0, Landroid/os/HqmStatsImpl$1;

    invoke-direct {v0}, Landroid/os/HqmStatsImpl$1;-><init>()V

    sput-object v0, Landroid/os/HqmStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    .line 46
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/HqmStatsImpl;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/HqmStatsImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addHWParamResultData(ILjava/lang/String;Landroid/os/HWParamResultData;)V
    .locals 1
    .param p1, "interfaceType"    # I
    .param p2, "keyName"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/HWParamResultData;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 62
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 64
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getHWParamResultDataMaps(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "interfaceType"    # I
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

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 51
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 53
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    return-object v0

    .line 54
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 55
    iget-object v0, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    return-object v0

    .line 57
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 98
    .local v3, "numHWParams":I
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 99
    const/4 v0, 0x0

    .local v0, "ih":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "keyName":Ljava/lang/String;
    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    .line 102
    .local v1, "item":Landroid/os/HWParamResultData;
    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 103
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "item":Landroid/os/HWParamResultData;
    .end local v2    # "keyName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 108
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "keyName":Ljava/lang/String;
    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    .line 111
    .restart local v1    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 112
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "item":Landroid/os/HWParamResultData;
    .end local v2    # "keyName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 117
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .restart local v2    # "keyName":Ljava/lang/String;
    new-instance v1, Landroid/os/HWParamResultData;

    invoke-direct {v1}, Landroid/os/HWParamResultData;-><init>()V

    .line 120
    .restart local v1    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v1, p1}, Landroid/os/HWParamResultData;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 121
    iget-object v4, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "item":Landroid/os/HWParamResultData;
    .end local v2    # "keyName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 71
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 72
    .local v0, "NH":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/4 v1, 0x0

    .local v1, "ih":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromK:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 76
    .local v2, "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "item":Landroid/os/HWParamResultData;
    :cond_0
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 82
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromA:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 84
    .restart local v2    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v2    # "item":Landroid/os/HWParamResultData;
    :cond_1
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 90
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Landroid/os/HqmStatsImpl;->mHWParamResultDataFromI:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/HWParamResultData;

    .line 92
    .restart local v2    # "item":Landroid/os/HWParamResultData;
    invoke-virtual {v2, p1}, Landroid/os/HWParamResultData;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    .end local v2    # "item":Landroid/os/HWParamResultData;
    :cond_2
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/os/HqmStatsImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method
