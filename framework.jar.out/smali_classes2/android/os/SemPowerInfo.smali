.class public Landroid/os/SemPowerInfo;
.super Ljava/lang/Object;
.source "SemPowerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SemPowerInfo$1;,
        Landroid/os/SemPowerInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SemPowerInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDmUriSparseArr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/SemDmUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemPowerInfo$1;

    invoke-direct {v0}, Landroid/os/SemPowerInfo$1;-><init>()V

    sput-object v0, Landroid/os/SemPowerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/os/SemPowerInfo;->readSparseArray(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemPowerInfo;->mDmUriSparseArr:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SemPowerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/SemPowerInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/SemPowerInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/SemPowerInfo$Builder;->-get0(Landroid/os/SemPowerInfo$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SemPowerInfo;->mDmUriSparseArr:Landroid/util/SparseArray;

    return-void
.end method

.method private readSparseArray(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/SemDmUri;",
            ">;"
        }
    .end annotation

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/SemPowerInfo;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/SemDmUri;

    invoke-virtual {v1}, Landroid/os/SemDmUri;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private writeSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/SemDmUri;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDmUriSparseArr()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/SemDmUri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/SemPowerInfo;->mDmUriSparseArr:Landroid/util/SparseArray;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/os/SemPowerInfo;->mDmUriSparseArr:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, v0}, Landroid/os/SemPowerInfo;->writeSparseArray(Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    return-void
.end method
