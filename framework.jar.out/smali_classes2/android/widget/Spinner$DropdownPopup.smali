.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method static synthetic -get0(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, p1}, Landroid/widget/Spinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setModal(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setPromptPosition(I)V

    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v4, v8, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v5

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v6

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_4

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v9

    if-le v2, v3, :cond_0

    move v2, v3

    :cond_0
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    :goto_1
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_6

    sub-int v8, v7, v6

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v4, v8

    :goto_2
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get1(Landroid/widget/Spinner;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get0(Landroid/widget/Spinner;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    :goto_3
    return-void

    :cond_1
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v4, v8

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v8}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-static {v9}, Landroid/widget/Spinner;->-get3(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iput v10, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    :cond_3
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    :cond_4
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    :cond_5
    iget-object v8, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v8}, Landroid/widget/Spinner$DropdownPopup;->setContentWidth(I)V

    goto :goto_1

    :cond_6
    add-int/2addr v4, v5

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    goto :goto_3
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->isShowing()Z

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setInputMethodMode(I)V

    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    invoke-virtual {p0}, Landroid/widget/Spinner$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setSelection(I)V

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/Spinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method
