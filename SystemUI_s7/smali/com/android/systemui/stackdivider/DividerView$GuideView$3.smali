.class Lcom/android/systemui/stackdivider/DividerView$GuideView$3;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$3;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get6(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
