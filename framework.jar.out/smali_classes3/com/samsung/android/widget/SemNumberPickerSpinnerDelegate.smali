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

.field private static final INPUT_TYPE_MONTH:Ljava/lang/String; = "inputType=month_edittext"

.field private static final INPUT_TYPE_YEAR_DATE_TIME:Ljava/lang/String; = "inputType=YearDateTime_edittext"

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

.field private mModifiedTxtHeight:I

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

.field private mToast:Landroid/widget/Toast;

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

.method static synthetic -get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
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

.method static synthetic -set6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 1

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

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0

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

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-void

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

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;)V

    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    new-instance v20, Landroid/view/animation/PathInterpolator;

    const v21, 0x3f59999a    # 0.85f

    const/high16 v22, 0x3e800000    # 0.25f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v20, 0x105031f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v20, 0x1050320

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050321

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v0, v11

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    sget-object v20, Lcom/android/internal/R$styleable;->SemNumberPicker:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    const/16 v20, 0x3

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minHeight > maxHeight"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

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

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minWidth > maxWidth"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    const/high16 v20, 0x40000000    # 2.0f

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

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

    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, 0x1010434

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

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

    :goto_1
    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    const v20, 0x1060177

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    new-instance v20, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setWillNotDraw(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const v21, 0x1090101

    const/16 v22, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setLongClickable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v20, "sec-roboto-condensed-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string/jumbo v20, "samsung-neo-num3T"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "theme_font_clock"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/widget/SemNumberPicker;->getEnableStateSet()[I

    move-result-object v14

    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v8, v14, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    new-instance v22, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setRawInputType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x2000006

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setImeOptions(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setCursorVisible(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHighlightColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetHoverPopupType(I)V

    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v20

    div-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

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

    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const v20, 0x1050327

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

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

    new-instance v20, Landroid/view/animation/PathInterpolator;

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v22, 0x0

    const v23, 0x3ecccccd    # 0.4f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

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

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setImportantForAccessibility(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/high16 v21, 0x20000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    const v20, 0x10408e5

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetDirectPenInputEnabled(Z)V

    return-void

    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0

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

    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    const/16 v5, 0x1f4

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v0, :cond_7

    const/16 v5, 0xc8

    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    const/16 v5, 0x64

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

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

    const/16 v5, 0x1f4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

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

    const/4 v3, 0x0

    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    :cond_1
    aput v1, p1, v3

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v3, :cond_2

    :cond_1
    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v1, p1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    if-eqz v4, :cond_3

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    if-lez v4, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    goto :goto_0

    :cond_3
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

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

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int v9, v0, v1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

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

    const/4 v2, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

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

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_1

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

    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

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

    const/16 v0, 0xd

    const/high16 v2, 0x41500000    # 13.0f

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v2, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setEditTextPosition(I)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    :cond_0
    aput v2, v3, v1

    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isMeaLanguage()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private makeMeasureSpec(II)I
    .locals 5

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

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

    :sswitch_0
    return p1

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int v0, v3, v4

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-nez v3, :cond_0

    return v5

    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v1, v3, v0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v2, v3, v1

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    if-lez v2, :cond_2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    :cond_1
    :goto_0
    add-int/2addr v0, v2

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    return v6

    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v5
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "vi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "inputType=month_edittext"

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyChange(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v3, v4, p1, v5}, Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v4, v2, v4

    aget-object v1, v3, v4

    goto :goto_1
.end method

.method private onScrollStateChange(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/widget/SemNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    return v1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v1, p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    if-eqz p2, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->notifyChange(II)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    goto :goto_0
.end method

.method private tryComputeMaxWidth()V
    .locals 12

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v9, :cond_7

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v9, 0x9

    if-gt v2, v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    cmpl-float v9, v1, v3

    if-lez v9, :cond_1

    move v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v9, v6

    mul-float/2addr v9, v3

    float-to-int v5, v9

    move v4, v6

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->isHighContrastTextEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

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

    :cond_5
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v5, :cond_6

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v5, v9, :cond_9

    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v8, v9

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_4

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    int-to-float v9, v5

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    float-to-int v5, v7

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v1, 0x1

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

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

    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v4, :cond_2

    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-gt v4, v1, :cond_3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_3

    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v1, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-ge v4, v1, :cond_5

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-gt v1, v4, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_6

    const/4 v2, 0x5

    goto :goto_0

    :cond_6
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

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

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return v5

    :sswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v6, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_3

    return v5

    :cond_2
    return v5

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    return v6

    :cond_4
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ne v3, v4, :cond_7

    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_0

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    if-ne v3, v4, :cond_9

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    :cond_a
    return v6

    :cond_b
    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    :cond_c
    return v6

    :sswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_e

    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1c

    const/16 v3, 0x14

    if-ne v0, v3, :cond_15

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_f

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_e
    return v5

    :cond_f
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_11

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    if-ne v3, v4, :cond_10

    return v5

    :cond_10
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_11
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_13

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_12

    return v5

    :cond_12
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_13
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_14

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_14
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    return v5

    :cond_15
    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_17

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_16

    return v5

    :cond_16
    iput v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_17
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_19

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-ne v3, v4, :cond_18

    return v5

    :cond_18
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_19
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_1a

    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_1a
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_1b

    return v5

    :cond_1b
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    return v6

    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v1, :cond_1d

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_1d
    return v6

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

    const/4 v2, 0x0

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

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v17

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    mul-int/lit8 v6, v22, 0x2

    sub-int v22, v10, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v18, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move-object/from16 v16, v0

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_e

    aget v15, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    const v22, 0x3f4ccccd    # 0.8f

    mul-float v22, v22, v5

    const v23, 0x3e4ccccd    # 0.2f

    add-float v4, v22, v23

    const/16 v22, 0x0

    cmpg-float v22, v4, v22

    if-gez v22, :cond_7

    const/4 v4, 0x0

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

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

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

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v19, v19, v22

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

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

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

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

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

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

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    if-nez p1, :cond_1

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_7

    :cond_4
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_6
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_1

    :cond_7
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

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

    :cond_1
    return v5

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v5

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :goto_1
    return v4

    :cond_5
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v5, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_8
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    :cond_9
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 12

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    add-int v4, v1, v3

    add-int v0, v5, v2

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int v8, v5, v8

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v2

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/widget/SemNumberPicker;->superOnMeasure(II)V

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setMeasuredDimensionWrapper(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

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

    :cond_1
    const/4 v9, 0x0

    return v9

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_4
    :goto_0
    const/4 v9, 0x1

    return v9

    :pswitch_0
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-nez v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v2, v9, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_5
    :goto_1
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto :goto_0

    :cond_6
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_9

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_8

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->fling(I)V

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long v4, v10, v12

    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_f

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    :goto_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    :cond_a
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_b

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    :cond_b
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v6, v9, :cond_c

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    :cond_c
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_d

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    :cond_d
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v6, v9, :cond_e

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_0

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

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    return-void
.end method

.method public performClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method public performClick(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0
.end method

.method public performLongClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method public scrollBy(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v1, v2, :cond_2

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v2, :cond_3

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    return-void

    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    :cond_4
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_1

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

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_8

    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_9

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_3

    :cond_a
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_0
.end method

.method public setEditTextMode(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    :cond_2
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    aget-object v0, v1, v5

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMinValue(I)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMonthInputMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    return-void
.end method

.method public setSubTextSize(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    return-void
.end method

.method public setTextSize(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    return-void
.end method

.method public setToggle(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050323

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const-string/jumbo v3, "sec-roboto-condensed"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const-string/jumbo v3, "persist.sys.flipfontpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "#Theme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "theme_font_system"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v3, 0x1050322

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    :cond_1
    return-void

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 3

    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move v0, p1

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
