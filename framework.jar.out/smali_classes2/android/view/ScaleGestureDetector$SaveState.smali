.class Landroid/view/ScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveState"
.end annotation


# instance fields
.field mLenBeforeSqrt:F

.field mSpanX:F

.field mSpanY:F

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    return-void
.end method
