.class Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget v2, v2, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mStartingScale:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$4;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
