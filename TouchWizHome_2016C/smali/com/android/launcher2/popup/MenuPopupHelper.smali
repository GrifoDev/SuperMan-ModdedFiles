.class public Lcom/android/launcher2/popup/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/launcher2/popup/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x7f03003d


# instance fields
.field private mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    iput-boolean p4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    iput-object p3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/android/launcher2/popup/MenuBuilder;->addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/popup/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    if-eq v5, v3, :cond_0

    move v3, v5

    const/4 v4, 0x0

    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/launcher2/popup/MenuView;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->close()V

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/popup/MenuPopupHelper;->setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lcom/android/launcher2/popup/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/launcher2/popup/MenuPopupHelper;->setForceShowIcon(Z)V

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/launcher2/popup/MenuBuilder;)Z

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mForceShowIcon:Z

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-instance v4, Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v4, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuBuilder;)V

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901b6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09027c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v5, :cond_2

    neg-int v2, v2

    :cond_2
    invoke-virtual {v4, v2}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return v3

    :cond_3
    move v3, v0

    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
