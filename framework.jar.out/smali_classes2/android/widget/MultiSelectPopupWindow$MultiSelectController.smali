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

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$MultiSelectController;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get0(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

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

    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-nez v0, :cond_1

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

    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->show()V

    :cond_2
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->show()V

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->show()V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hide()V

    :cond_1
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->hide()V

    :cond_2
    return-void
.end method

.method public initPreviousOffset()V
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->initPreviousOffset()V

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$HandleView;->initPreviousOffset()V

    :cond_1
    return-void
.end method

.method public isSelectionEndDragged()Z
    .locals 1

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

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->onDetached()V

    :cond_1
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    :cond_0
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionStartDragged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->isSelectionEndDragged()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get2()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v3, "MultiSelectPopupWindow"

    const-string/jumbo v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;->relocateMultiSelectQuickPopupWindow(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mEndHandle:Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->mStartHandle:Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    invoke-virtual {v3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->hideMultiSelectQuickPopupWindow()V

    goto/16 :goto_0
.end method

.method public show()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initDrawables()V

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initHandles()V

    return-void
.end method
