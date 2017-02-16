.class public Lcom/samsung/android/camera/core/SemCamera$TransformData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransformData"
.end annotation


# instance fields
.field public faceAngle:I

.field public id:I

.field public lightIntensity:I

.field public range:[I

.field public transformX:[I

.field public transformY:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1758
    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    .line 1763
    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    .line 1768
    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    .line 1773
    iput v1, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    .line 1778
    iput v1, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    .line 1783
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->id:I

    .line 1753
    return-void
.end method
