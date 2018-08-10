.class Landroid/widget/SemExpandableListView$IndicatorImageView$2;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mAnimatorListener : onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-wrap0(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mAnimatorListener : onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-wrap0(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-set0(Landroid/widget/SemExpandableListView$IndicatorImageView;F)F

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/widget/SemExpandableListView;->-get5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mAnimatorListener : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/SemExpandableListView$IndicatorImageView$2;->this$1:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-static {v0, p1}, Landroid/widget/SemExpandableListView$IndicatorImageView;->-wrap0(Landroid/widget/SemExpandableListView$IndicatorImageView;Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
