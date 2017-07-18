.class public Lcom/gsma/services/rcs/Geoloc;
.super Ljava/lang/Object;
.source "Geoloc.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/gsma/services/rcs/Geoloc;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAccuracy:F

.field private mExpiration:J

.field private mLabel:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/gsma/services/rcs/Geoloc$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/Geoloc$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/Geoloc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    iput-wide p2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    iput-wide p4, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    iput-wide p6, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDJF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJ)V

    iput p8, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return v0
.end method

.method public getExpiration()J
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    return-wide v0
.end method

.method public setAcuracy(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    return-void
.end method

.method public setExpiration(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{label:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",expiration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/gsma/services/rcs/Geoloc;->mExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/gsma/services/rcs/Geoloc;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
