.class public final Landroid/location/GpsSatellite;
.super Ljava/lang/Object;
.source "GpsSatellite.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mAzimuth:F

.field mElevation:F

.field mHasAlmanac:Z

.field mHasEphemeris:Z

.field mPrn:I

.field mSnr:F

.field mUsedInFix:Z

.field mValid:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/GpsSatellite;->mPrn:I

    return-void
.end method


# virtual methods
.method public getAzimuth()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    return v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    return v0
.end method

.method public getPrn()I
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mPrn:I

    return v0
.end method

.method public getSnr()F
    .locals 1

    iget v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    return v0
.end method

.method public hasAlmanac()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    return v0
.end method

.method public hasEphemeris()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    return v0
.end method

.method setStatus(Landroid/location/GpsSatellite;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mValid:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mValid:Z

    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    iget-boolean v0, p1, Landroid/location/GpsSatellite;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    iget v0, p1, Landroid/location/GpsSatellite;->mSnr:F

    iput v0, p0, Landroid/location/GpsSatellite;->mSnr:F

    iget v0, p1, Landroid/location/GpsSatellite;->mElevation:F

    iput v0, p0, Landroid/location/GpsSatellite;->mElevation:F

    iget v0, p1, Landroid/location/GpsSatellite;->mAzimuth:F

    iput v0, p0, Landroid/location/GpsSatellite;->mAzimuth:F

    goto :goto_0
.end method

.method public usedInFix()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/GpsSatellite;->mUsedInFix:Z

    return v0
.end method
