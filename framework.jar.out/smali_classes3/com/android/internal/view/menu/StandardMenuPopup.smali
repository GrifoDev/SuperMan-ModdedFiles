.class final Lcom/android/internal/view/menu/StandardMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/StandardMenuPopup$1;,
        Lcom/android/internal/view/menu/StandardMenuPopup$2;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mItemMaxCount:I

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPopup:Landroid/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPopupWindowLayout:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field private mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVisibleMaxHeight:I

.field private mWasDismissed:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/StandardMenuPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/widget/MenuPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/view/menu/StandardMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/view/menu/StandardMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    new-instance v3, Lcom/android/internal/view/menu/StandardMenuPopup$1;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$1;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v3, Lcom/android/internal/view/menu/StandardMenuPopup$2;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/StandardMenuPopup$2;-><init>(Lcom/android/internal/view/menu/StandardMenuPopup;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iput v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iput v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupWindowLayout:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iput-boolean p6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v5, 0x1110082

    invoke-virtual {v3, v5, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v1, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/view/menu/SemMenuAdapter;

    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v3, p2, v0, v4}, Lcom/samsung/android/view/menu/SemMenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    :goto_1
    iput p4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iput p5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    const v4, 0x105004c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    const v3, 0x10e012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mItemMaxCount:I

    const v3, 0x1050394

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mVisibleMaxHeight:I

    iput-object p3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    new-instance v3, Landroid/widget/MenuPopupWindow;

    iget-object v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/internal/view/menu/MenuAdapter;

    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v3, p2, v0, v4}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    goto :goto_1
.end method

.method private tryShow()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    return v10

    :cond_0
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v5, :cond_2

    :cond_1
    return v8

    :cond_2
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, p0}, Landroid/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/MenuPopupWindow;->setModal(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_a

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setDropDownGravity(I)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->resolveLayoutDirection()Z

    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    iget-object v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v5, v9, v6, v7}, Lcom/android/internal/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    iput-boolean v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v5

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mItemMaxCount:I

    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mVisibleMaxHeight:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setHeight(I)V

    :cond_6
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContentWidth:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setContentWidth(I)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setInputMethodMode(I)V

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupWindowLayout:I

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupWindowLayout:I

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setWindowLayoutType(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mIsParentThemeDeviceDefault:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1090108

    invoke-virtual {v5, v6, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    :goto_1
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v2, v3, v9, v8}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroid/widget/MenuPopupWindow;->show()V

    :cond_9
    return v10

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x10900b6

    invoke-virtual {v5, v6, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    goto :goto_1
.end method


# virtual methods
.method public addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mWasDismissed:Z

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object v2, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->dismiss()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
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

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v5, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    invoke-static {p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    iget v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object v10, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, v9}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v7

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v1}, Landroid/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v9
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mPopup:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/MenuPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/view/menu/StandardMenuPopup;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/StandardMenuPopup;->mAdapter:Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
