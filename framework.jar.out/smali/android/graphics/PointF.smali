.class public Landroid/graphics/PointF;
.super Ljava/lang/Object;
.source "PointF.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PointF$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/PointF$1;

    invoke-direct {v0}, Landroid/graphics/PointF$1;-><init>()V

    sput-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/PointF;->x:F

    iput p2, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static length(FF)F
    .locals 4

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(FF)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/PointF;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v3

    :cond_3
    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget v1, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final length()F
    .locals 2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method public final negate()V
    .locals 1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final offset(FF)V
    .locals 1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final set(FF)V
    .locals 0

    iput p1, p0, Landroid/graphics/PointF;->x:F

    iput p2, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final set(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PointF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
