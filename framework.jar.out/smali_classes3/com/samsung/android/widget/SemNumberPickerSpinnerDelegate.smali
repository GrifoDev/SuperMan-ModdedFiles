.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.super Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;
    }
.end annotation


# static fields
.field private static final DECREASE_BUTTON:I = 0x2

.field private static final DECREASE_BUTTON_EX:I = 0x1

.field private static final DEFAULT_CHANGE_VALUE_BY:I = 0x1

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final INCREASE_BUTTON:I = 0x4

.field private static final INCREASE_BUTTON_EX:I = 0x5

.field private static final INPUT:I = 0x3

.field private static final LONG_PRESSED_SCROLL_COUNT:I = 0xa

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x12c

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x1f4

.field private static final START_ANIMATION_SCROLL_DURATION:I = 0x359

.field private static final START_ANIMATION_SCROLL_DURATION_2016B:I = 0x22d

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

.field private mBelowBottomSelectionDividerBottom:I

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeValueBy:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mCustomScroller:Landroid/widget/Scroller;

.field private mCustomTypefaceSet:Z

.field private mDecrementVirtualButtonPressed:Z

.field private final mDefaultEdgeHeight:I

.field private mDefaultTypeface:Landroid/graphics/Typeface;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

.field private final mHeightRatio:F

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsAmPm:Z

.field private mIsEditTextMode:Z

.field private mIsLongPressed:Z

.field private mIsStartingAnimation:Z

.field private mIsUPSModeOn:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastFocusedChildVirtualViewId:I

.field private mLastHoveredChildVirtualViewId:I

.field private final mLinearScroller:Landroid/widget/Scroller;

.field private mLongPressCount:I

.field private mLongPressUpdateInterval:J

.field private mLongPressed_FIRST_SCROLL:Z

.field private mLongPressed_SECOND_SCROLL:Z

.field private mLongPressed_THIRD_SCROLL:Z

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

.field private mOverTopSelectionDividerTop:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPerformClickOnTap:Z

.field private mPickerBoldTypeface:Landroid/graphics/Typeface;

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private final mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mReservedStartAnimation:Z

.field private mScrollState:I

.field private mSelectedPickerColor:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

.field private mSkipNumbers:Z

.field private final mSubTextColor:I

.field private mSubTextSize:I

.field private final mTextColor:I

.field private mTextSize:I

.field private mToastText:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static synthetic -get0()[C
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Lcom/samsung/android/widget/SemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->needCompareEqualMonthLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2544
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    .line 95
    return-void

    .line 2544
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 27
    .param p1, "delegator"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 505
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;)V

    .line 245
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 250
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 255
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 275
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 361
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    .line 406
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 464
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 466
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 482
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    .line 483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 485
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 490
    new-instance v20, Landroid/view/animation/PathInterpolator;

    const v21, 0x3f59999a    # 0.85f

    const/high16 v22, 0x3e800000    # 0.25f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 508
    .local v18, "res":Landroid/content/res/Resources;
    const v20, 0x105031e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 509
    .local v12, "defaultHeight":I
    const v20, 0x105031f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 510
    .local v13, "defaultWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 511
    const v21, 0x1050320

    .line 510
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 512
    .local v11, "defaultEditTextHeight":I
    int-to-float v0, v11

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    .line 515
    sget-object v20, Lcom/android/internal/R$styleable;->SemNumberPicker:[I

    .line 514
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 517
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    .line 518
    const/16 v21, -0x1

    .line 517
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    .line 519
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    .line 521
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    .line 523
    const/16 v20, 0x3

    .line 524
    const/16 v21, -0x1

    .line 523
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 526
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 530
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minHeight > maxHeight"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 532
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 534
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minWidth > maxWidth"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 537
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    .line 540
    const/high16 v20, 0x40000000    # 2.0f

    .line 541
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 540
    const/16 v22, 0x1

    .line 539
    move/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 542
    .local v10, "defSelectionDividerHeight":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    .line 544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    .line 546
    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    .line 547
    .local v16, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, 0x1010434

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 548
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 549
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    const v21, 0xffffff

    and-int v20, v20, v21

    const/high16 v21, 0x33000000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    .line 553
    :goto_1
    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 555
    const v20, 0x1060177

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    .line 558
    new-instance v20, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 568
    const-string/jumbo v21, "layout_inflater"

    .line 567
    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 569
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const v21, 0x1090101

    const/16 v22, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const v21, 0x102044b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setLongClickable(Z)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 575
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    .line 576
    const-string/jumbo v20, "sec-roboto-condensed-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 578
    const-string/jumbo v20, "samsung-neo-num3T"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "theme_font_clock"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 582
    .local v19, "themeTypeFace":Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 586
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 590
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 593
    .local v8, "colors":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/widget/SemNumberPicker;->getEnableStateSet()[I

    move-result-object v14

    .line 594
    .local v14, "enabledStateSet":[I
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v8, v14, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 595
    .local v7, "color":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    .end local v7    # "color":I
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    .line 622
    new-instance v22, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 621
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x2000006

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 632
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 633
    .local v9, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    .line 634
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    .line 635
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v20

    div-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextSize()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 640
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 641
    .local v17, "paint":Landroid/graphics/Paint;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 642
    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 646
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 648
    const v20, 0x1050326

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3ef5c28f    # 0.48f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    .line 650
    new-instance v20, Landroid/view/animation/PathInterpolator;

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v22, 0x0

    const v23, 0x3ecccccd    # 0.4f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 653
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    .line 654
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 656
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const v25, 0x3e99999a    # 0.3f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct/range {v20 .. v22}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 658
    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 659
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v20

    if-nez v20, :cond_7

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 666
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/high16 v21, 0x20000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 671
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 672
    const v20, 0x10408da

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetDirectPenInputEnabled(Z)V

    .line 504
    return-void

    .line 544
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "configuration":Landroid/view/ViewConfiguration;
    .end local v14    # "enabledStateSet":[I
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "outValue":Landroid/util/TypedValue;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "themeTypeFace":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 551
    .restart local v16    # "outValue":Landroid/util/TypedValue;
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    const/high16 v21, 0x33000000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    goto/16 :goto_1

    .line 583
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "themeTypeFace":Ljava/lang/String;
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_2
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2152
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2156
    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2157
    const/16 v5, 0x1f4

    .line 2158
    .local v5, "duration":I
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2160
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v0, :cond_3

    .line 2161
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2162
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2178
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v0, :cond_7

    .line 2179
    const/16 v5, 0xc8

    .line 2180
    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2187
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 2189
    if-eqz p1, :cond_8

    .line 2190
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2194
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2151
    return-void

    .line 2164
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    if-eqz v0, :cond_6

    .line 2165
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2166
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2167
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    .line 2168
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2169
    :cond_4
    if-eqz p1, :cond_5

    .line 2170
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2172
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2174
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_1

    .line 2175
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2181
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    .line 2182
    const/16 v5, 0x64

    .line 2183
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2184
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

    .line 2192
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2
.end method

.method private changeValueByTwo(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x1f4

    const/4 v1, 0x0

    .line 2205
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2206
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2209
    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2211
    if-eqz p1, :cond_1

    .line 2212
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2216
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2204
    return-void

    .line 2214
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2327
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2328
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2330
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2331
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2332
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 2334
    :cond_1
    aput v1, p1, v3

    .line 2335
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2326
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2344
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2345
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2346
    return-void

    .line 2348
    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2349
    :cond_1
    const-string/jumbo v2, ""

    .line 2358
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2342
    return-void

    .line 2351
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2352
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v1, p1, v3

    .line 2353
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    .line 2355
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2643
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 2644
    return v1

    .line 2646
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2647
    .local v4, "deltaY":I
    if-eqz v4, :cond_3

    .line 2648
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2649
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 2650
    if-lez v4, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2652
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2653
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2654
    const/4 v0, 0x1

    return v0

    .line 2650
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    goto :goto_0

    .line 2656
    :cond_3
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 2284
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2286
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2287
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    .line 2288
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2287
    add-int v9, v0, v1

    .line 2289
    .local v9, "tempFinal":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 2291
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2283
    return-void

    .line 2290
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 3401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 1839
    const/4 v2, 0x0

    .line 1840
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1841
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1843
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1848
    .end local v2    # "fontType":Landroid/graphics/Typeface;
    :cond_0
    :goto_0
    return-object v2

    .line 1844
    .restart local v2    # "fontType":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2513
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2515
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2516
    :catch_0
    move-exception v0

    .line 2538
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v2

    .line 2520
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2522
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2523
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2524
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    .line 2520
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2533
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 2534
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2298
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2299
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2300
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 2301
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2303
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1576
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1577
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1579
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2312
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2314
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2315
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2316
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    .line 2318
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2319
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2310
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2220
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_1

    .line 2221
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2222
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2224
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 2227
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v2, :cond_2

    .line 2228
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2230
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    .line 2232
    const/16 v0, 0xd

    .line 2234
    .local v0, "DEFAULT_TEXT_GAP_HEIGHT":I
    const/high16 v2, 0x41500000    # 13.0f

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2233
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2235
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_3

    .line 2236
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2239
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2240
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2241
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 2242
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    .line 2241
    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2242
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 2241
    sub-int v1, v2, v3

    .line 2243
    .local v1, "adjustTextViewBaseLine":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v2, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setEditTextPosition(I)V

    .line 2245
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v2, :cond_4

    .line 2246
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 2247
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 2219
    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 2099
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2100
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 2101
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    .line 2102
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 2103
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 2104
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 2105
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2107
    :cond_0
    aput v2, v3, v1

    .line 2108
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private isMeaLanguage()Z
    .locals 3

    .prologue
    .line 3444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3445
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3446
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3447
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 3449
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 2057
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2058
    return p1

    .line 2060
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2061
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2062
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 2070
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2064
    :sswitch_0
    return p1

    .line 2066
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 2068
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 2062
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 835
    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 836
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int v0, v3, v4

    .line 839
    .local v0, "amountToScroll":I
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-nez v3, :cond_0

    return v5

    .line 841
    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v1, v3, v0

    .line 842
    .local v1, "futureScrollOffset":I
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v2, v3, v1

    .line 843
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_3

    .line 844
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 845
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 846
    if-lez v2, :cond_2

    .line 847
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    .line 852
    :cond_1
    :goto_0
    add-int/2addr v0, v2

    .line 853
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 854
    return v6

    .line 849
    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 856
    :cond_3
    return v5
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 3

    .prologue
    .line 3455
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3456
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3457
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "vi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3458
    const/4 v2, 0x1

    return v2

    .line 3460
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private notifyChange(II)V
    .locals 6
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v5, 0x0

    .line 2407
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v3, :cond_2

    .line 2422
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    if-eqz v3, :cond_1

    .line 2423
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v3, v4, p1, v5}, Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V

    .line 2406
    :cond_1
    return-void

    .line 2408
    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2409
    .local v2, "value":I
    const/4 v1, 0x0

    .line 2410
    .local v1, "text":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v2, v3, :cond_3

    .line 2411
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 2414
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2415
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_0

    .line 2416
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2417
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_0

    .line 2418
    const/4 v3, 0x3

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 2412
    .end local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    .restart local v1    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v4, v2, v4

    aget-object v1, v3, v4

    .local v1, "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private onScrollStateChange(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    .line 2271
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 2272
    return-void

    .line 2274
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    .line 2275
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2276
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/widget/SemNumberPicker;I)V

    .line 2270
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 2255
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 2256
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2257
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2259
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 2254
    :cond_1
    :goto_0
    return-void

    .line 2261
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2262
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1308
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 2467
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2468
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    .line 2472
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2466
    return-void

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 4
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 2433
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2434
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    .line 2438
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2439
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2440
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2441
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2432
    return-void

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2488
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2489
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2490
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2492
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2493
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2494
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2495
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2496
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2497
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2498
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2500
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2501
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2503
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_3

    .line 2504
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2506
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 2487
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 2

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2478
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2448
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2449
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2450
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2452
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2453
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2454
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2455
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2456
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2457
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2458
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2447
    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 2086
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2087
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2088
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 2090
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 2119
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v1, p1, :cond_1

    .line 2120
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2121
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2122
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2124
    :cond_0
    return-void

    .line 2128
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_3

    .line 2129
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 2134
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 2135
    .local v0, "previous":I
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 2136
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2137
    if-eqz p2, :cond_2

    .line 2138
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->notifyChange(II)V

    .line 2140
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2141
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2118
    return-void

    .line 2131
    .end local v0    # "previous":I
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2132
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1564
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1565
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1567
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1563
    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    .line 1557
    const-wide/16 v2, 0x14

    .line 1540
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1539
    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1919
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1920
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1923
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1917
    return-void

    .line 1921
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    goto :goto_0
.end method

.method private tryComputeMaxWidth()V
    .locals 12

    .prologue
    .line 1587
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v9, :cond_0

    .line 1588
    return-void

    .line 1590
    :cond_0
    const/4 v5, 0x0

    .line 1591
    .local v5, "maxTextWidth":I
    const/4 v4, 0x0

    .line 1593
    .local v4, "maxTextLength":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1594
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v9, :cond_7

    .line 1595
    const/4 v3, 0x0

    .line 1596
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v9, 0x9

    if-gt v2, v9, :cond_2

    .line 1597
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1598
    .local v1, "digitWidth":F
    cmpl-float v9, v1, v3

    if-lez v9, :cond_1

    .line 1599
    move v3, v1

    .line 1596
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1602
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v6, 0x0

    .line 1603
    .local v6, "numberOfDigits":I
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1604
    .local v0, "current":I
    :goto_1
    if-lez v0, :cond_3

    .line 1605
    add-int/lit8 v6, v6, 0x1

    .line 1606
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 1608
    :cond_3
    int-to-float v9, v6

    mul-float/2addr v9, v3

    float-to-int v5, v9

    .line 1609
    move v4, v6

    .line 1620
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 1621
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->isHighContrastTextEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1622
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getHCTStrokeWidth()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    add-int/lit8 v10, v4, 0x2

    mul-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 1625
    :cond_5
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v5, :cond_6

    .line 1626
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v5, v9, :cond_9

    .line 1627
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 1631
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 1634
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1586
    return-void

    .line 1611
    .end local v2    # "i":I
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v8, v9

    .line 1612
    .local v8, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v8, :cond_4

    .line 1613
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1614
    .local v7, "textWidth":F
    int-to-float v9, v5

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    .line 1615
    float-to-int v5, v7

    .line 1616
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 1612
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1629
    .end local v7    # "textWidth":F
    .end local v8    # "valueCount":I
    :cond_9
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 2391
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2393
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2399
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2392
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 2394
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2395
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2396
    const/4 v1, 0x1

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2366
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2367
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2368
    .local v0, "current":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v2, v0, :cond_1

    .line 2370
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2365
    :goto_0
    return-void

    .line 2373
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1314
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 1315
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1317
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1322
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1323
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1324
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1326
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1327
    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1328
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1329
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1313
    :goto_0
    return-void

    .line 1331
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1407
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1247
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1250
    .local v1, "eventY":I
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v4, :cond_2

    .line 1252
    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-gt v4, v1, :cond_3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_3

    .line 1253
    const/4 v2, 0x2

    .line 1263
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1265
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1266
    .local v3, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1294
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 1251
    .restart local v1    # "eventY":I
    :cond_2
    const/4 v2, 0x3

    .line 1250
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1254
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v1, v4, :cond_4

    .line 1255
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1256
    .end local v2    # "hoveredVirtualViewId":I
    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-ge v4, v1, :cond_5

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-gt v1, v4, :cond_5

    .line 1257
    const/4 v2, 0x4

    .line 1256
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1258
    .end local v2    # "hoveredVirtualViewId":I
    :cond_5
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_6

    .line 1259
    const/4 v2, 0x5

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1261
    .end local v2    # "hoveredVirtualViewId":I
    :cond_6
    const/4 v2, 0x3

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1268
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1270
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1271
    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1275
    :pswitch_2
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    .line 1276
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1278
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1277
    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1280
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1282
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1283
    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1288
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1290
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1266
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1093
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1094
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1231
    :cond_0
    :goto_0
    return v5

    .line 1097
    :sswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_2

    .line 1100
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_4

    .line 1102
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_3

    .line 1103
    return v5

    .line 1098
    :cond_2
    return v5

    .line 1105
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1107
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1108
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1109
    :cond_4
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_5

    .line 1110
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1111
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1112
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1113
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1116
    :cond_5
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_6

    .line 1117
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1119
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1120
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1123
    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 1124
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 1126
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ne v3, v4, :cond_7

    .line 1127
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1128
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_0

    .line 1129
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1132
    :cond_8
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_0

    .line 1133
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1134
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 1135
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    if-ne v3, v4, :cond_9

    .line 1136
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1137
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1138
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1146
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1147
    const/16 v3, 0x16

    if-ne v0, v3, :cond_b

    .line 1148
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 1149
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_a

    .line 1150
    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 1152
    :cond_a
    return v6

    .line 1153
    .end local v2    # "v":Landroid/view/View;
    :cond_b
    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    .line 1154
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 1155
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_c

    .line 1156
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 1158
    :cond_c
    return v6

    .line 1164
    .end local v2    # "v":Landroid/view/View;
    :sswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_e

    .line 1167
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1c

    .line 1168
    const/16 v3, 0x14

    if-ne v0, v3, :cond_15

    .line 1169
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_f

    .line 1170
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1171
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1172
    return v6

    .line 1165
    :cond_e
    return v5

    .line 1173
    :cond_f
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_11

    .line 1174
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    if-ne v3, v4, :cond_10

    .line 1175
    return v5

    .line 1177
    :cond_10
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1178
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1179
    return v6

    .line 1180
    :cond_11
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_13

    .line 1181
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_12

    .line 1182
    return v5

    .line 1184
    :cond_12
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1185
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1186
    return v6

    .line 1187
    :cond_13
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_14

    .line 1188
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1189
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1190
    return v6

    .line 1191
    :cond_14
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1192
    return v5

    .line 1194
    :cond_15
    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    .line 1195
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_17

    .line 1196
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_16

    .line 1197
    return v5

    .line 1199
    :cond_16
    iput v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1200
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1201
    return v6

    .line 1202
    :cond_17
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_19

    .line 1203
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-ne v3, v4, :cond_18

    .line 1204
    return v5

    .line 1206
    :cond_18
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1207
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1208
    return v6

    .line 1209
    :cond_19
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_1a

    .line 1210
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1211
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1212
    return v6

    .line 1213
    :cond_1a
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_1b

    .line 1214
    return v5

    .line 1215
    :cond_1b
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1216
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1217
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1218
    return v6

    .line 1221
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1222
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1224
    .local v1, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v1, :cond_1d

    .line 1225
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1227
    :cond_1d
    return v6

    .line 1094
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 817
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 819
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 820
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 821
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_1
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1028
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1029
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1035
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 1032
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1029
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1237
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1235
    :goto_0
    :pswitch_0
    return-void

    .line 1240
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 2044
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 3481
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1740
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 3476
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 3471
    const/4 v0, 0x0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1702
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 3466
    const/4 v0, 0x0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1693
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    .line 1503
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1501
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1932
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 1040
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz v0, :cond_0

    .line 1041
    return-void

    .line 1043
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1048
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1051
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1052
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1039
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1928
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1927
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v10

    .line 1939
    .local v10, "mRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1940
    .local v9, "mLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1942
    .local v8, "mBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v17

    .line 1943
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    mul-int/lit8 v6, v22, 0x2

    .line 1944
    .local v6, "div_value":I
    sub-int v22, v10, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v18, v22, v23

    .line 1945
    .local v18, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1946
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1948
    .local v21, "y_max":F
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 1950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1955
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v23, v0

    .line 1958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v24, v0

    .line 1957
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1961
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1966
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1973
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1980
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move-object/from16 v16, v0

    .line 1981
    .local v16, "selectorIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_e

    .line 1982
    aget v15, v16, v7

    .line 1983
    .local v15, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1990
    .local v14, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-ltz v22, :cond_b

    .line 1991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v19, v22

    if-gtz v22, :cond_b

    .line 1992
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1995
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v23, v0

    xor-int v22, v22, v23

    shl-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_6

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 2007
    :cond_6
    :goto_2
    sub-float v22, v21, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v22, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 2008
    .local v12, "ratioConst":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v11

    .line 2009
    .local v11, "ratio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    .line 2010
    .local v5, "alphaRatio":F
    const v22, 0x3f4ccccd    # 0.8f

    mul-float v22, v22, v5

    const v23, 0x3e4ccccd    # 0.2f

    add-float v4, v22, v23

    .line 2011
    .local v4, "alpha":F
    const/16 v22, 0x0

    cmpg-float v22, v4, v22

    if-gez v22, :cond_7

    .line 2012
    const/4 v4, 0x0

    .line 2014
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v23, v23, v4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2016
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v13, v22, v23

    .line 2017
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2018
    .local v20, "yPos":I
    if-eqz v17, :cond_d

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 2019
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2020
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2021
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2022
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2029
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v19, v19, v22

    .line 1981
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1942
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v6    # "div_value":I
    .end local v7    # "i":I
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v13    # "scale":F
    .end local v14    # "scrollSelectorValue":Ljava/lang/String;
    .end local v15    # "selectorIndex":I
    .end local v16    # "selectorIndices":[I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "yPos":I
    .end local v21    # "y_max":F
    :cond_a
    const/16 v17, 0x1

    .local v17, "showSelectorWheel":Z
    goto/16 :goto_0

    .line 1999
    .end local v17    # "showSelectorWheel":Z
    .restart local v6    # "div_value":I
    .restart local v7    # "i":I
    .restart local v14    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v15    # "selectorIndex":I
    .restart local v16    # "selectorIndices":[I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v21    # "y_max":F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2002
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v23, v0

    xor-int v22, v22, v23

    shl-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_6

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 2023
    .restart local v4    # "alpha":F
    .restart local v5    # "alphaRatio":F
    .restart local v11    # "ratio":F
    .restart local v12    # "ratioConst":F
    .restart local v13    # "scale":F
    .restart local v20    # "yPos":I
    :cond_d
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-eqz v22, :cond_9

    .line 2024
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2025
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2026
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2027
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 1937
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v13    # "scale":F
    .end local v14    # "scrollSelectorValue":Ljava/lang/String;
    .end local v15    # "selectorIndex":I
    .end local v20    # "yPos":I
    :cond_e
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 1058
    if-nez p1, :cond_1

    .line 1059
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1088
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1057
    return-void

    .line 1061
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_5

    .line 1067
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1068
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_3

    .line 1069
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1070
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1077
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1079
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_0

    .line 1080
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_7

    .line 1083
    :cond_4
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1084
    const/16 v2, 0x40

    .line 1083
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1062
    .end local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_5
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1063
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1064
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 1072
    :cond_6
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_1

    .line 1081
    .restart local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_7
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2035
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2036
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2037
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 2038
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 2034
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 878
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_2

    .line 879
    :cond_1
    return v5

    .line 881
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 882
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 930
    return v5

    .line 884
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 885
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    .line 888
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 889
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 891
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 892
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    .line 893
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    .line 903
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 904
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    .line 905
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 906
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 907
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v1, v6, :cond_4

    .line 908
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 909
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 911
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 927
    :goto_1
    return v4

    .line 896
    :cond_5
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 897
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    .line 898
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 912
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 913
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 914
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 915
    :cond_7
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 918
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 917
    invoke-direct {p0, v5, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 919
    :cond_8
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 922
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 921
    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 924
    :cond_9
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 925
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_1

    .line 882
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 779
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 780
    .local v7, "msrdWdth":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 783
    .local v6, "msrdHght":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 784
    .local v3, "inptTxtMsrdWdth":I
    int-to-float v8, v6

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v2, v8

    .line 785
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 786
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 787
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 788
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 789
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 791
    if-eqz p1, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    .line 794
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    .line 795
    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    .line 796
    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int v8, v5, v8

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    .line 797
    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    .line 778
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 804
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v2

    .line 805
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    .line 806
    .local v1, "newHeightMeasureSpec":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/widget/SemNumberPicker;->superOnMeasure(II)V

    .line 808
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 810
    .local v3, "widthSize":I
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 812
    .local v0, "heightSize":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setMeasuredDimensionWrapper(II)V

    .line 802
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 935
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v9, :cond_2

    .line 936
    :cond_1
    const/4 v9, 0x0

    return v9

    .line 938
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_3

    .line 939
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 941
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 942
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 943
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1023
    :cond_4
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 945
    :pswitch_0
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-nez v9, :cond_4

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 949
    .local v1, "currentMoveY":F
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 950
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 951
    .local v2, "deltaDownY":I
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v2, v9, :cond_5

    .line 952
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 953
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 960
    .end local v2    # "deltaDownY":I
    :cond_5
    :goto_1
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 956
    :cond_6
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 957
    .local v3, "deltaMoveY":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 958
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 963
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    .line 964
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    .line 965
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 966
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 967
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 968
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v7, v9

    .line 969
    .local v7, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 970
    .local v6, "eventY":I
    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    .line 971
    .restart local v3    # "deltaMoveY":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v9, :cond_7

    .line 972
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 973
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1015
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1016
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 974
    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_9

    .line 975
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_8

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_8

    .line 976
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 977
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    .line 978
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 980
    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->fling(I)V

    .line 981
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 984
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 985
    .local v4, "deltaTime":J
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_f

    .line 986
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_a

    .line 987
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 988
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    .line 1013
    :goto_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 990
    :cond_a
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_b

    .line 991
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 992
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 993
    const/4 v10, 0x1

    .line 992
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 994
    :cond_b
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v6, v9, :cond_c

    .line 995
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 996
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 997
    const/4 v10, 0x2

    .line 996
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 998
    :cond_c
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_d

    .line 999
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1000
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 1001
    const/4 v10, 0x1

    .line 1000
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 1002
    :cond_d
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v6, v9, :cond_e

    .line 1003
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1004
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 1005
    const/4 v10, 0x2

    .line 1004
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 1007
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 1011
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 1019
    .end local v3    # "deltaMoveY":I
    .end local v4    # "deltaTime":J
    .end local v6    # "eventY":I
    .end local v7    # "initialVelocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1020
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 943
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x1

    .line 861
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    .line 865
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_3

    .line 866
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 869
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 872
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 860
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 773
    return-void
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1509
    return-void

    .line 1511
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1507
    return-void
.end method

.method public performClick(Z)V
    .locals 2
    .param p1, "toIncrement"    # Z

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    .line 1517
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, v1, :cond_0

    .line 1518
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1515
    :goto_0
    return-void

    .line 1520
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    .line 1523
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0
.end method

.method public performLongClick()V
    .locals 1

    .prologue
    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1530
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1531
    return-void

    .line 1533
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1528
    return-void
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 1348
    .local v0, "selectorIndices":[I
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_1

    .line 1349
    :cond_0
    return-void

    .line 1351
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v1, v2, :cond_2

    .line 1352
    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1353
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1354
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1355
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1356
    return-void

    .line 1359
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v2, :cond_3

    .line 1360
    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1361
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1362
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1363
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1364
    return-void

    .line 1367
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1368
    :cond_4
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_7

    .line 1369
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1370
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    .line 1371
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    .line 1372
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1373
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_6

    .line 1374
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1379
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1380
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1376
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_1

    .line 1383
    :cond_7
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-gt v1, v2, :cond_a

    .line 1384
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1385
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    .line 1386
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_8

    .line 1387
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1388
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_9

    .line 1389
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1394
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_7

    .line 1395
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1391
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_3

    .line 1346
    :cond_a
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1792
    return-void

    .line 1794
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    .line 1795
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1802
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1803
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1804
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1790
    return-void

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_0
.end method

.method public setEditTextMode(Z)V
    .locals 5
    .param p1, "isEditTextMode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 730
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    .line 731
    return-void

    .line 734
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 735
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_4

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 759
    :cond_2
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 761
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 762
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    .line 763
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    .line 729
    :cond_3
    return-void

    .line 737
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 738
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 739
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    .line 740
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 741
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 742
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 745
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 746
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 747
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 750
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_2

    .line 751
    const/4 v1, 0x3

    .line 752
    const/16 v2, 0x80

    .line 751
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1339
    if-nez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz v0, :cond_0

    .line 1340
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1341
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1336
    :cond_0
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1456
    return-void

    .line 1458
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    .line 1459
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1460
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1454
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 687
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const/4 v5, 0x0

    .line 3409
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 3410
    .local v1, "filterArr":[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 3411
    .local v0, "backupFilter":Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3412
    .local v2, "lengthFilter":Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 3408
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 1754
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1755
    return-void

    .line 1757
    :cond_0
    if-gez p1, :cond_1

    .line 1758
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1760
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1761
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1762
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 1764
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1765
    .local v0, "wrapSelectorWheel":Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1766
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1767
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1768
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1769
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1753
    return-void
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 1716
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1717
    return-void

    .line 1719
    :cond_0
    if-gez p1, :cond_1

    .line 1720
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1722
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    .line 1723
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-le v1, v2, :cond_2

    .line 1724
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 1726
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1727
    .local v0, "wrapSelectorWheel":Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1728
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1729
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1730
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1731
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1715
    return-void
.end method

.method public setMonthInputMode()V
    .locals 2

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3429
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3430
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3427
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .line 1439
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1684
    iput-wide p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 1683
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    .line 1429
    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    .line 1420
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    .line 1301
    return-void
.end method

.method public setSubTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1820
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1819
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 1818
    return-void
.end method

.method public setTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1809
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 1812
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1813
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1814
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1808
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v0, 0x1

    .line 1830
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 1831
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1832
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1833
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1834
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1835
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1829
    return-void
.end method

.method public setToggle(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 692
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    .line 693
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_1

    .line 694
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 695
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050322

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 696
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 697
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 698
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 699
    const-string/jumbo v3, "sec-roboto-condensed"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 702
    const-string/jumbo v3, "persist.sys.flipfontpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "flipFontPath":Ljava/lang/String;
    const-string/jumbo v3, "#Theme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "theme_font_system"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "themeTypeFace":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 711
    .end local v2    # "themeTypeFace":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 712
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 713
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 714
    const v3, 0x1050321

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 691
    .end local v0    # "flipFontPath":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 707
    .restart local v0    # "flipFontPath":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "themeTypeFace":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1495
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1491
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1667
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1668
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1669
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 1666
    :cond_1
    return-void

    .line 1667
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "wrappingAllowed":Z
    goto :goto_0
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3439
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3440
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3437
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/widget/SemAnimationListener;

    .prologue
    .line 1858
    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    .line 1859
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    .line 1860
    return-void

    .line 1863
    :cond_0
    move v0, p1

    .line 1864
    .local v0, "delay":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1857
    return-void
.end method
