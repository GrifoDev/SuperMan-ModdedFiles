.class public Lcom/samsung/android/location/SemGeofence;
.super Ljava/lang/Object;
.source "SemGeofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/SemGeofence$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/location/SemGeofence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mRadius:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/location/SemGeofence$1;

    invoke-direct {v0}, Lcom/samsung/android/location/SemGeofence$1;-><init>()V

    sput-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IDDI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/location/SemGeofence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemGeofence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
