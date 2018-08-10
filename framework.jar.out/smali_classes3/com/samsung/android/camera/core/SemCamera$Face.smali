.class public Lcom/samsung/android/camera/core/SemCamera$Face;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->id:I

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->leftEye:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->rightEye:Landroid/graphics/Point;

    iput-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$Face;->mouth:Landroid/graphics/Point;

    return-void
.end method
