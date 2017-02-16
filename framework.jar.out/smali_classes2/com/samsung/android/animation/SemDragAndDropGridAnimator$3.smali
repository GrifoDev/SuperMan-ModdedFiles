.class Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;
.super Ljava/lang/Object;
.source "SemDragAndDropGridAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->onTouchUpCancel(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

.field final synthetic val$distX:I

.field final synthetic val$distY:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemDragAndDropGridAnimator;
    .param p2, "val$distX"    # I
    .param p3, "val$distY"    # I

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iput p2, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->val$distX:I

    iput p3, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->val$distY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->val$distX:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateX:I

    .line 414
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    iget v1, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->val$distY:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/animation/SemAbsDragAndDropAnimator;->mDragViewBitmapTranslateY:I

    .line 415
    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemDragAndDropGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemDragAndDropGridAnimator;->-get0(Lcom/samsung/android/animation/SemDragAndDropGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 412
    return-void
.end method
