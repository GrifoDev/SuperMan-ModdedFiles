.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$overflowButtonStartX:F

.field final synthetic val$overflowButtonTargetX:F

.field final synthetic val$startWidth:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowButtonStartX:F

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowButtonTargetX:F

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowButtonStartX:F

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowButtonTargetX:F

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$overflowButtonStartX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    int-to-float v1, v3

    add-float v0, v2, v1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setX(F)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    sub-int/2addr v3, v4

    goto :goto_0
.end method
