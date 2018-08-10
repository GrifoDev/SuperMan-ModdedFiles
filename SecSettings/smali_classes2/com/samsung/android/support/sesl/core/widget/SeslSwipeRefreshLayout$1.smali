.class Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SeslSwipeRefreshLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;
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

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->reset()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->start()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mNotify:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCircleView:Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getTop()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$1;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mListener:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$OnRefreshListener;->onRefresh()V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
