.class Landroid/widget/SemExpandableListView$IndicatorImageView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView$IndicatorImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView$IndicatorImageView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v1, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-set0(Landroid/widget/SemExpandableListView$IndicatorImageView;F)F

    iget-object v1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$1;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->invalidate()V

    return-void
.end method
