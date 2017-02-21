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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    iput v1, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    iput v1, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/core/SemCamera$TransformData;->id:I

    return-void
.end method
