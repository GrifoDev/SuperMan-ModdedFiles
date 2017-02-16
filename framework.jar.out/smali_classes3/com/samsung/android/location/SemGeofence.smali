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

    .prologue
    .line 65
    new-instance v0, Lcom/samsung/android/location/SemGeofence$1;

    invoke-direct {v0}, Lcom/samsung/android/location/SemGeofence$1;-><init>()V

    .line 64
    sput-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(IDDI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 41
    iput-wide p2, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 42
    iput-wide p4, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 43
    iput p6, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "bssid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 55
    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 56
    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 58
    iput-object p2, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/location/SemGeofence;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/location/SemGeofence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 91
    iget-wide v0, p0, Lcom/samsung/android/location/SemGeofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    iget v0, p0, Lcom/samsung/android/location/SemGeofence;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/location/SemGeofence;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
