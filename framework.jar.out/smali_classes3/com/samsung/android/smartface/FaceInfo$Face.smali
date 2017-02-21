.class public Lcom/samsung/android/smartface/FaceInfo$Face;
.super Ljava/lang/Object;
.source "FaceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/FaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public nose:Landroid/graphics/Point;

.field public pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->rect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->leftEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->rightEye:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->mouth:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->nose:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->pose:Lcom/samsung/android/smartface/FaceInfo$FacePoseInfo;

    iput-object v0, p0, Lcom/samsung/android/smartface/FaceInfo$Face;->expression:Lcom/samsung/android/smartface/FaceInfo$FaceExpression;

    return-void
.end method
