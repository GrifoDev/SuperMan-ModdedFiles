.class Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;
.super Landroid/view/animation/Animation;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoOffsetAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/BaseCardView;FF)V
    .locals 1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    sub-float v0, p3, p2

    iput v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    iget v1, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    iget v2, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/BaseCardView;->-set1(Landroid/support/v17/leanback/widget/BaseCardView;F)F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroid/support/v17/leanback/widget/BaseCardView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BaseCardView;->requestLayout()V

    return-void
.end method
