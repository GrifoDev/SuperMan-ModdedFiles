.class Lcom/android/server/location/GnssLocationProvider$6;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$6;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 2

    invoke-static/range {p1 .. p11}, Lcom/android/server/location/GnssLocationProvider;->-wrap0(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-wrap2()Z

    move-result v0

    return v0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap5(I)Z

    move-result v0

    return v0
.end method

.method public removeHardwareGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap6(I)Z

    move-result v0

    return v0
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/location/GnssLocationProvider;->-wrap7(II)Z

    move-result v0

    return v0
.end method
