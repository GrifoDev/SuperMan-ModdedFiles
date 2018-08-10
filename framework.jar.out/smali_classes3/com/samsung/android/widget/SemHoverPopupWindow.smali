.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static final sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private final ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I

.field private final ID_TOOLTIP_VIEW:I

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mCurrentDensity:F

.field private mDeviceRotation:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mEnabled:Z

.field private mFontScale:F

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsCheckedRealDisplayMetricsInDexMode:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsPopupTouchable:Z

.field private mIsSPenPointChanged:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNavigationBarHeight:I

.field private mNeedNotWindowOffset:Z

.field private mNeedToMeasureContentView:Z

.field protected final mParentView:Landroid/view/View;

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final mResources:Landroid/content/res/Resources;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemHoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I

    const v0, 0x1020538

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ID_TOOLTIP_VIEW:I

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    :cond_0
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .locals 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    if-nez v33, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_d

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v33, v0

    if-eqz v33, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    :cond_1
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v5, v0, [I

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v4, v0, [I

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v14, 0x1

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v33

    if-nez v33, :cond_e

    const/4 v14, 0x0

    :cond_2
    if-nez v14, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/16 v33, 0x0

    aget v34, v4, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v35, v0

    const/16 v36, 0x0

    aget v36, v5, v36

    sub-int v35, v35, v36

    add-int v34, v34, v35

    aput v34, v4, v33

    const/16 v33, 0x1

    aget v34, v4, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    const/16 v36, 0x1

    aget v36, v5, v36

    sub-int v35, v35, v36

    add-int v34, v34, v35

    aput v34, v4, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    const/16 v34, 0x0

    aput v33, v5, v34

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    const/16 v34, 0x1

    aput v33, v5, v34

    :cond_3
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v23

    const/16 v33, 0x0

    aget v33, v5, v33

    const/16 v34, 0x0

    aget v34, v4, v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    add-int v33, v33, v24

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->right:I

    const/16 v33, 0x1

    aget v33, v5, v33

    const/16 v34, 0x1

    aget v34, v4, v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    add-int v33, v33, v23

    move/from16 v0, v33

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_10

    :cond_4
    :goto_1
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v13

    if-nez v13, :cond_5

    if-nez v13, :cond_11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    const/16 v34, -0x2710

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    const/16 v34, 0x2710

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    const/16 v34, -0x2710

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    const/16 v34, 0x2710

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    :cond_5
    :goto_2
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    :cond_6
    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v33

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v34

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_14

    const/16 v33, 0x0

    aget v33, v5, v33

    const/16 v34, 0x0

    aget v34, v4, v34

    sub-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-eqz v14, :cond_13

    new-instance v6, Landroid/graphics/Rect;

    const/16 v33, 0x0

    aget v33, v4, v33

    const/16 v34, 0x1

    aget v34, v4, v34

    const/16 v35, 0x0

    aget v35, v4, v35

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v36

    add-int v35, v35, v36

    const/16 v36, 0x1

    aget v36, v4, v36

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_7
    :goto_3
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    if-gez v33, :cond_9

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    if-gez v33, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    move-object/from16 v32, v30

    check-cast v32, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v34, v0

    or-int v33, v33, v34

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x404

    move/from16 v33, v0

    if-nez v33, :cond_16

    const/4 v15, 0x1

    :goto_4
    const/16 v25, 0x0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v33, v0

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0x200

    move/from16 v33, v0

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v33, v0

    const v34, 0x10502ba

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    :cond_8
    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v0, v25

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    if-nez v33, :cond_17

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    const/high16 v34, -0x80000000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    const/high16 v34, -0x80000000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->measure(II)V

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v9, v8}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v33, v0

    if-eqz v33, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    if-nez v33, :cond_a

    new-instance v33, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v33

    if-nez v33, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v33, v0

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    const-string/jumbo v33, "SemHoverPopupWindow"

    const-string/jumbo v34, "computePopupPosition: Call resetTimeout()"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    :cond_c
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 p1, v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    :goto_7
    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/view/View;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    move-object/from16 v28, v29

    check-cast v28, Landroid/view/View;

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v33

    if-nez v33, :cond_f

    const/4 v14, 0x0

    :cond_f
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    goto :goto_7

    :cond_10
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_6

    goto/16 :goto_1

    :cond_11
    if-nez v13, :cond_12

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_5

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_5

    :cond_12
    if-nez v13, :cond_6

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v4, v34

    add-int v33, v33, v34

    const/16 v34, 0x0

    aget v34, v5, v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    const/16 v34, 0x1

    aget v34, v4, v34

    add-int v33, v33, v34

    const/16 v34, 0x1

    aget v34, v5, v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_6

    goto/16 :goto_2

    :cond_13
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v33, v33, v34

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v36, v0

    sub-int v35, v35, v36

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_3

    :cond_14
    const/16 v33, 0x2

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    if-eqz v14, :cond_15

    new-instance v6, Landroid/graphics/Rect;

    const/16 v33, 0x0

    aget v33, v5, v33

    const/16 v34, 0x1

    aget v34, v5, v34

    const/16 v35, 0x0

    aget v35, v5, v35

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v36

    add-int v35, v35, v36

    const/16 v36, 0x1

    aget v36, v5, v36

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v37

    add-int v36, v36, v37

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_8
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v33, v0

    if-gez v33, :cond_7

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v33, v0

    if-gez v33, :cond_7

    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->right:I

    const/16 v33, 0x0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    move/from16 v0, v33

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_15
    new-instance v6, Landroid/graphics/Rect;

    const/16 v33, 0x0

    aget v33, v5, v33

    const/16 v34, 0x1

    aget v34, v5, v34

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8

    :cond_16
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v33, v0

    if-ltz v33, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    if-ltz v33, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto/16 :goto_5

    :cond_18
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v33, v0

    const/high16 v34, -0x80000000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    goto :goto_9

    :cond_19
    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v33, v0

    const/high16 v34, -0x80000000

    invoke-static/range {v33 .. v34}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto/16 :goto_6
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v22, v0

    move/from16 v0, v22

    and-int/lit16 v9, v0, 0xf0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v22, v0

    const v23, 0xf0f0

    and-int v19, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x1050237

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const/4 v10, 0x0

    move-object/from16 v0, v20

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v21, v20

    check-cast v21, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x404

    move/from16 v22, v0

    if-nez v22, :cond_9

    const/4 v10, 0x1

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x1050230

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x10502ba

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/4 v15, 0x0

    if-eqz v10, :cond_1

    move/from16 v15, v17

    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v6, v22, v23

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v5, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v22, v0

    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v12, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v13, v22, v23

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    add-int v22, v13, p4

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    const/16 v22, 0x5050

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    div-int/lit8 v23, p3, 0x2

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v12, v22, v23

    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    :cond_4
    :goto_3
    if-gez v12, :cond_f

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const/4 v12, 0x0

    :cond_6
    if-ge v13, v15, :cond_7

    const/16 v22, 0x3030

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    add-int v13, v22, v23

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_2

    :cond_b
    sparse-switch v9, :sswitch_data_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v22, v0

    add-int v12, v12, v22

    sparse-switch v19, :sswitch_data_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    add-int v13, v13, v22

    goto/16 :goto_2

    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v12, v22, p3

    goto :goto_6

    :sswitch_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    sub-int v12, v22, p3

    goto :goto_6

    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    div-int/lit8 v23, p3, 0x2

    sub-int v12, v22, v23

    goto :goto_6

    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    goto :goto_6

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v12, v22, p3

    goto :goto_6

    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    div-int/lit8 v23, p3, 0x2

    sub-int v12, v22, v23

    goto :goto_6

    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v22, v0

    div-int/lit8 v23, p3, 0x2

    sub-int v12, v22, v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v22

    :goto_8
    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v12, v12, v22

    goto :goto_6

    :cond_d
    const/16 v22, 0x0

    goto :goto_8

    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    sub-int v13, v22, v18

    goto :goto_7

    :sswitch_a
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v22

    div-int/lit8 v23, p4, 0x2

    sub-int v13, v22, v23

    goto :goto_7

    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v13, v22, p4

    goto/16 :goto_7

    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v13, v22, v18

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v13, v22, p4

    goto/16 :goto_3

    :cond_f
    add-int v22, v12, p3

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    sub-int v22, v22, p3

    sub-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_4

    :cond_10
    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v15

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v13, v22, v18

    goto/16 :goto_5

    :cond_11
    move v13, v15

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    add-int v22, v13, p4

    move/from16 v0, v22

    if-le v0, v5, :cond_15

    const/16 v22, 0x5050

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    add-int v22, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_17

    :cond_14
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    div-int/lit8 v23, p3, 0x2

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v12, v22, v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    :cond_15
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v12

    if-gtz v22, :cond_19

    sub-int v22, v6, p3

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v12, v0

    :cond_16
    :goto_b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v13

    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_23

    const/16 v22, 0x3030

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v5, v22

    sub-int v4, v22, v17

    move/from16 v0, p4

    if-lt v4, v0, :cond_1f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v13, v22, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    sub-int v22, v4, v22

    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    add-int v13, v13, v22

    goto/16 :goto_5

    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int v22, v22, p4

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v12

    add-int v22, v22, p3

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1a

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v22, v22, p3

    sub-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, p3

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    const/4 v12, 0x0

    goto/16 :goto_b

    :cond_1a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    if-ltz v22, :cond_16

    move/from16 v0, p3

    if-ge v6, v0, :cond_1b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v6

    sub-int v22, v22, p3

    if-ltz v22, :cond_16

    sub-int v22, v6, p3

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_b

    :cond_1b
    add-int v22, v12, p3

    move/from16 v0, v22

    if-le v0, v6, :cond_1d

    add-int v22, p3, v8

    move/from16 v0, v22

    if-lt v6, v0, :cond_1c

    sub-int v22, v6, p3

    sub-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_b

    :cond_1c
    move/from16 v0, p3

    if-lt v6, v0, :cond_16

    sub-int v22, v6, p3

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v22, v0

    if-eqz v22, :cond_1e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_b

    :cond_1e
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_b

    :cond_1f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v4, v0, :cond_20

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move/from16 v1, p4

    if-le v0, v1, :cond_21

    :cond_20
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v13, v22, v18

    goto/16 :goto_5

    :cond_21
    move/from16 v13, v17

    goto/16 :goto_5

    :cond_22
    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_5

    :cond_23
    add-int v22, v13, p4

    move/from16 v0, v22

    if-le v0, v5, :cond_28

    const/16 v22, 0x5050

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p4

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_24

    add-int v22, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int v22, v22, p4

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    goto/16 :goto_5

    :cond_25
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    move/from16 v22, v0

    if-nez v22, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    move/from16 v22, v0

    if-eqz v22, :cond_26

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_5

    :cond_26
    sub-int v22, v5, p4

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_5

    :cond_27
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_5

    :cond_28
    const/16 v22, 0x3030

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    move/from16 v0, v17

    if-ge v13, v0, :cond_29

    add-int v22, v13, p4

    add-int v22, v22, v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v13, v22, v18

    :cond_29
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v22

    if-eqz v22, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    move-object/from16 v22, v0

    const v23, 0x10502c0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_d
    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int v22, v22, p4

    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_7

    const/16 v22, 0x5050

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v23, p3, 0x2

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v23, v0

    add-int v11, v22, v23

    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v11, v0, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    div-int/lit8 v23, p3, 0x2

    sub-int v3, v22, v23

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v22, v22, v3

    if-ltz v22, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v22, v0

    add-int v12, v3, v22

    :cond_2a
    :goto_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v23, v0

    sub-int v13, v22, v23

    goto/16 :goto_5

    :cond_2b
    move/from16 v0, v17

    if-ge v13, v0, :cond_29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_29

    move/from16 v13, v17

    goto/16 :goto_c

    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    goto/16 :goto_d

    :cond_2d
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v22, v22, p3

    sub-int v12, v22, v8

    goto :goto_e

    :cond_2e
    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v13, v22, p4

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_1
        0x5 -> :sswitch_5
        0x101 -> :sswitch_7
        0x103 -> :sswitch_2
        0x105 -> :sswitch_4
        0x201 -> :sswitch_8
        0x303 -> :sswitch_0
        0x505 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_b
        0x30 -> :sswitch_a
        0x50 -> :sswitch_c
        0x3030 -> :sswitch_9
        0x5050 -> :sswitch_d
    .end sparse-switch
.end method

.method private dismissPopup()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getDeviceRotation()I
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    :cond_0
    return v0
.end method

.method private getNavigationBarHeight()I
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x1050158

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v4, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v4, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v4, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v5, v2, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_0
    sget-object v4, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object v4

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-ne v4, v6, :cond_3

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_4
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initCoverManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initInstance()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x10302f8

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    :goto_0
    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCurrentDensity:F

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    :cond_0
    return-void

    :cond_1
    const v1, 0x10302f7

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private isFreeFormMode()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_2

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v5, :cond_2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private isHoveringSettingEnabled()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isLockScreenMode()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private isMouseHoveringSettingsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isSPenHoveringSettingsEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isTalkBackEnabledForDeX()Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isViewCoverClose()Z
    .locals 5

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    xor-int/lit8 v3, v2, 0x1

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SemHoverPopupWindow"

    const-string/jumbo v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeToolTipContentView()V
    .locals 9

    const v8, 0x1020538

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->fontScale:F

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v8, :cond_5

    :cond_1
    :goto_1
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v5, v5, v2

    if-eqz v5, :cond_2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    :cond_2
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCurrentDensity:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_3

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCurrentDensity:F

    :cond_3
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v5, :cond_6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v6, 0x103012b

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    :goto_2
    const v5, 0x109007a

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v5, v5, v2

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCurrentDensity:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    goto :goto_2
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private setPopupContent()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    packed-switch v0, :pswitch_data_0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    :cond_0
    return-void

    :pswitch_1
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v1, p1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public isHoverPopupPossible()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUspFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const-wide/16 v12, 0x3e8

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v11

    :pswitch_1
    cmp-long v6, v2, v12

    if-lez v6, :cond_1

    return v10

    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v6, :cond_0

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v6, :cond_4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    cmp-long v6, v2, v12

    if-lez v6, :cond_2

    iput-boolean v11, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    return v10

    :cond_2
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    return v10

    :cond_3
    if-nez v1, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    iput-boolean v11, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return v10

    :cond_4
    iget v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    :cond_5
    return v10

    :pswitch_3
    iget-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected postDismiss(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$4;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method protected setInstanceByType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3031

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2ee

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const v0, 0x10302f8

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const v0, 0x10302f7

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method public setNeedNotWindowOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    return-void
.end method

.method public setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 7

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v1, v2, :cond_0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v2, :cond_3

    if-nez v1, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v2, :cond_6

    invoke-virtual {p0, v6}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_6
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-ne v2, v6, :cond_7

    new-instance v2, Lcom/samsung/android/widget/SemHoverPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    :cond_7
    new-instance v2, Lcom/samsung/android/widget/SemHoverPopupWindow$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    return-void
.end method

.method protected showPenPointEffect(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0
.end method

.method public update()V
    .locals 5

    const/4 v4, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_1
.end method
