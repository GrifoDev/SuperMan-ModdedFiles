.class public Landroid/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ListPopupWindow$ListSelectorHider;,
        Landroid/widget/ListPopupWindow$PopupDataSetObserver;,
        Landroid/widget/ListPopupWindow$PopupScrollListener;,
        Landroid/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sIsDexMode:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Landroid/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mIsDeviceDefaultLight:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static synthetic -get0(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ListPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefaultLight:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/widget/ListPopupWindow;->sIsDexMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x10102ff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x10102ff

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    iput v5, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v5, 0x3ea

    iput v5, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    iput v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v5, 0x7fffffff

    iput v5, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    iput v4, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    new-instance v5, Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v5, p0, v6}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    new-instance v5, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v5, p0, v6}, Landroid/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupTouchInterceptor;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    new-instance v5, Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v5, p0, v6}, Landroid/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupScrollListener;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    new-instance v5, Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v5, p0, v6}, Landroid/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ListSelectorHider;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefaultLight:Z

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    sget-object v5, Lcom/android/internal/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v5, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v5, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1110082

    invoke-virtual {v5, v6, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1110083

    invoke-virtual {v5, v6, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->data:I

    if-nez v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroid/widget/ListPopupWindow;->mIsDeviceDefaultLight:Z

    :cond_1
    sput-boolean v4, Landroid/widget/ListPopupWindow;->sIsDexMode:Z

    return-void

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private buildDropDown()I
    .locals 25

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/ListPopupWindow$2;-><init>(Landroid/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mModal:Z

    xor-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, Landroid/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    new-instance v4, Landroid/widget/ListPopupWindow$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/ListPopupWindow$3;-><init>(Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mScrollListener:Landroid/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v4}, Landroid/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v14, :cond_2

    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "ListPopupWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid hint position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v2, :cond_5

    const/high16 v22, -0x80000000

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    move/from16 v23, v0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    const/4 v11, 0x0

    const/4 v2, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    move-object v10, v12

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v20, v2, v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v2, v4, v5, v15}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v18

    if-gez v18, :cond_9

    const/4 v2, 0x0

    return v2

    :pswitch_0
    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v19, v2, v4

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/16 v20, 0x0

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_b

    :cond_a
    add-int v2, v18, v20

    return v2

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    packed-switch v2, :pswitch_data_1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    sub-int v6, v18, v19

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v16

    if-lez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getPaddingTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v4}, Landroid/widget/DropDownListView;->getPaddingBottom()I

    move-result v4

    add-int v17, v2, v4

    add-int v2, v20, v17

    add-int v19, v19, v2

    :cond_c
    add-int v2, v16, v19

    return v2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, -0x80000000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePromptView()V
    .locals 3

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->hideSelector()V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Landroid/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/ListPopupWindow$1;-><init>(Landroid/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroid/widget/DropDownListView;
    .locals 1

    new-instance v0, Landroid/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x3e

    if-eq p1, v7, :cond_7

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v7

    if-gez v7, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    :cond_0
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v7

    xor-int/lit8 v2, v7, 0x1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :cond_1
    :goto_1
    if-eqz v2, :cond_5

    if-ne p1, v11, :cond_5

    if-gt v4, v5, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    return v9

    :cond_3
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, v10, v9}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8, v10}, Landroid/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    if-ne p1, v12, :cond_6

    if-ge v4, v6, :cond_2

    :cond_6
    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, v10}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v7, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v7}, Landroid/widget/DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    sparse-switch p1, :sswitch_data_0

    :cond_7
    return v10

    :sswitch_0
    return v9

    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v12, :cond_9

    if-ne v4, v6, :cond_7

    return v9

    :cond_9
    if-nez v2, :cond_7

    if-ne p1, v11, :cond_7

    if-ne v4, v5, :cond_7

    return v9

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    return v4

    :cond_3
    return v3
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return v0

    :cond_1
    return v2
.end method

.method public performItemClick(I)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public postShow()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    new-instance v0, Landroid/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0, v1}, Landroid/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$PopupDataSetObserver;)V

    iput-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method setAutoCompleteTextPopup()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/DropDownListView;->mIsAutoCompleteTextPopup:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->setAutoCompleteTextPopup()V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 6

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, -0x2

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " passed to ListPopupWindow#setHeight"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " produces undefined results"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    iput-boolean p1, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->removePromptView()V

    :cond_0
    iput-object p1, p0, Landroid/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/DropDownListView;->setListSelectionHidden(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/DropDownListView;->setSelection(I)V

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/DropDownListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 3

    const/4 v1, -0x2

    sget-boolean v0, Landroid/widget/ListPopupWindow;->sIsDexMode:Z

    if-eqz v0, :cond_0

    if-ge p1, v1, :cond_0

    iput v1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    const-string/jumbo v0, "ListPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "An abnormal value has been passed. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    return-void
.end method

.method public show()V
    .locals 10

    const/4 v4, 0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-direct {p0}, Landroid/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v8

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    xor-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_3

    const/4 v9, -0x1

    :goto_0
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_9

    if-eqz v8, :cond_5

    move v7, v6

    :goto_1
    if-eqz v8, :cond_7

    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_6

    move v0, v5

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :goto_3
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_1

    iget-boolean v1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-gez v9, :cond_c

    move v4, v5

    :goto_4
    if-gez v7, :cond_d

    :goto_5
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_2
    :goto_6
    return-void

    :cond_3
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    goto :goto_0

    :cond_4
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    :cond_5
    const/4 v7, -0x1

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    iget-object v2, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_8

    move v0, v5

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-eq v0, v3, :cond_a

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ge v6, v0, :cond_b

    :cond_a
    move v7, v6

    goto :goto_3

    :cond_b
    iget v7, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_3

    :cond_c
    move v4, v9

    goto :goto_4

    :cond_d
    move v5, v7

    goto :goto_5

    :cond_e
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v5, :cond_13

    const/4 v9, -0x1

    :goto_8
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v5, :cond_15

    const/4 v7, -0x1

    :goto_9
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Landroid/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v2, :cond_f

    iget-boolean v1, p0, Landroid/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    xor-int/lit8 v1, v1, 0x1

    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mTouchInterceptor:Landroid/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_10
    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroid/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0, v5}, Landroid/widget/DropDownListView;->setSelection(I)V

    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mDropDownList:Landroid/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    :cond_12
    iget-boolean v0, p0, Landroid/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/ListPopupWindow;->mHideSelector:Landroid/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    :cond_13
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_14

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    goto :goto_8

    :cond_14
    iget v9, p0, Landroid/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_8

    :cond_15
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-eq v0, v3, :cond_16

    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    if-ge v6, v0, :cond_17

    :cond_16
    move v7, v6

    goto :goto_9

    :cond_17
    iget v0, p0, Landroid/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto/16 :goto_9
.end method
