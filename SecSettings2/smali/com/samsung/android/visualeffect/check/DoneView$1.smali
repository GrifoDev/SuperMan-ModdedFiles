.class Lcom/samsung/android/visualeffect/check/DoneView$1;
.super Ljava/lang/Object;
.source "DoneView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/check/DoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/check/DoneView;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/check/DoneView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v3, v3, Lcom/samsung/android/visualeffect/check/DoneView;->X2:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->posX:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v3, v3, Lcom/samsung/android/visualeffect/check/DoneView;->Y2_ABSOLUTE:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v0

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->posY:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v1, v1, Lcom/samsung/android/visualeffect/check/DoneView;->posX:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->posX:F

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v1, v1, Lcom/samsung/android/visualeffect/check/DoneView;->posY:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->posY:F

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/check/DoneView;->invalidate()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->x1delta:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->posX:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v3, v3, Lcom/samsung/android/visualeffect/check/DoneView;->X1:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->x2delta:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->y1delta:F

    iget-object v1, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v2, v2, Lcom/samsung/android/visualeffect/check/DoneView;->posY:F

    iget-object v3, p0, Lcom/samsung/android/visualeffect/check/DoneView$1;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    iget v3, v3, Lcom/samsung/android/visualeffect/check/DoneView;->Y1:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v1, Lcom/samsung/android/visualeffect/check/DoneView;->y2delta:F

    goto :goto_1
.end method
