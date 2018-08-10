.class public Landroid/os/HWParamParcel;
.super Ljava/lang/Object;
.source "HWParamParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HWParamParcel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/HWParamParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appID:Ljava/lang/String;

.field compID:Ljava/lang/String;

.field compManufacture:Ljava/lang/String;

.field compVer:Ljava/lang/String;

.field customMap:Ljava/lang/String;

.field developMap:Ljava/lang/String;

.field feature:Ljava/lang/String;

.field hitType:Ljava/lang/String;

.field privateMap:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/HWParamParcel$1;

    invoke-direct {v0}, Landroid/os/HWParamParcel$1;-><init>()V

    sput-object v0, Landroid/os/HWParamParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/HWParamParcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HWParamParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompManufacture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getCompVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    return-object v0
.end method

.method public getDevelopMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/HWParamParcel;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-void
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-void
.end method

.method public setData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Landroid/os/HWParamParcel;->type:I

    iput-object p2, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    iput-object p3, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    iput-object p4, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    iput-object p5, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    iput-object p6, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    iput-object p7, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    iput-object p8, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    iput-object p9, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    iput-object p10, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Landroid/os/HWParamParcel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->compID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->feature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->hitType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->compVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->compManufacture:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->developMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->customMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->privateMap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/HWParamParcel;->appID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HWParamParcel;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
