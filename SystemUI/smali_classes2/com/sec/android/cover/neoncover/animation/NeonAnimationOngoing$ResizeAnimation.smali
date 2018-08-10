.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;
.super Landroid/view/animation/Animation;
.source "NeonAnimationOngoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeAnimation"
.end annotation


# instance fields
.field startSize:I

.field targetSize:I

.field view:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->view:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->targetSize:I

    iput p2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->startSize:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;IILcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->startSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->targetSize:I

    iget v3, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->startSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationOngoing$ResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
