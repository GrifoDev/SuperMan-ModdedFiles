.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "GeofenceHardwareRequestParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    return v0
.end method

.method public getLastTransition()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v0

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v0

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method getSourceTechnologies()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result v0

    return v0
.end method

.method getType()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", lastTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", unknownTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", monitorTransitions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", notificationResponsiveness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", sourceTechnologies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getSourceTechnologies()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
