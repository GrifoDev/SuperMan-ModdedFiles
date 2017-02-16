.class Landroid/widget/MultiSelectPopupWindow$PositionListener;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field private mNewRect:[I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mRect:[I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 3
    .param p1, "this$0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 760
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 763
    new-array v0, v2, [Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .line 764
    new-array v0, v2, [Z

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mCanMove:[Z

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    .line 771
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    .line 772
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    .line 773
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    .line 774
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempContentsViewCoords:[I

    .line 760
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private updatePosition()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 858
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 859
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    aput v3, v0, v2

    .line 860
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    aput v3, v0, v1

    .line 862
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    .line 863
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    .line 864
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    .line 865
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v3, v3, v2

    aput v3, v0, v2

    .line 866
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v2, v2, v1

    aput v2, v0, v1

    .line 857
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    aget v0, v0, v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v3, v3, v2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mRect:[I

    aget v0, v0, v1

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNewRect:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;Z)V
    .locals 5
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 777
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v4, :cond_0

    .line 778
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    .line 779
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 780
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 783
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    const/4 v0, -0x1

    .line 784
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 785
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 786
    .local v2, "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-ne v2, p1, :cond_1

    .line 787
    return-void

    .line 788
    :cond_1
    if-gez v0, :cond_2

    if-nez v2, :cond_2

    .line 789
    move v0, v1

    .line 784
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v2    # "listener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_3
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 794
    iget-object v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 795
    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 776
    return-void
.end method

.method public getPositionX()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 823
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 824
    const/4 v0, 0x0

    .line 825
    .local v0, "i":I
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aput-object v3, v2, v0

    .line 828
    iput v7, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 829
    return v6

    .line 832
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->updatePosition()V

    .line 839
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->checkValidMultiSelectionForPreDraw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 840
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 841
    return v6

    .line 844
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    .line 845
    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mCanMove:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    .line 846
    :cond_2
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v1, v2, v0

    .line 847
    .local v1, "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    if-eqz v1, :cond_3

    .line 848
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionX:I

    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionY:I

    iget-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionHasChanged:Z

    iget-boolean v5, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 844
    .end local v1    # "positionListener":Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_4
    iput-boolean v7, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    .line 854
    return v6
.end method

.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mScrollHasChanged:Z

    .line 869
    return-void
.end method

.method public removeSubscriber(Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;)V
    .locals 4
    .param p1, "positionListener"    # Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    .prologue
    .line 799
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 800
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 801
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mPositionListeners:[Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 802
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    .line 807
    :cond_0
    iget v2, p0, Landroid/widget/MultiSelectPopupWindow$PositionListener;->mNumberOfListeners:I

    if-nez v2, :cond_1

    .line 808
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 809
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 798
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 799
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
