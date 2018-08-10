.class Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;
.super Landroid/view/animation/Animation;
.source "SeslSwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

.field final synthetic val$endingAlpha:I

.field final synthetic val$startingAlpha:I


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iput p2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->val$startingAlpha:I

    iput p3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->val$endingAlpha:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout;->mProgress:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->val$startingAlpha:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->val$endingAlpha:I

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslSwipeRefreshLayout$5;->val$startingAlpha:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->setAlpha(I)V

    return-void
.end method
