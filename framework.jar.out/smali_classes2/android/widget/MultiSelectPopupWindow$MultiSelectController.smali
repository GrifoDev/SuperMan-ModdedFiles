.class Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/widget/MultiSelectPopupWindow$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectController"
.end annotation


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

.field private mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/MultiSelectPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    .line 895
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$MultiSelectController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get0(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-set0(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 910
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/MultiSelectPopupWindow;->-set1(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 906
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    .prologue
    .line 916
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->-get0(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->-get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->-get0(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    .line 923
    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 924
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    .line 926
    :cond_2
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->show()V

    .line 927
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->show()V

    .line 915
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hide()V

    .line 935
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hide()V

    .line 938
    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 939
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    .line 931
    :cond_2
    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->initPreviousOffset()V

    .line 980
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->initPreviousOffset()V

    .line 976
    :cond_1
    return-void
.end method

.method public isSelectionEndDragged()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 967
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 968
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 970
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_0

    .line 971
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    .line 972
    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    .line 966
    :cond_1
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 960
    if-nez p1, :cond_0

    .line 961
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 959
    :cond_0
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .locals 5

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionStartDragged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionEndDragged()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v3, :cond_0

    .line 990
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 991
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_2

    .line 992
    const-string/jumbo v3, "MultiSelectPopupWindow"

    const-string/jumbo v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    .line 995
    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 996
    .local v1, "selStart":I
    check-cast v2, Landroid/text/Spannable;

    .end local v2    # "text":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 998
    .local v0, "selEnd":I
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 999
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1001
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    .line 1002
    :cond_4
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1003
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    .line 1004
    :cond_5
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1006
    :cond_6
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1007
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    goto/16 :goto_0

    .line 1005
    :cond_7
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    goto/16 :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initDrawables()V

    .line 903
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initHandles()V

    .line 901
    return-void
.end method
