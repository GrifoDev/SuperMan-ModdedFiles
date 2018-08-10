.class Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
.super Landroid/support/v4/widget/ExploreByTouchHelper;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledSeekBarExploreByTouchHelper"
.end annotation


# instance fields
.field private mIsLayoutRtl:Z

.field final synthetic this$0:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v4

    sub-int v3, v4, p1

    :goto_0
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v5

    add-int v0, v4, v5

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v5

    add-int v2, v4, v5

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v2

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/LabeledSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {v1, v0, v6, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v1

    :cond_2
    move v3, p1

    goto :goto_0
.end method

.method private getHalfVirtualViewWidth()I
    .locals 4

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingEnd()I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v0, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method

.method private getVirtualViewIdIndexFromX(F)I
    .locals 3

    float-to-int v1, p1

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v2

    div-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    iget-boolean v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v1

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getVirtualViewIdIndexFromX(F)I

    move-result v0

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    :goto_0
    if-gt v1, v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->-get0(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    const/4 v0, 0x1

    const-class v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v1, 0x10

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/LabeledSeekBar;->-get0(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
