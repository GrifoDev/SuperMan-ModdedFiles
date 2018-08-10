.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;
.source "Geofence.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Geofence$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HORIZONTAL_CIRCLE:I = 0x1


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private final mType:I


# direct methods
.method static synthetic -wrap0(I)V
    .locals 0

    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DDF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Landroid/location/Geofence;->checkRadius(F)V

    invoke-static {p1, p2, p3, p4}, Landroid/location/Geofence;->checkLatLong(DD)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/location/Geofence;->mType:I

    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    return-void
.end method

.method private static checkLatLong(DD)V
    .locals 4

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_2

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static checkRadius(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkType(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static createCircle(DDF)Landroid/location/Geofence;
    .locals 8

    new-instance v1, Landroid/location/Geofence;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/location/Geofence;-><init>(DDF)V

    return-object v1
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "CIRCLE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    instance-of v1, p1, Landroid/location/Geofence;

    if-nez v1, :cond_2

    return v6

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/location/Geofence;

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    iget v2, v0, Landroid/location/Geofence;->mRadius:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    return v6

    :cond_3
    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    iget-wide v4, v0, Landroid/location/Geofence;->mLatitude:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_4

    return v6

    :cond_4
    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    iget-wide v4, v0, Landroid/location/Geofence;->mLongitude:D

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    return v6

    :cond_5
    iget v1, p0, Landroid/location/Geofence;->mType:I

    iget v2, v0, Landroid/location/Geofence;->mType:I

    if-eq v1, v2, :cond_6

    return v6

    :cond_6
    return v7
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/location/Geofence;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    const/16 v6, 0x20

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-wide v4, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long v4, v2, v6

    xor-long/2addr v4, v2

    long-to-int v4, v4

    add-int/lit8 v1, v4, 0x1f

    iget-wide v4, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v4, v1, 0x1f

    ushr-long v6, v2, v6

    xor-long/2addr v6, v2

    long-to-int v5, v6

    add-int v1, v4, v5

    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int v1, v4, v5

    mul-int/lit8 v4, v1, 0x1f

    iget v5, p0, Landroid/location/Geofence;->mType:I

    add-int v1, v4, v5

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "Geofence[%s %.6f, %.6f %.0fm]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/location/Geofence;->mType:I

    invoke-static {v2}, Landroid/location/Geofence;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/location/Geofence;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
