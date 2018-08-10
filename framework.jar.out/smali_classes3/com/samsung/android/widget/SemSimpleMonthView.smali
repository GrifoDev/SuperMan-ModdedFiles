.class Lcom/samsung/android/widget/SemSimpleMonthView;
.super Landroid/view/View;
.source "SemSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;,
        Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;,
        Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MONTH_LINE:I = 0x6

.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final DIVISOR_FOR_CIRCLE_POSITION_Y:F = 2.7f

.field private static final LEAP_MONTH:I = 0x1

.field private static final LEAP_MONTH_WEIGHT:F = 0.5f

.field private static final MAX_MONTH_VIEW_ID:I = 0x2a

.field private static final MIN_HEIGHT:I = 0xa

.field private static final MONTH_WEIGHT:I = 0x64

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemSimpleMonthView"

.field private static final YEAR_WEIGHT:I = 0x2710


# instance fields
.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

.field private final mDateBackgroundBetweenStartEndAlpha:I

.field private mDayColorSet:[I

.field private mDayLengthMethod:Ljava/lang/reflect/Method;

.field private final mDayNumberDisabledAlpha:I

.field private mDayNumberEndPaint:Landroid/graphics/Paint;

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mDaySelectedStartEndAdjust:I

.field private mDayStartEndPaint:Landroid/graphics/Paint;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndDay:I

.field private mEndDayColor:I

.field private mEndMonth:I

.field private mEndYear:I

.field private mGetDayMethod:Ljava/lang/reflect/Method;

.field private mGetMonthMethod:Ljava/lang/reflect/Method;

.field private mGetWeekDayMethod:Ljava/lang/reflect/Method;

.field private mGetYearMethod:Ljava/lang/reflect/Method;

.field private mIsFirstMonth:Z

.field private mIsLastMonth:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsNextMonthLeap:Z

.field private mIsPrevMonthLeap:Z

.field private mIsRTL:Z

.field private mLastDay:I

.field private mLockAccessibilityDelegate:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

.field private mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private final mPrevNextMonthDayNumberAlpha:I

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private mSundayTextColor:I

.field private mTempDate:Ljava/util/Calendar;

.field private final mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field private mYear:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemSimpleMonthView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemSimpleMonthView;FF)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemSimpleMonthView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(III)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x11100f6

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x1050227

    const/4 v5, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-array v4, v5, [I

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    const/16 v4, 0x1f

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    const-string/jumbo v4, "XXXXXXR"

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    iput-object v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x1010434

    invoke-virtual {v4, v5, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060169

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    const v4, 0x1060167

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->SemDatePicker:[I

    invoke-virtual {v4, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v4, 0x1060166

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    const v4, 0x1060180

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v4, 0x1050225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    const v4, 0x1050210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const v4, 0x1050212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v4, 0x1050213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    const v4, 0x1050214

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v4, 0x105020f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    const v4, 0x105020e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    new-instance v4, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v4, p0, p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->setImportantForAccessibility(I)V

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_active_themepackage"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const v4, 0x1050226

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    :goto_0
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    const v4, 0x1050211

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    const v4, 0x1050202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    return-void

    :cond_0
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    goto :goto_0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 47

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v45, v3, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/lit8 v6, v6, 0x2

    div-int v16, v3, v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v23

    const/16 v39, -0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v3, v3

    const v6, 0x402ccccd    # 2.7f

    div-float v12, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    add-int/2addr v3, v6

    int-to-float v0, v3

    move/from16 v36, v0

    const/16 v24, 0x0

    move/from16 v15, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    int-to-float v0, v3

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    int-to-float v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v41, v41, v3

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v19, v19, v3

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v0, v3

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v26, v26, v3

    :cond_2
    const/16 v22, 0x0

    move/from16 v0, v42

    mul-int/lit16 v3, v0, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v41

    float-to-int v6, v6

    add-int v43, v3, v6

    move/from16 v0, v20

    mul-int/lit16 v3, v0, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v19

    float-to-int v6, v6

    add-int v21, v3, v6

    move/from16 v0, v46

    mul-int/lit16 v3, v0, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v26

    float-to-int v6, v6

    add-int v38, v3, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-eqz v3, :cond_3

    add-int v3, v43, v40

    add-int v6, v21, v18

    if-le v3, v6, :cond_c

    const/16 v22, 0x1

    :cond_3
    :goto_0
    if-nez v22, :cond_4

    move/from16 v0, v42

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    cmpl-float v3, v41, v19

    if-nez v3, :cond_d

    move/from16 v0, v46

    move/from16 v1, v42

    if-ne v0, v1, :cond_d

    cmpl-float v3, v26, v41

    if-nez v3, :cond_d

    move/from16 v39, v40

    move/from16 v17, v18

    :cond_4
    :goto_1
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-gt v13, v3, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/lit8 v37, v3, -0x1

    sub-int v3, v37, v23

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v3, v3, v23

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v10, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v6, v6, v10

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v13, v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v13, v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move/from16 v0, v42

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    cmpl-float v3, v41, v26

    if-nez v3, :cond_12

    move/from16 v0, v40

    if-ne v0, v13, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_12

    :goto_4
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v6, v0

    sub-float/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_13

    cmpl-float v3, v19, v26

    if-nez v3, :cond_13

    move/from16 v0, v18

    if-ne v0, v13, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_13

    :goto_5
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v6, v0

    sub-float/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1c

    move/from16 v0, v39

    if-ne v13, v0, :cond_1c

    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_a
    const-string/jumbo v3, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v44

    int-to-float v6, v0

    move/from16 v0, v45

    int-to-float v7, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    move/from16 v0, v23

    if-ne v0, v3, :cond_b

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int v45, v45, v3

    add-int/lit8 v24, v24, 0x1

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_0

    :cond_d
    move/from16 v0, v43

    move/from16 v1, v38

    if-ge v0, v1, :cond_f

    move/from16 v0, v38

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    move/from16 v0, v46

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    cmpl-float v3, v26, v19

    if-nez v3, :cond_e

    const/4 v3, 0x1

    :goto_8
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v17, v3, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    goto :goto_8

    :cond_f
    move/from16 v0, v46

    move/from16 v1, v42

    if-ne v0, v1, :cond_10

    cmpl-float v3, v26, v41

    if-nez v3, :cond_10

    move/from16 v39, v40

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v17, v3, 0x1

    goto/16 :goto_1

    :cond_10
    move/from16 v0, v46

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    cmpl-float v3, v26, v19

    if-nez v3, :cond_4

    const/16 v39, 0x0

    move/from16 v17, v18

    goto/16 :goto_1

    :cond_11
    mul-int/lit8 v3, v23, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    goto/16 :goto_3

    :cond_12
    move/from16 v0, v20

    move/from16 v1, v46

    if-ne v0, v1, :cond_7

    cmpl-float v3, v19, v26

    if-nez v3, :cond_7

    move/from16 v0, v18

    if-ne v0, v13, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    goto/16 :goto_4

    :cond_13
    move/from16 v0, v42

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    cmpl-float v3, v41, v26

    if-nez v3, :cond_8

    move/from16 v0, v40

    if-ne v0, v13, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_8

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v39

    if-ge v0, v13, :cond_15

    move/from16 v0, v17

    if-ge v13, v0, :cond_15

    sub-int v3, v44, v16

    int-to-float v4, v3

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float/2addr v3, v12

    sub-float v5, v3, v36

    mul-int/lit8 v3, v16, 0x2

    int-to-float v3, v3

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_15
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_16

    move/from16 v0, v39

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    move/from16 v0, v39

    if-ne v13, v0, :cond_16

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, v44

    int-to-float v3, v0

    move/from16 v0, v45

    int-to-float v6, v0

    sub-float/2addr v6, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_16
    move/from16 v0, v17

    if-ne v0, v13, :cond_19

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float v11, v3, v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_17

    move/from16 v3, v44

    :goto_9
    int-to-float v4, v3

    sub-float v5, v11, v36

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_18

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_a
    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_17
    sub-int v3, v44, v16

    goto :goto_9

    :cond_18
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_a

    :cond_19
    move/from16 v0, v39

    if-ne v0, v13, :cond_8

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float v11, v3, v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_1a

    sub-int v3, v44, v16

    :goto_b
    int-to-float v4, v3

    sub-float v5, v11, v36

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1b

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_c
    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_1a
    move/from16 v3, v44

    goto :goto_b

    :cond_1b
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1d

    move/from16 v0, v17

    if-eq v13, v0, :cond_9

    :cond_1d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-nez v3, :cond_a

    move/from16 v0, v17

    if-ne v13, v0, :cond_a

    goto/16 :goto_7

    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLastDay:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    if-nez v3, :cond_29

    const/16 v27, 0x1

    :goto_d
    const/4 v3, 0x6

    move/from16 v0, v24

    if-eq v0, v3, :cond_28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/lit8 v37, v3, -0x1

    sub-int v3, v37, v23

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v3, v3, v23

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v10, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v6, v6, v10

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_20

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v0, v27

    if-lt v0, v3, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isNextMonthEndMonth()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_25

    :cond_1f
    sub-int v3, v44, v16

    int-to-float v4, v3

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float/2addr v3, v12

    sub-float v5, v3, v36

    mul-int/lit8 v3, v16, 0x2

    int-to-float v3, v3

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_20
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-nez v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    add-int/lit8 v28, v3, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v29, v0

    const/16 v3, 0xb

    move/from16 v0, v28

    if-le v0, v3, :cond_21

    const/16 v28, 0x0

    add-int/lit8 v29, v29, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    move/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_22
    const-string/jumbo v3, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v44

    int-to-float v6, v0

    move/from16 v0, v45

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    move/from16 v0, v23

    if-ne v0, v3, :cond_23

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int v45, v45, v3

    add-int/lit8 v24, v24, 0x1

    :cond_23
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_d

    :cond_24
    mul-int/lit8 v3, v23, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    goto/16 :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v0, v27

    if-ne v0, v3, :cond_20

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float v11, v3, v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_26

    move/from16 v3, v44

    :goto_10
    int-to-float v4, v3

    sub-float v5, v11, v36

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_27

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_11
    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_26
    sub-int v3, v44, v16

    goto :goto_10

    :cond_27
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_11

    :cond_28
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemSimpleMonthView;->mLastDay:I

    :cond_29
    if-lez v15, :cond_35

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_35

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v7, 0x1

    invoke-virtual {v9, v3, v6, v7}, Ljava/util/Calendar;->set(III)V

    neg-int v3, v15

    const/4 v6, 0x5

    invoke-virtual {v9, v6, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    :goto_12
    sub-int v32, v6, v3

    if-gez v32, :cond_2a

    add-int/lit8 v35, v35, -0x1

    const/16 v32, 0xb

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v3

    sub-int/2addr v3, v15

    add-int/lit8 v33, v3, 0x1

    :cond_2b
    move/from16 v34, v15

    const/16 v31, 0x0

    :goto_13
    move/from16 v0, v31

    if-ge v0, v15, :cond_35

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/lit8 v37, v3, -0x1

    sub-int v3, v37, v31

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    :goto_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v45, v3, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v3, v3, v31

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v10, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v6, v6, v10

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPrevNextMonthDayNumberAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-eqz v3, :cond_2d

    if-nez v39, :cond_2d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v0, v33

    if-gt v0, v3, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isPrevMonthStartMonth()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_32

    :cond_2c
    sub-int v3, v44, v16

    int-to-float v4, v3

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float/2addr v3, v12

    sub-float v5, v3, v36

    mul-int/lit8 v3, v16, 0x2

    int-to-float v3, v3

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2d
    :goto_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-nez v3, :cond_2f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    add-int/lit8 v32, v3, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v35, v0

    if-gez v32, :cond_2e

    const/16 v32, 0xb

    add-int/lit8 v35, v35, -0x1

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    move/from16 v0, v35

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v6, v7}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2f
    const-string/jumbo v3, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v44

    int-to-float v6, v0

    move/from16 v0, v45

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_13

    :cond_30
    const/4 v3, 0x1

    goto/16 :goto_12

    :cond_31
    mul-int/lit8 v3, v31, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v16

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v44, v3, v6

    goto/16 :goto_14

    :cond_32
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v0, v33

    if-ne v0, v3, :cond_2d

    move/from16 v0, v45

    int-to-float v3, v0

    sub-float v11, v3, v12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v3, :cond_33

    sub-int v3, v44, v16

    :goto_16
    int-to-float v4, v3

    sub-float v5, v11, v36

    move/from16 v0, v16

    int-to-float v3, v0

    add-float v6, v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v36

    add-float v7, v5, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_34

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_17
    move/from16 v0, v44

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v6, v14}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_15

    :cond_33
    move/from16 v3, v44

    goto :goto_16

    :cond_34
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_17

    :cond_35
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method private getDayFromLocation(FF)I
    .locals 6

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v4, v4

    sub-float p1, v4, p1

    :cond_0
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    :cond_1
    const/4 v4, -0x1

    return v4

    :cond_2
    float-to-int v4, p2

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    div-int v3, v4, v5

    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v4

    sub-int v4, v0, v4

    add-int/lit8 v1, v4, 0x1

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 3

    const/16 v2, 0x1d

    const/16 v1, 0x1c

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1f

    return v0

    :pswitch_1
    const/16 v0, 0x1e

    return v0

    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDaysInMonthLunar(IIZ)I
    .locals 7

    invoke-static {p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v2, :cond_0

    const-string/jumbo v2, "SemSimpleMonthView"

    const-string/jumbo v3, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_1
    const-string/jumbo v2, "SemSimpleMonthView"

    const-string/jumbo v3, "getDaysInMonthLunar, dayLength is not Integer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SemSimpleMonthView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NoSuchMethodException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v3, "SemSimpleMonthView"

    const-string/jumbo v4, "method is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SemSimpleMonthView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " InvocationTargetException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v6

    :catch_1
    move-exception v1

    const-string/jumbo v3, "SemSimpleMonthView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "SemSimpleMonthView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isNextMonthEndMonth()Z
    .locals 9

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v1, v5

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    int-to-float v0, v5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v5, :cond_0

    add-float/2addr v1, v6

    :cond_0
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    if-ne v5, v3, :cond_1

    add-float/2addr v0, v6

    :cond_1
    sub-float v2, v0, v1

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    if-ne v5, v6, :cond_2

    cmpg-float v5, v2, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v2, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_5

    add-float v5, v8, v2

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_3

    add-float v3, v8, v2

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    xor-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_8

    :cond_7
    :goto_1
    return v3

    :cond_8
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/16 v6, 0xb

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    if-eqz v5, :cond_7

    move v3, v4

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method private isPrevMonthStartMonth()Z
    .locals 9

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v0, v5

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    int-to-float v2, v5

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v5, :cond_0

    add-float/2addr v0, v6

    :cond_0
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    if-ne v5, v3, :cond_1

    add-float/2addr v2, v6

    :cond_1
    sub-float v1, v0, v2

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    if-ne v5, v6, :cond_2

    cmpg-float v5, v1, v7

    if-ltz v5, :cond_3

    cmpl-float v5, v1, v7

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_5

    add-float v5, v8, v1

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_3

    add-float v3, v8, v1

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    xor-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_0
    return v3

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_8

    :cond_7
    :goto_1
    return v3

    :cond_8
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-nez v5, :cond_9

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    const/16 v6, 0xb

    if-eq v5, v6, :cond_7

    move v3, v4

    goto :goto_1

    :cond_9
    move v3, v4

    goto :goto_1
.end method

.method private isRTL()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v4, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    const/4 v2, 0x7

    if-gt p0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/16 v1, 0xb

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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
    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    return p1

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

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

.method private onDayClick(III)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private onDeactivatedDayClick(IIIZ)V
    .locals 9

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    if-eqz p4, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;->onDeactivatedDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;IIIZZ)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p3, v8}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getNumDays()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const v1, 0x1050212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v1, 0x1050214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v1, 0x105020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    return v9

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v1

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-ge v1, v7, :cond_1

    :cond_0
    return v9

    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-gt v1, v7, :cond_0

    :cond_2
    if-gtz v1, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_5

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v10, :cond_4

    :goto_1
    sub-int v4, v7, v8

    if-gez v4, :cond_3

    add-int/lit8 v6, v6, -0x1

    const/16 v4, 0xb

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v5

    add-int v7, v5, v1

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v0, v12, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-direct {p0, v7, v8, v10, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto :goto_0

    :cond_6
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-le v1, v7, :cond_a

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_9

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    if-eqz v7, :cond_8

    move v7, v8

    :goto_2
    add-int v2, v10, v7

    const/16 v7, 0xb

    if-le v2, v7, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :cond_7
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    sub-int v7, v1, v7

    invoke-direct {p0, v3, v2, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto/16 :goto_0

    :cond_8
    move v7, v9

    goto :goto_2

    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v11, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    invoke-virtual {v0, v7, v10, v11}, Ljava/util/Calendar;->set(III)V

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    sub-int v7, v1, v7

    invoke-virtual {v0, v12, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-direct {p0, v7, v10, v11, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDeactivatedDayClick(IIIZ)V

    goto/16 :goto_0

    :cond_a
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-direct {p0, v7, v8, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(III)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setEndDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    return-void
.end method

.method public setFirstMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsFirstMonth:Z

    return-void
.end method

.method public setLastMonth()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLastMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 10

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v6, :cond_2

    iput-object p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string/jumbo v3, "com.android.calendar.Feature"

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v7, 0x1

    invoke-static {v3, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v6, "SemSimpleMonthView"

    const-string/jumbo v7, "setLunar, Calendar Feature class is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SemSimpleMonthView"

    const-string/jumbo v7, "setLunar, Calendar Feature class not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v6, "getSolarLunarConverter"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {p0, v0, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0, v7, v4, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    :try_start_1
    const-string/jumbo v1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v6, "SemSimpleMonthView"

    const-string/jumbo v7, "setLunar, Calendar Converter class is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v2

    const-string/jumbo v6, "SemSimpleMonthView"

    const-string/jumbo v7, "setLunar, Calendar Converter class not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v6, "convertLunarToSolar"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getWeekday"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getYear"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getMonth"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getDay"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getDayLengthOf"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    :cond_2
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 10

    move/from16 v0, p17

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    const/16 v5, 0xa

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    invoke-static {p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidMonth(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    :cond_1
    iput p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMaxDate:Ljava/util/Calendar;

    iget-boolean v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    :cond_2
    :goto_0
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    :goto_1
    invoke-static {p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iput p4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    :goto_2
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v6, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v6, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p5

    :cond_3
    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v6, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v6, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_4

    const/4 v5, 0x5

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p6

    :cond_4
    if-lez p5, :cond_5

    const/16 v5, 0x20

    move/from16 v0, p6

    if-ge v0, v5, :cond_5

    iput p5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    :cond_5
    if-lez p6, :cond_6

    const/16 v5, 0x20

    move/from16 v0, p6

    if-ge v0, v5, :cond_6

    move/from16 v0, p6

    if-lt v0, p5, :cond_6

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v5}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    move/from16 v0, p10

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    move/from16 v0, p11

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v0, p12

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    move/from16 v0, p13

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    move/from16 v0, p14

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    move/from16 v0, p15

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move/from16 v0, p16

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    return-void

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    goto/16 :goto_1

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    goto/16 :goto_2
.end method

.method public setNextMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsNextMonthLeap:Z

    return-void
.end method

.method public setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setOnDeactivatedDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDeactivatedDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDeactivatedDayClickListener;

    return-void
.end method

.method public setPrevMonthLeap()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsPrevMonthLeap:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Calendar;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    return-void
.end method

.method setTextColor()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Calendar_SetColorOfDays"

    iget-object v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v0, 0x2

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v1, v3, v4

    const/16 v3, 0x52

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    aput v4, v3, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    aput v4, v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    aput v4, v3, v1

    goto :goto_1

    :cond_2
    return-void
.end method
