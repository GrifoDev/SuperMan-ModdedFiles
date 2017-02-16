.class Lcom/android/systemui/stackdivider/DividerView$9;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->scrollGuideView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$isPortrait:Z

.field final synthetic val$positionX:I

.field final synthetic val$positionY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$9;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$isPortrait:Z

    iput p3, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$positionX:I

    iput p4, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$positionY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$isPortrait:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$9;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$positionX:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$9;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerView$9;->val$positionY:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V

    goto :goto_0
.end method
