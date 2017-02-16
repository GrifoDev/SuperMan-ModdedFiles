.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field private static final ANIMATION_BY_POINTER_POSITION_ENABLED:Z

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field private mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mIsUspFeature:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupPosX:I

.field private mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemHoverPopupWindow;)Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemHoverPopupWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    return v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get32(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic -get33(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic -get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V
    .locals 0
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 348
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->DEVICE_TYPE:Ljava/lang/String;

    .line 350
    const-string/jumbo v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    .line 356
    const-string/jumbo v0, "2016B"

    const-string/jumbo v1, "ro.build.scafe.version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const v0, 0x7010001

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ID_TOOLTIP_VIEW:I

    .line 139
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MARGIN_FOR_HOVER_RING:I

    .line 153
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 155
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 223
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 224
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 225
    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 246
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 248
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 250
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 252
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 254
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 256
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 258
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 260
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 266
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 270
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 290
    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->W:F

    .line 293
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->H:F

    .line 296
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->TW:F

    .line 298
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 300
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 302
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 304
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerPadding:F

    .line 306
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 312
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 314
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    .line 316
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    .line 318
    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    .line 320
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 322
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 324
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDirection:I

    .line 326
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 328
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    .line 330
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    .line 332
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 334
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    .line 336
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 338
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 346
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 351
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 352
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 354
    iput v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 355
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 368
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    .line 370
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    .line 373
    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 375
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 454
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 367
    return-void
.end method

.method private computePopupPosition(Landroid/view/View;III)V
    .locals 55
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    if-nez v50, :cond_0

    .line 1324
    return-void

    .line 1327
    :cond_0
    if-eqz p1, :cond_15

    move-object/from16 v50, p1

    :goto_0
    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1328
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 1329
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1330
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1332
    if-eqz p1, :cond_16

    move-object/from16 v7, p1

    .line 1333
    .local v7, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    .line 1336
    .local v19, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v6, 0x0

    .line 1337
    .local v6, "anchorRect":Landroid/graphics/Rect;
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v5, v0, [I

    .line 1338
    .local v5, "anchorLocOnScr":[I
    const/16 v50, 0x2

    move/from16 v0, v50

    new-array v4, v0, [I

    .line 1339
    .local v4, "anchorLocInWindow":[I
    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1340
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1341
    const/16 v25, 0x1

    .line 1342
    .local v25, "isHasIdentityMatrix":Z
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 1343
    .local v34, "realRect":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v50

    if-nez v50, :cond_17

    .line 1344
    const/16 v25, 0x0

    .line 1356
    :cond_1
    if-nez v25, :cond_2

    .line 1357
    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 1358
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    const/16 v51, 0x0

    aput v50, v4, v51

    const/16 v51, 0x0

    aput v50, v5, v51

    .line 1359
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    const/16 v51, 0x1

    aput v50, v4, v51

    const/16 v51, 0x1

    aput v50, v5, v51

    .line 1363
    :cond_2
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 1364
    .local v18, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v36

    .line 1385
    .local v36, "rootview":Landroid/view/View;
    const/16 v27, 0x0

    .line 1386
    .local v27, "isRootViewFullScreen":Z
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getWidth()I

    move-result v38

    .line 1387
    .local v38, "rootviewWidth":I
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v37

    .line 1389
    .local v37, "rootviewHeight":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v50, v0

    move/from16 v0, v38

    move/from16 v1, v50

    if-ne v0, v1, :cond_3

    .line 1390
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v50, v0

    move/from16 v0, v37

    move/from16 v1, v50

    if-ne v0, v1, :cond_3

    .line 1391
    const/16 v27, 0x1

    .line 1395
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v50

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v51

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_1a

    .line 1399
    const/16 v50, 0x0

    aget v50, v5, v50

    const/16 v51, 0x0

    aget v51, v4, v51

    sub-int v50, v50, v51

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1400
    const/16 v50, 0x1

    aget v50, v5, v50

    const/16 v51, 0x1

    aget v51, v4, v51

    sub-int v50, v50, v51

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 1401
    const/16 v50, 0x1

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1403
    if-eqz v25, :cond_19

    .line 1404
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v50, 0x0

    aget v50, v4, v50

    const/16 v51, 0x1

    aget v51, v4, v51

    .line 1405
    const/16 v52, 0x0

    aget v52, v4, v52

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v53

    add-int v52, v52, v53

    .line 1406
    const/16 v53, 0x1

    aget v53, v4, v53

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v54

    add-int v53, v53, v54

    .line 1404
    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1441
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_4
    :goto_2
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    if-gez v50, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    if-gez v50, :cond_6

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v35

    .line 1443
    .local v35, "root":Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v47

    .line 1445
    .local v47, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v47

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v50, v0

    if-eqz v50, :cond_6

    move-object/from16 v49, v47

    .line 1446
    check-cast v49, Landroid/view/WindowManager$LayoutParams;

    .line 1447
    .local v49, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v49

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v50, v0

    move-object/from16 v0, v49

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v51, v0

    or-int v50, v50, v51

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0x404

    move/from16 v50, v0

    if-nez v50, :cond_1c

    const/16 v28, 0x1

    .line 1449
    .local v28, "isSystemUiVisible":Z
    :goto_3
    const/16 v41, 0x0

    .line 1451
    .local v41, "statusBarHeight":I
    move-object/from16 v0, v49

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v50, v0

    move/from16 v0, v50

    and-int/lit16 v0, v0, 0x200

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_5

    if-eqz v28, :cond_5

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    .line 1454
    const v51, 0x1050017

    .line 1453
    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    .line 1456
    :cond_5
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1457
    move/from16 v0, v41

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1458
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1459
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1465
    .end local v28    # "isSystemUiVisible":Z
    .end local v35    # "root":Landroid/view/View;
    .end local v41    # "statusBarHeight":I
    .end local v47    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v49    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    const/16 v51, 0x0

    move/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    .line 1466
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    const/16 v51, 0x0

    move/from16 v0, v51

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameRight:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrameLeft:I

    move/from16 v51, v0

    sub-int v50, v50, v51

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v50, v0

    if-nez v50, :cond_1d

    .line 1482
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v50, v0

    .line 1483
    const/high16 v51, -0x80000000

    .line 1482
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    .line 1484
    .local v48, "widthMeasureSpec":I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v50, v0

    .line 1485
    const/high16 v51, -0x80000000

    .line 1484
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 1504
    .local v22, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v48

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1505
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 1507
    .local v17, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1509
    .local v15, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v15}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1513
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v6, v1, v2, v15}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1515
    new-instance v50, Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v51, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v52, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v53, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v54, v0

    invoke-direct/range {v50 .. v54}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 1520
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v32, v0

    .line 1521
    .local v32, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v33, v0

    .line 1522
    .local v33, "posY":I
    const/4 v8, 0x0

    .line 1530
    .local v8, "canDraw":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_21

    .line 1531
    add-int v50, v33, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_7

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    move/from16 v0, v33

    move/from16 v1, v50

    if-lt v0, v1, :cond_20

    .line 1533
    :cond_7
    :goto_5
    const/4 v8, 0x1

    .line 1541
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v50, v0

    if-nez v50, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v50, v0

    if-eqz v50, :cond_32

    :cond_9
    if-eqz v8, :cond_32

    .line 1542
    const/16 v26, 0x1

    .line 1544
    .local v26, "isPopupAboveHorizontal":Z
    const/high16 v50, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v29

    .line 1547
    .local v29, "marginForHoverRing":I
    const/4 v9, 0x0

    .line 1548
    .local v9, "containerLeftOnWindow":I
    const/4 v14, 0x0

    .line 1549
    .local v14, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_23

    .line 1551
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    move/from16 v0, v32

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v50

    const/16 v51, 0x0

    .line 1550
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1553
    add-int v50, v32, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 1554
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v51, v0

    .line 1552
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1565
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 1568
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v50

    move/from16 v0, v33

    move/from16 v1, v50

    if-le v0, v1, :cond_24

    .line 1569
    const/16 v26, 0x0

    .line 1575
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    if-nez v50, :cond_b

    .line 1576
    new-instance v50, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1578
    const-string/jumbo v50, "SemHoverPopupWindow"

    const-string/jumbo v51, "FingerSemHoverPopupWindow: kdhpoint2"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    move/from16 v52, v0

    invoke-virtual/range {v50 .. v52}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1583
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    if-eqz v50, :cond_d

    .line 1584
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v50, v0

    if-nez v50, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v50, v0

    if-eqz v50, :cond_25

    .line 1585
    :cond_c
    const-string/jumbo v50, "SemHoverPopupWindow"

    const-string/jumbo v51, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x1

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 1594
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 1595
    .local v16, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v16, :cond_26

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v50, v0

    new-instance v51, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v51

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v50 .. v51}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v50

    if-eqz v50, :cond_e

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_27

    .line 1609
    :cond_e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v50

    if-nez v50, :cond_f

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1613
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v50, v0

    const/16 v51, -0x2

    invoke-virtual/range {v50 .. v51}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v50, v0

    const/16 v51, -0x2

    invoke-virtual/range {v50 .. v51}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1617
    sub-int v50, v9, v32

    invoke-static/range {v50 .. v50}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 1618
    .local v11, "containerPaddingLeft":I
    add-int v50, v32, v17

    sub-int v50, v14, v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 1619
    .local v12, "containerPaddingRight":I
    const/4 v13, 0x0

    .line 1620
    .local v13, "containerPaddingTop":I
    const/4 v10, 0x0

    .line 1621
    .local v10, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v50, v0

    if-eqz v50, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v50, v0

    if-eqz v50, :cond_29

    .line 1622
    if-eqz v26, :cond_28

    .line 1623
    move/from16 v10, v29

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v29

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1654
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2f

    .line 1655
    if-eqz v26, :cond_10

    .line 1656
    move/from16 v32, v9

    .line 1672
    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v50, v0

    sub-int v50, v50, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v51, v0

    sub-int v23, v50, v51

    .line 1673
    .local v23, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    sub-int v50, v50, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v51, v0

    sub-int v24, v50, v51

    .line 1684
    .local v24, "hoverPointYonContainer":I
    if-eqz v26, :cond_31

    .line 1687
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v46

    .line 1688
    .local v46, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v46, :cond_11

    .line 1724
    :cond_11
    div-int/lit8 v50, v17, 0x2

    add-int v39, v11, v50

    .line 1725
    .local v39, "startx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    move/from16 v50, v0

    sub-int v40, v15, v50

    .line 1726
    .local v40, "starty":I
    move/from16 v20, v23

    .line 1727
    .local v20, "endx":I
    move/from16 v21, v24

    .line 1729
    .local v21, "endy":I
    add-int/lit8 v50, v11, 0xa

    move/from16 v0, v23

    move/from16 v1, v50

    if-ge v0, v1, :cond_12

    .line 1801
    .end local v9    # "containerLeftOnWindow":I
    .end local v10    # "containerPaddingBottom":I
    .end local v11    # "containerPaddingLeft":I
    .end local v12    # "containerPaddingRight":I
    .end local v13    # "containerPaddingTop":I
    .end local v14    # "containerRightOnWindow":I
    .end local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v20    # "endx":I
    .end local v21    # "endy":I
    .end local v23    # "hoverPointXonContainer":I
    .end local v24    # "hoverPointYonContainer":I
    .end local v26    # "isPopupAboveHorizontal":Z
    .end local v29    # "marginForHoverRing":I
    .end local v39    # "startx":I
    .end local v40    # "starty":I
    .end local v46    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    :goto_e
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 1802
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1818
    sget-boolean v50, Lcom/samsung/android/widget/SemHoverPopupWindow;->ANIMATION_BY_POINTER_POSITION_ENABLED:Z

    if-eqz v50, :cond_13

    .line 1819
    mul-int/lit8 v50, v17, 0x1

    div-int/lit8 v50, v50, 0x3

    add-int v30, v32, v50

    .line 1820
    .local v30, "oneThirdX":I
    mul-int/lit8 v50, v17, 0x2

    div-int/lit8 v50, v50, 0x3

    add-int v42, v32, v50

    .line 1821
    .local v42, "twoThirdX":I
    mul-int/lit8 v50, v15, 0x1

    div-int/lit8 v50, v50, 0x3

    add-int v31, v33, v50

    .line 1822
    .local v31, "oneThirdY":I
    mul-int/lit8 v50, v15, 0x2

    div-int/lit8 v50, v50, 0x3

    add-int v43, v33, v50

    .line 1823
    .local v43, "twoThirdY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v30

    if-ge v0, v1, :cond_3a

    .line 1824
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-le v0, v1, :cond_38

    .line 1825
    const v50, 0x1030514

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 1849
    .end local v30    # "oneThirdX":I
    .end local v31    # "oneThirdY":I
    .end local v42    # "twoThirdX":I
    .end local v43    # "twoThirdY":I
    :cond_13
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1851
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v50, v0

    if-nez v50, :cond_14

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    if-eqz v50, :cond_14

    .line 1853
    const-string/jumbo v50, "SemHoverPopupWindow"

    const-string/jumbo v51, "SemHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    .line 1321
    :cond_14
    return-void

    .line 1327
    .end local v4    # "anchorLocInWindow":[I
    .end local v5    # "anchorLocOnScr":[I
    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    .end local v7    # "anchorView":Landroid/view/View;
    .end local v8    # "canDraw":Z
    .end local v15    # "contentHeight":I
    .end local v17    # "contentWidth":I
    .end local v18    # "displayFrame":Landroid/graphics/Rect;
    .end local v19    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v22    # "heightMeasureSpec":I
    .end local v25    # "isHasIdentityMatrix":Z
    .end local v27    # "isRootViewFullScreen":Z
    .end local v32    # "posX":I
    .end local v33    # "posY":I
    .end local v34    # "realRect":Landroid/graphics/Rect;
    .end local v36    # "rootview":Landroid/view/View;
    .end local v37    # "rootviewHeight":I
    .end local v38    # "rootviewWidth":I
    .end local v48    # "widthMeasureSpec":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v50, v0

    goto/16 :goto_0

    .line 1332
    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    .restart local v7    # "anchorView":Landroid/view/View;
    goto/16 :goto_1

    .line 1346
    .restart local v4    # "anchorLocInWindow":[I
    .restart local v5    # "anchorLocOnScr":[I
    .local v6, "anchorRect":Landroid/graphics/Rect;
    .restart local v19    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v25    # "isHasIdentityMatrix":Z
    .restart local v34    # "realRect":Landroid/graphics/Rect;
    :cond_17
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    .line 1347
    .local v45, "viewParent":Landroid/view/ViewParent;
    :goto_10
    move-object/from16 v0, v45

    instance-of v0, v0, Landroid/view/View;

    move/from16 v50, v0

    if-eqz v50, :cond_1

    move-object/from16 v44, v45

    .line 1348
    check-cast v44, Landroid/view/View;

    .line 1350
    .local v44, "view":Landroid/view/View;
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v50

    if-nez v50, :cond_18

    .line 1351
    const/16 v25, 0x0

    .line 1353
    :cond_18
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    goto :goto_10

    .line 1408
    .end local v44    # "view":Landroid/view/View;
    .end local v45    # "viewParent":Landroid/view/ViewParent;
    .restart local v18    # "displayFrame":Landroid/graphics/Rect;
    .restart local v27    # "isRootViewFullScreen":Z
    .restart local v36    # "rootview":Landroid/view/View;
    .restart local v37    # "rootviewHeight":I
    .restart local v38    # "rootviewWidth":I
    :cond_19
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v50, 0x0

    aget v50, v4, v50

    const/16 v51, 0x1

    aget v51, v4, v51

    .line 1409
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    .line 1408
    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "anchorRect":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 1414
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_1a
    const/16 v50, 0x2

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 1415
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 1416
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 1418
    if-eqz v25, :cond_1b

    .line 1419
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v50, 0x0

    aget v50, v5, v50

    const/16 v51, 0x1

    aget v51, v5, v51

    .line 1420
    const/16 v52, 0x0

    aget v52, v5, v52

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v53

    add-int v52, v52, v53

    .line 1421
    const/16 v53, 0x1

    aget v53, v5, v53

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v54

    add-int v53, v53, v54

    .line 1419
    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1431
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :goto_11
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    if-gez v50, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    if-gez v50, :cond_4

    .line 1432
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1433
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1434
    const/16 v50, 0x0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1435
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v50, v0

    move/from16 v0, v50

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 1423
    .local v6, "anchorRect":Landroid/graphics/Rect;
    :cond_1b
    new-instance v6, Landroid/graphics/Rect;

    .end local v6    # "anchorRect":Landroid/graphics/Rect;
    const/16 v50, 0x0

    aget v50, v5, v50

    const/16 v51, 0x1

    aget v51, v5, v51

    .line 1424
    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v52, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v53, v0

    .line 1423
    move/from16 v0, v50

    move/from16 v1, v51

    move/from16 v2, v52

    move/from16 v3, v53

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v6, "anchorRect":Landroid/graphics/Rect;
    goto :goto_11

    .line 1447
    .restart local v35    # "root":Landroid/view/View;
    .restart local v47    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v49    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1c
    const/16 v28, 0x0

    .restart local v28    # "isSystemUiVisible":Z
    goto/16 :goto_3

    .line 1487
    .end local v28    # "isSystemUiVisible":Z
    .end local v35    # "root":Landroid/view/View;
    .end local v47    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v49    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v50, v0

    if-ltz v50, :cond_1e

    .line 1488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v50, v0

    .line 1489
    const/high16 v51, 0x40000000    # 2.0f

    .line 1488
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    .line 1495
    .restart local v48    # "widthMeasureSpec":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v50, v0

    if-ltz v50, :cond_1f

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v50, v0

    .line 1497
    const/high16 v51, 0x40000000    # 2.0f

    .line 1496
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1491
    .end local v22    # "heightMeasureSpec":I
    .end local v48    # "widthMeasureSpec":I
    :cond_1e
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v50, v0

    .line 1492
    const/high16 v51, -0x80000000

    .line 1491
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    .restart local v48    # "widthMeasureSpec":I
    goto :goto_12

    .line 1499
    :cond_1f
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v50, v0

    .line 1500
    const/high16 v51, -0x80000000

    .line 1499
    invoke-static/range {v50 .. v51}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .restart local v22    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 1532
    .restart local v8    # "canDraw":Z
    .restart local v15    # "contentHeight":I
    .restart local v17    # "contentWidth":I
    .restart local v32    # "posX":I
    .restart local v33    # "posY":I
    :cond_20
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    add-int v50, v50, v33

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-lt v0, v1, :cond_8

    goto/16 :goto_5

    .line 1535
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_8

    .line 1536
    add-int v50, v33, v15

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_22

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    move/from16 v0, v33

    move/from16 v1, v50

    if-lt v0, v1, :cond_8

    .line 1537
    :cond_22
    const/4 v8, 0x1

    goto/16 :goto_6

    .line 1555
    .restart local v9    # "containerLeftOnWindow":I
    .restart local v14    # "containerRightOnWindow":I
    .restart local v26    # "isPopupAboveHorizontal":Z
    .restart local v29    # "marginForHoverRing":I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_a

    .line 1557
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v50, v0

    move/from16 v0, v32

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v50

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v51, v0

    move/from16 v0, v51

    neg-int v0, v0

    move/from16 v51, v0

    .line 1556
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1559
    add-int v50, v32, v17

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 1560
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v51, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v52, v0

    sub-int v51, v51, v52

    .line 1558
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1561
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v50, v0

    const/16 v51, -0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    move/from16 v50, v0

    move/from16 v0, v50

    if-le v14, v0, :cond_a

    .line 1562
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    goto/16 :goto_7

    .line 1571
    :cond_24
    const/16 v26, 0x1

    goto/16 :goto_8

    .line 1588
    :cond_25
    const-string/jumbo v50, "SemHoverPopupWindow"

    const-string/jumbo v51, "FingerSemHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_9

    .line 1599
    .restart local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_26
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1600
    move-object/from16 v0, v16

    iput v15, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_a

    .line 1606
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_b

    .line 1627
    .restart local v10    # "containerPaddingBottom":I
    .restart local v11    # "containerPaddingLeft":I
    .restart local v12    # "containerPaddingRight":I
    .restart local v13    # "containerPaddingTop":I
    :cond_28
    move/from16 v13, v29

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    .line 1629
    const/16 v51, 0x0

    .line 1628
    move-object/from16 v0, v50

    move/from16 v1, v29

    move/from16 v2, v51

    invoke-virtual {v0, v11, v1, v12, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1632
    :cond_29
    if-eqz v26, :cond_2c

    .line 1633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2b

    .line 1634
    move/from16 v10, v29

    .line 1639
    :cond_2a
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v0, v11, v1, v12, v10}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1635
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2a

    .line 1636
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v50, v0

    add-int v50, v50, v29

    .line 1637
    add-int v51, v33, v15

    .line 1636
    sub-int v10, v50, v51

    goto :goto_13

    .line 1642
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x2

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2e

    .line 1643
    move/from16 v13, v29

    .line 1647
    :cond_2d
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    .line 1648
    const/16 v51, 0x0

    .line 1647
    move-object/from16 v0, v50

    move/from16 v1, v51

    invoke-virtual {v0, v11, v13, v12, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c

    .line 1644
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_2d

    .line 1645
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v50, v0

    sub-int v50, v50, v29

    sub-int v13, v33, v50

    goto :goto_14

    .line 1662
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v50, v0

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-ne v0, v1, :cond_10

    .line 1663
    if-eqz v26, :cond_30

    .line 1664
    move/from16 v32, v9

    .line 1665
    goto/16 :goto_d

    .line 1667
    :cond_30
    move/from16 v32, v9

    .line 1668
    sub-int v33, v33, v13

    goto/16 :goto_d

    .line 1740
    .restart local v23    # "hoverPointXonContainer":I
    .restart local v24    # "hoverPointYonContainer":I
    :cond_31
    invoke-virtual {v7}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v46

    .line 1741
    .restart local v46    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v46, :cond_12

    goto/16 :goto_e

    .line 1776
    .end local v9    # "containerLeftOnWindow":I
    .end local v10    # "containerPaddingBottom":I
    .end local v11    # "containerPaddingLeft":I
    .end local v12    # "containerPaddingRight":I
    .end local v13    # "containerPaddingTop":I
    .end local v14    # "containerRightOnWindow":I
    .end local v16    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "hoverPointXonContainer":I
    .end local v24    # "hoverPointYonContainer":I
    .end local v26    # "isPopupAboveHorizontal":Z
    .end local v29    # "marginForHoverRing":I
    .end local v46    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v50, v0

    if-eqz v50, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v50, v0

    if-eqz v50, :cond_34

    .line 1794
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    if-eqz v50, :cond_12

    .line 1796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1797
    const/16 v50, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_e

    .line 1777
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    if-nez v50, :cond_35

    .line 1778
    new-instance v50, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v51, v0

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 1780
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v50

    if-nez v50, :cond_37

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1789
    :cond_36
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    if-eqz v50, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v50, v0

    const/16 v51, 0x3

    move/from16 v0, v50

    move/from16 v1, v51

    if-eq v0, v1, :cond_12

    .line 1790
    const-string/jumbo v50, "SemHoverPopupWindow"

    const-string/jumbo v51, "computePopupPosition: Call resetTimeout()"

    invoke-static/range {v50 .. v51}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_e

    .line 1782
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_36

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_15

    .line 1826
    .restart local v30    # "oneThirdX":I
    .restart local v31    # "oneThirdY":I
    .restart local v42    # "twoThirdX":I
    .restart local v43    # "twoThirdY":I
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-gt v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-lt v0, v1, :cond_39

    .line 1827
    const v50, 0x1030515

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1828
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 1829
    const v50, 0x1030516

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1831
    :cond_3a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v50, v0

    move/from16 v0, v30

    move/from16 v1, v50

    if-gt v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v42

    if-gt v0, v1, :cond_3d

    .line 1832
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-le v0, v1, :cond_3b

    .line 1833
    const v50, 0x1030517

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1834
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-gt v0, v1, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-lt v0, v1, :cond_3c

    .line 1835
    const v50, 0x1030518

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1836
    :cond_3c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 1837
    const v50, 0x1030519

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1839
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v42

    if-le v0, v1, :cond_13

    .line 1840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-le v0, v1, :cond_3e

    .line 1841
    const v50, 0x103051a

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1842
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v43

    if-gt v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-lt v0, v1, :cond_3f

    .line 1843
    const v50, 0x103051b

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f

    .line 1844
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    move/from16 v50, v0

    move/from16 v0, v50

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 1845
    const v50, 0x103051c

    move/from16 v0, v50

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    goto/16 :goto_f
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 24
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1868
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 1869
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1870
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    .line 1871
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    .line 1873
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1874
    .local v9, "posX":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1880
    .local v10, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v7, v0, 0xf0f

    .line 1881
    .local v7, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    const v22, 0xf0f0

    and-int v16, v21, v22

    .line 1883
    .local v16, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050375

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 1885
    .local v14, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050376

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1886
    .local v15, "tooltipTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 1888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1889
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int v9, v21, v22

    .line 1890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v10, v21, v22

    .line 1983
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1985
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 1986
    .local v12, "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 1987
    .local v17, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 1988
    .local v8, "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v19, v17

    .line 1989
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 1990
    .local v19, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_d

    const/4 v8, 0x1

    .line 1993
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_1
    const/4 v13, 0x0

    .line 1995
    .local v13, "statusBarHeight":I
    if-eqz v8, :cond_2

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1998
    :cond_2
    add-int v21, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2000
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2001
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2002
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2003
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 2034
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    :goto_2
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2038
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105037e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2039
    .local v6, "fulltextAirviewShiftX":I
    if-gez v9, :cond_11

    .line 2040
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2045
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2046
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2047
    const/4 v9, 0x0

    .line 2205
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f

    .line 2206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2207
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2208
    .restart local v12    # "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2209
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 2210
    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v19, v17

    .line 2211
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 2212
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_18

    const/4 v8, 0x1

    .line 2215
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    :goto_5
    const/4 v13, 0x0

    .line 2217
    .restart local v13    # "statusBarHeight":I
    if-eqz v8, :cond_7

    .line 2218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2220
    :cond_7
    if-ge v10, v13, :cond_1c

    .line 2223
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 2224
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_19

    .line 2225
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    .line 2227
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2384
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 2385
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 1866
    return-void

    .line 1891
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1892
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1893
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_0

    .line 1897
    :cond_a
    sparse-switch v7, :sswitch_data_0

    .line 1939
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 1944
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 1948
    sparse-switch v16, :sswitch_data_1

    .line 1970
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 1975
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    goto/16 :goto_0

    .line 1899
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v9, v21, p3

    .line 1900
    goto :goto_7

    .line 1903
    :sswitch_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    goto :goto_7

    .line 1907
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 1908
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    sub-int v21, v21, p3

    add-int v9, v21, v14

    goto :goto_7

    .line 1910
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    sub-int v9, v21, p3

    goto :goto_7

    .line 1915
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 1916
    goto :goto_7

    .line 1919
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    goto :goto_7

    .line 1923
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    sub-int v9, v21, p3

    .line 1924
    goto :goto_7

    .line 1927
    :sswitch_6
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 1931
    :sswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 1932
    goto :goto_7

    .line 1935
    :sswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    move/from16 v21, v0

    div-int/lit8 v22, p3, 0x2

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v9, v21, v22

    .line 1936
    goto :goto_7

    .line 1950
    :sswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 1951
    goto :goto_8

    .line 1953
    :sswitch_a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    goto :goto_8

    .line 1956
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    div-int/lit8 v22, p4, 0x2

    sub-int v10, v21, v22

    .line 1957
    goto/16 :goto_8

    .line 1959
    :sswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 1960
    goto/16 :goto_8

    .line 1962
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1963
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    add-int v10, v21, v15

    .line 1967
    :goto_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    goto/16 :goto_8

    .line 1965
    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    .line 1990
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v12    # "root":Landroid/view/View;
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2007
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2008
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2009
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 2010
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2012
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_10

    .line 2013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2014
    .restart local v13    # "statusBarHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_f

    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2015
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2016
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    goto/16 :goto_2

    .line 2020
    .end local v13    # "statusBarHeight":I
    :cond_10
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    add-int v21, v21, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 2021
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    div-int/lit8 v22, p3, 0x2

    sub-int v9, v21, v22

    .line 2022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v21, v0

    add-int v9, v9, v21

    goto/16 :goto_2

    .line 2041
    .restart local v6    # "fulltextAirviewShiftX":I
    :cond_11
    add-int v21, v9, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 2042
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, p3

    sub-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_3

    .line 2050
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2052
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    if-gtz v21, :cond_14

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105037e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2054
    .restart local v6    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2056
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 2057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 2058
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    .line 2059
    const/4 v9, 0x0

    .line 2062
    :cond_13
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2065
    .local v18, "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2070
    .local v2, "cocktailRect":Landroid/graphics/Rect;
    goto/16 :goto_4

    .line 2084
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v6    # "fulltextAirviewShiftX":I
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    add-int v21, v21, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_17

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x105037e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 2088
    .restart local v6    # "fulltextAirviewShiftX":I
    :try_start_0
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2090
    .restart local v18    # "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2100
    .restart local v2    # "cocktailRect":Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeformMode()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "window"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 2102
    .local v20, "wm":Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2103
    .local v3, "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2104
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v21, v21, v9

    add-int v21, v21, p3

    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_15

    .line 2105
    iget v0, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    sub-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2110
    .end local v3    # "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v20    # "wm":Landroid/view/WindowManager;
    :cond_15
    :goto_a
    add-int v21, v9, p3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2115
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 2116
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, p3

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2117
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 2108
    .restart local v2    # "cocktailRect":Landroid/graphics/Rect;
    .restart local v18    # "windowManager":Landroid/view/IWindowManager;
    :cond_16
    :try_start_1
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    sub-int v21, v21, v6

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto :goto_a

    .line 2112
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    :catch_0
    move-exception v5

    .line 2113
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "SemHoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2121
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "fulltextAirviewShiftX":I
    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    if-lez v21, :cond_5

    .line 2122
    const-string/jumbo v21, "window"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 2125
    .restart local v18    # "windowManager":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    .line 2143
    .restart local v2    # "cocktailRect":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p3

    move/from16 v0, v21

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto/16 :goto_4

    .line 2212
    .end local v2    # "cocktailRect":Landroid/graphics/Rect;
    .end local v18    # "windowManager":Landroid/view/IWindowManager;
    .restart local v8    # "isSystemUiVisible":Z
    .restart local v12    # "root":Landroid/view/View;
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 2229
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v13    # "statusBarHeight":I
    :cond_19
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    .line 2230
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2232
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2236
    :cond_1a
    move v10, v13

    .line 2237
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2238
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2243
    :cond_1b
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    .line 2246
    :cond_1c
    add-int v21, v10, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    .line 2248
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 2249
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    .line 2250
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2253
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2255
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2256
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2260
    :cond_1d
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    goto/16 :goto_6

    .line 2265
    :cond_1e
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2266
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2267
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2270
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "isSystemUiVisible":Z
    .end local v12    # "root":Landroid/view/View;
    .end local v13    # "statusBarHeight":I
    .end local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    .line 2277
    .restart local v12    # "root":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 2278
    .restart local v17    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, 0x0

    .line 2280
    .restart local v8    # "isSystemUiVisible":Z
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v21, v0

    if-eqz v21, :cond_20

    move-object/from16 v19, v17

    .line 2281
    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 2282
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v22, v0

    or-int v21, v21, v22

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x404

    move/from16 v21, v0

    if-nez v21, :cond_23

    const/4 v8, 0x1

    .line 2285
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    :goto_c
    const/4 v13, 0x0

    .line 2286
    .restart local v13    # "statusBarHeight":I
    const/4 v11, 0x0

    .line 2287
    .local v11, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050017

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 2288
    if-eqz v8, :cond_21

    .line 2289
    move v11, v13

    .line 2292
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2293
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    move/from16 v0, v21

    if-ge v0, v13, :cond_29

    .line 2295
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    .line 2296
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_24

    .line 2297
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2298
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_22

    .line 2299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    add-int v10, v10, v21

    .line 2301
    :cond_22
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2282
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v11    # "realStatusBarHeight":I
    .end local v13    # "statusBarHeight":I
    .restart local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 2303
    .end local v19    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v11    # "realStatusBarHeight":I
    .restart local v13    # "statusBarHeight":I
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_25

    .line 2304
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2306
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2309
    :cond_25
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    sub-int v21, v21, p4

    sub-int v21, v21, v11

    if-lez v21, :cond_26

    .line 2311
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2312
    :cond_26
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    sub-int v21, v21, p4

    if-lez v21, :cond_27

    .line 2314
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2315
    const-string/jumbo v21, "SemHoverPopupWindow"

    const-string/jumbo v22, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    goto/16 :goto_6

    .line 2318
    :cond_27
    move v10, v13

    .line 2319
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2320
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2324
    :cond_28
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_6

    .line 2327
    :cond_29
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2e

    .line 2328
    const/16 v21, 0x5050

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    .line 2329
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p4

    if-lt v0, v1, :cond_2b

    .line 2330
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_2a

    .line 2331
    add-int v21, v10, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2a

    .line 2332
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2334
    :cond_2a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2337
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2339
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2340
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2344
    :cond_2b
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v21, v21, v10

    add-int v21, v21, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 2347
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v10, v21, p4

    .line 2348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    move/from16 v21, v0

    sub-int v10, v10, v21

    .line 2349
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 2351
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2352
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2357
    :cond_2c
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-eq v0, v11, :cond_2d

    .line 2359
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    sub-int v21, v21, p4

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    .line 2361
    :cond_2d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v21, v21, p4

    move/from16 v0, v21

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_6

    .line 2365
    :cond_2e
    const/16 v21, 0x3030

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_30

    .line 2366
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 2367
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2368
    if-ge v10, v13, :cond_2f

    .line 2369
    add-int v21, v10, p4

    add-int v21, v21, v13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2f

    .line 2370
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v21, v21, v22

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    .line 2371
    move-object/from16 v0, p1

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    .line 2372
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 2375
    :cond_2f
    const-string/jumbo v21, "SemHoverPopupWindow"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2377
    :cond_30
    if-ge v10, v13, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v13, :cond_8

    .line 2378
    move v10, v13

    goto/16 :goto_6

    .line 1897
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

    .line 1948
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2942
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2945
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2946
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2947
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 2948
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 2949
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 2952
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2955
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2956
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 2939
    :cond_2
    return-void

    .line 2942
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private getStateHashCode()I
    .locals 4

    .prologue
    .line 2997
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 2998
    .local v0, "hashCode":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3000
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    .line 3001
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    .line 3000
    or-int/2addr v2, v3

    .line 3002
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    .line 3000
    or-int/2addr v2, v3

    .line 3003
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    .line 3000
    or-int/2addr v2, v3

    .line 3004
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    .line 3000
    or-int/2addr v2, v3

    .line 3005
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    .line 3000
    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 3007
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 3008
    .local v1, "location":[I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3009
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 3012
    .end local v1    # "location":[I
    :cond_0
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1030
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initCoverManager()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 541
    const-string/jumbo v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 542
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 543
    const-string/jumbo v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    return-void
.end method

.method private isFreeformMode()Z
    .locals 8

    .prologue
    .line 796
    const/4 v1, 0x0

    .line 797
    .local v1, "isFreeformMode":Z
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 798
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 799
    .local v0, "defaultRealDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 801
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 803
    .local v2, "nowDisplayMetrics":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eq v4, v5, :cond_1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eq v4, v5, :cond_1

    .line 804
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 806
    :goto_0
    const/4 v1, 0x1

    .line 808
    :cond_0
    return v1

    .line 805
    :cond_1
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    goto :goto_0
.end method

.method private isViewCoverClose()Z
    .locals 5

    .prologue
    .line 781
    const/4 v2, 0x1

    .line 782
    .local v2, "isCoverOpen":Z
    const/4 v0, 0x0

    .line 784
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 792
    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "isCoverOpen":Z
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 789
    .restart local v2    # "isCoverOpen":Z
    :catch_0
    move-exception v1

    .line 790
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SemHoverPopupWindow"

    const-string/jumbo v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 792
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "isCoverOpen":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private makeToolTipContentView()V
    .locals 8

    .prologue
    const v7, 0x7010001

    const/4 v6, 0x0

    .line 1286
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1288
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1290
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1285
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1294
    .local v1, "fontScale":F
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v7, :cond_6

    .line 1295
    :cond_1
    :goto_1
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_2

    .line 1296
    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 1299
    :cond_2
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v4, :cond_7

    .line 1300
    :cond_4
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1301
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1305
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_2
    const v4, 0x1090077

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1306
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 1307
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setId(I)V

    .line 1309
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1294
    :cond_6
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    goto :goto_1

    .line 1303
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_2
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const v1, 0xc369

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1036
    :cond_0
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .locals 3
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    const/4 v0, 0x0

    .line 2978
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 2979
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

    .line 2980
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 2981
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

    .line 2978
    :cond_0
    return v0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 3016
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 3017
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3018
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3023
    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3024
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3015
    :cond_2
    :goto_0
    return-void

    .line 3026
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 564
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    .line 565
    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 574
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    return-void

    .line 566
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    .line 567
    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 569
    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1231
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    packed-switch v4, :pswitch_data_0

    .line 1262
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 1267
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v4, :cond_1

    .line 1268
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    .line 1224
    :cond_1
    return-void

    .line 1233
    :pswitch_0
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1236
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    goto :goto_0

    .line 1239
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    .line 1242
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 1243
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    if-eqz v4, :cond_0

    .line 1246
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v4, :cond_4

    .line 1247
    :cond_3
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1248
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1253
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_1
    :try_start_0
    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1254
    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1255
    .end local v3    # "v":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1256
    .local v1, "ie":Landroid/view/InflateException;
    iput-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    .line 1250
    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_1

    .line 1231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1142
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1146
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

    .line 1147
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 1155
    return-void

    .line 1157
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3

    .line 1158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1161
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 1163
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1169
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    .line 1171
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    .line 1139
    return-void
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    .line 2419
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 2421
    return-void

    .line 2425
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    .line 2427
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez v0, :cond_1

    .line 2429
    return-void

    .line 2433
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_2

    .line 2434
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2451
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 2453
    return-void

    .line 2435
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_3

    .line 2436
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 2448
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 2457
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2458
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2418
    :goto_1
    return-void

    .line 2461
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 2464
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 2465
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 2464
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_1

    .line 2467
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method


# virtual methods
.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .locals 2
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2990
    if-nez p2, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2993
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1185
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1

    .line 1186
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1187
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1188
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1189
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1191
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1211
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1212
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1218
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object v1

    .line 1211
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2924
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    .line 2925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 2928
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    .line 2930
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 2931
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 2932
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 2933
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 2922
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getFHAnimationEnabled()Z
    .locals 1

    .prologue
    .line 2672
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .locals 1

    .prologue
    .line 2662
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .locals 1

    .prologue
    .line 2682
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .locals 1

    .prologue
    .line 832
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected initInstance()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 476
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 477
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    .line 478
    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 480
    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 481
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    .line 482
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    .line 483
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 484
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 485
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 486
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 487
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    .line 488
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    .line 489
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 490
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 491
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 492
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 494
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 495
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 496
    const v1, 0x1030513

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 498
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 500
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 502
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    .line 503
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    .line 505
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 506
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 507
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 508
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 509
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 510
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 511
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 512
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 513
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mOverTopBoundary:Z

    .line 514
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misGravityBottomUnder:Z

    .line 516
    iput v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    .line 517
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 518
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 519
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    .line 520
    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 521
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 522
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 523
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 524
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    .line 526
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 527
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x165

    const v2, 0x1080363

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    .line 528
    const/16 v1, 0x164

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    .line 529
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFullTextPopupRightLimit:I

    .line 531
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    .line 532
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 533
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 534
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mFontScale:F

    .line 535
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    .line 475
    return-void
.end method

.method public isDialer()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 709
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 711
    .local v0, "isFingerHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 712
    if-eq p1, v1, :cond_5

    .line 714
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 715
    const-string/jumbo v4, "finger_air_view_information_preview"

    .line 714
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 716
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 717
    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    .line 716
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    .line 716
    if-eqz v3, :cond_1

    .line 718
    return v2

    .end local v0    # "isFingerHoveringOn":Z
    :cond_0
    move v0, v2

    .line 709
    goto :goto_0

    .line 721
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 722
    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    .line 721
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 723
    return v1

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    if-nez v3, :cond_5

    .line 726
    return v1

    .line 731
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 732
    const-string/jumbo v4, "finger_air_view_speed_dial_tip"

    .line 731
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    .line 732
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isDialer()Z

    move-result v3

    .line 731
    if-eqz v3, :cond_4

    .line 733
    return v1

    .line 735
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 736
    const-string/jumbo v4, "finger_air_view_pregress_bar_preview"

    .line 735
    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 736
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isProgressBar()Z

    move-result v3

    .line 735
    if-eqz v3, :cond_5

    .line 737
    return v1

    .line 742
    :cond_5
    return v2
.end method

.method public isHoverPopupPossible()Z
    .locals 3

    .prologue
    .line 603
    const/4 v0, 0x1

    .line 605
    .local v0, "ret":Z
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-nez v1, :cond_1

    .line 606
    const/4 v0, 0x0

    .line 616
    :cond_0
    :goto_0
    return v0

    .line 607
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 608
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 611
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 612
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_4
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 614
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isHoveringSettingEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 666
    const/4 v0, 0x0

    .line 672
    .local v0, "ret":Z
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 673
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 680
    .end local v0    # "ret":Z
    :cond_0
    :goto_0
    return v0

    .line 674
    .restart local v0    # "ret":Z
    :cond_1
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 675
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0

    .line 676
    .local v0, "ret":Z
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled(I)Z

    move-result v0

    .local v0, "ret":Z
    goto :goto_0
.end method

.method public isLockScreenMode()Z
    .locals 4

    .prologue
    .line 773
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 774
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v0, 0x0

    .line 775
    .local v0, "isLockState":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 776
    .local v0, "isLockState":Z
    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 750
    .local v0, "desktopModeManager":Lcom/samsung/android/desktopmode/SemDesktopModeManager;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    const/4 v1, 0x1

    return v1

    .line 754
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isProgressBar()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 698
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    const/4 v5, -0x3

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 699
    .local v0, "isSPenHoveringOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 700
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_0
    move v0, v2

    .line 698
    goto :goto_0

    .line 702
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_1
    return v2
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    .line 927
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "ret":Z
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "true"

    sget-object v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 689
    :cond_1
    const/4 v0, 0x1

    .line 691
    :cond_2
    return v0
.end method

.method protected isUspFeature()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return v0
.end method

.method protected makeDefaultContentView()V
    .locals 0

    .prologue
    .line 1279
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeToolTipContentView()V

    .line 1277
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2693
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 2694
    .local v19, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 2699
    .local v20, "y":F
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_3

    .line 2701
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2702
    .local v16, "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_0

    .line 2704
    const/16 v21, 0x1

    return v21

    .line 2708
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2709
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2711
    .local v11, "isPointInValidHoverArea":Z
    if-eqz v11, :cond_2

    .line 2712
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2902
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_1
    :goto_0
    const/16 v21, 0x0

    return v21

    .line 2714
    .restart local v11    # "isPointInValidHoverArea":Z
    .restart local v16    # "timeDealy":J
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    goto :goto_0

    .line 2717
    .end local v11    # "isPointInValidHoverArea":Z
    .end local v16    # "timeDealy":J
    :cond_3
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_16

    .line 2718
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 2719
    .local v13, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 2729
    .local v14, "rawY":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    .line 2731
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 2732
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result v11

    .line 2734
    .restart local v11    # "isPointInValidHoverArea":Z
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 2750
    :cond_4
    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 2761
    .end local v11    # "isPointInValidHoverArea":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    .line 2764
    .local v12, "popupView":Landroid/view/View;
    instance-of v0, v12, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object v6, v12

    .line 2765
    check-cast v6, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    .line 2770
    .local v6, "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    .line 2773
    .local v9, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v10, v21, v9

    .line 2789
    .local v10, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .line 2807
    .end local v9    # "infopickerLeftLimit":I
    .end local v10    # "infopickerRightLimit":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 2808
    .local v5, "anchorView":Landroid/view/View;
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v18

    .line 2809
    .local v18, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v18, :cond_b

    .line 2810
    new-instance v15, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2811
    .local v15, "scaleFactor":Landroid/graphics/PointF;
    new-instance v8, Landroid/graphics/PointF;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2812
    .local v8, "fPos":Landroid/graphics/PointF;
    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-nez v21, :cond_8

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_12

    .line 2813
    :cond_8
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2821
    .local v7, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 2823
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2825
    :cond_a
    int-to-float v0, v13

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->x:F

    .line 2826
    int-to-float v0, v14

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v15, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v8, Landroid/graphics/PointF;->y:F

    .line 2829
    iget v0, v8, Landroid/graphics/PointF;->x:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    iget v0, v8, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2828
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 2836
    .end local v7    # "displayFrame":Landroid/graphics/Rect;
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v21

    if-nez v21, :cond_13

    .line 2842
    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 2865
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 2866
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    .line 2871
    :cond_d
    const/16 v21, 0x1

    return v21

    .line 2738
    .restart local v11    # "isPointInValidHoverArea":Z
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    sub-long v16, v22, v24

    .line 2739
    .restart local v16    # "timeDealy":J
    const-wide/16 v22, 0x3e8

    cmp-long v21, v16, v22

    if-lez v21, :cond_f

    .line 2741
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2742
    const/16 v21, 0x1

    return v21

    .line 2747
    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2748
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    .line 2749
    const/16 v21, 0x1

    return v21

    .line 2754
    .end local v16    # "timeDealy":J
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    .line 2755
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    .line 2756
    const/16 v21, 0x1

    return v21

    .line 2807
    .end local v11    # "isPointInValidHoverArea":Z
    .restart local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .restart local v12    # "popupView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 2832
    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v8    # "fPos":Landroid/graphics/PointF;
    .restart local v15    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    move/from16 v22, v0

    sub-int v22, v14, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapY:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    .line 2831
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto/16 :goto_2

    .line 2850
    .end local v8    # "fPos":Landroid/graphics/PointF;
    .end local v15    # "scaleFactor":Landroid/graphics/PointF;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 2854
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 2855
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 2857
    :cond_15
    invoke-virtual {v6}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto/16 :goto_3

    .line 2872
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v6    # "containerView":Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;
    .end local v12    # "popupView":Landroid/view/View;
    .end local v13    # "rawX":I
    .end local v14    # "rawY":I
    .end local v18    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_16
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_1

    .line 2877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 2881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    .line 2884
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 2889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 2890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 2893
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2894
    const/16 v21, 0x1

    return v21
.end method

.method protected postDismiss(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$6;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    .line 2916
    int-to-long v2, p1

    .line 2910
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2908
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 2
    .param p1, "aniStyle"    # I

    .prologue
    .line 2484
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 2485
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2483
    :cond_0
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 881
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    return-void
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    .line 893
    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 891
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 904
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .locals 0
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    .line 819
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2564
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    .line 2565
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHAnimationEnabledByApp(ZZ)V

    .line 2563
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    .line 2572
    if-eqz p2, :cond_0

    .line 2573
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    .line 2571
    :goto_0
    return-void

    .line 2576
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabledByApp:Z

    if-eqz v0, :cond_1

    .line 2577
    return-void

    .line 2579
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHAnimationEnabled:Z

    goto :goto_0
.end method

.method public setFHGuideLineEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2520
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    .line 2521
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabledByApp(ZZ)V

    .line 2519
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2528
    if-eqz p2, :cond_2

    .line 2529
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2531
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_1

    .line 2532
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2527
    :cond_0
    :goto_0
    return-void

    .line 2535
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2536
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2540
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabledByApp:Z

    if-eqz v0, :cond_3

    .line 2541
    return-void

    .line 2543
    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    .line 2545
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v0, :cond_4

    .line 2546
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0

    .line 2549
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_0

    .line 2550
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    goto :goto_0
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2629
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    .line 2628
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 969
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 968
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2510
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsGuideLineEnabled:Z

    .line 2509
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 2640
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineFadeOffset:I

    .line 2639
    return-void
.end method

.method public setGuideLineStyle(II)V
    .locals 0
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 2651
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideRingDrawableId:I

    .line 2652
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mGuideLineColor:I

    .line 2650
    return-void
.end method

.method public setHoverDetectTime(I)V
    .locals 0
    .param p1, "ms"    # I

    .prologue
    .line 937
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 936
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 951
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    .line 952
    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    .line 953
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    .line 954
    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    .line 956
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    if-eqz v0, :cond_2

    .line 958
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    .line 949
    :cond_1
    return-void

    .line 957
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    .line 869
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    .line 765
    return-void
.end method

.method public setHoveringPoint(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1013
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    .line 1014
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    .line 1012
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2619
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 2618
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2591
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    .line 2592
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInfoPickerMoveEabledByApp(ZZ)V

    .line 2590
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    .line 2600
    if-eqz p2, :cond_0

    .line 2601
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    .line 2599
    :goto_0
    return-void

    .line 2604
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabledByApp:Z

    if-eqz v0, :cond_1

    .line 2605
    return-void

    .line 2607
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsInfoPickerMoveEabled:Z

    goto :goto_0
.end method

.method protected setInstanceByType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 554
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 555
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    .line 556
    const/16 v0, 0x5153

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    .line 557
    const v0, 0x1030513

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    .line 553
    :cond_0
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->misDialer:Z

    .line 632
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 650
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsProgressBar:Z

    .line 649
    return-void
.end method

.method public setOffset(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 979
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    .line 980
    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    .line 978
    return-void
.end method

.method public setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    .line 858
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    .line 999
    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "xOffset"    # I

    .prologue
    .line 990
    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPickerXoffset:I

    .line 989
    return-void
.end method

.method public setTouchable(Z)V
    .locals 2
    .param p1, "isTouchable"    # Z

    .prologue
    .line 2497
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    .line 2498
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2496
    :cond_0
    return-void
.end method

.method public show()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 1055
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 1056
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v2

    .line 1058
    .local v2, "type":I
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v2, v5, :cond_0

    .line 1059
    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    .line 1060
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    .line 1064
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v5, :cond_2

    .line 1065
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v5}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1066
    return-void

    .line 1055
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v2    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    .line 1071
    .restart local v0    # "anchorView":Landroid/view/View;
    .restart local v2    # "type":I
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v5, :cond_3

    if-nez v2, :cond_4

    .line 1075
    :cond_3
    return-void

    .line 1071
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v5, :cond_3

    .line 1072
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1073
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1073
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v5

    .line 1071
    if-nez v5, :cond_3

    .line 1079
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1080
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1081
    .local v3, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_7

    move-object v4, v3

    .line 1082
    nop

    nop

    .line 1083
    .local v4, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x8ac

    if-eq v5, v6, :cond_6

    .line 1084
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x62

    if-ne v5, v6, :cond_7

    .line 1085
    :cond_6
    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1091
    .end local v4    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    .line 1094
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v5, :cond_8

    .line 1095
    invoke-virtual {p0, v10}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    .line 1100
    :cond_8
    iget-boolean v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsFHSoundAndHapticEnabled:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    if-ne v5, v10, :cond_9

    .line 1101
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1102
    const-string/jumbo v6, "finger_air_view_sound_and_haptic_feedback"

    .line 1101
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_9

    .line 1103
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->playSoundAndHapticFeedback()V

    .line 1107
    :cond_9
    iget v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-ne v5, v10, :cond_a

    .line 1108
    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$4;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1115
    :cond_a
    new-instance v5, Lcom/samsung/android/widget/SemHoverPopupWindow$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$5;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1124
    iget-object v5, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget v7, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1125
    iput-boolean v10, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    .line 1050
    return-void
.end method

.method protected showPenPointEffect(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2964
    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2965
    if-eqz p1, :cond_1

    .line 2967
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e2a

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 2968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    .line 2963
    :cond_0
    :goto_0
    return-void

    .line 2969
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz v0, :cond_0

    .line 2971
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x4e21

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 2972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    goto :goto_0
.end method

.method public update()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 2407
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-eqz v0, :cond_1

    .line 2411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 2406
    :goto_1
    return-void

    .line 2408
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2409
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 2411
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0
.end method
