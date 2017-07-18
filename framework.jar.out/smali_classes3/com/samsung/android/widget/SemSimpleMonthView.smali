.class Lcom/samsung/android/widget/SemSimpleMonthView;
.super Landroid/view/View;
.source "SemSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;,
        Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final LEAP_MONTH:I = 0x1

.field private static final LEAP_MONTH_WEIGHT:F = 0.5f

.field private static final MIN_HEIGHT:I = 0xa

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemSimpleMonthView"


# instance fields
.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarHeight:I

.field private mCalendarWidth:I

.field private mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

.field private final mDateBackgroundBetweenStartEndAlpha:I

.field private mDayColorSet:[I

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayHeight:I

.field private final mDayLabelCalendar:Ljava/util/Calendar;

.field private mDayLengthMethod:Ljava/lang/reflect/Method;

.field private final mDayNumberDisabledAlpha:I

.field private mDayNumberEndPaint:Landroid/graphics/Paint;

.field private mDayNumberKeySelectedPaint:Landroid/graphics/Paint;

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

.field private final mFormatter:Ljava/util/Formatter;

.field private mGetDayMethod:Ljava/lang/reflect/Method;

.field private mGetMonthMethod:Ljava/lang/reflect/Method;

.field private mGetWeekDayMethod:Ljava/lang/reflect/Method;

.field private mGetYearMethod:Ljava/lang/reflect/Method;

.field private mHasToday:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsRTL:Z

.field private mLockAccessibilityDelegate:Z

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

.field private mPadding:I

.field private mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mSaturdayTextColor:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mSolarLunarConverter:Ljava/lang/Object;

.field private mStartDay:I

.field private mStartMonth:I

.field private mStartYear:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSundayTextColor:I

.field private mTimeZone:Ljava/util/TimeZone;

.field private mToday:I

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

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemSimpleMonthView;)Ldalvik/system/PathClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemSimpleMonthView;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemSimpleMonthView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemSimpleMonthView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

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

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemSimpleMonthView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(I)V

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

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const v10, 0x105030b

    const/4 v9, 0x7

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mHasToday:Z

    iput v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    iput v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mToday:I

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    iput v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    const/16 v3, 0x1f

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    new-array v3, v9, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    const-string/jumbo v3, "XXXXXXR"

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010434

    invoke-virtual {v3, v4, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mFormatter:Ljava/util/Formatter;

    const v3, 0x106017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    const v3, 0x1050304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    const v3, 0x105030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v3, 0x105030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    const v3, 0x105030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v3, 0x10502fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    const v3, 0x10502fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    new-instance v3, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const v3, 0x1050302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    :goto_0
    const v3, 0x1050311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    const v3, 0x1050312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    return-void

    :cond_0
    const v3, 0x1050303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    goto :goto_0
.end method

.method private calculateNumRows()I
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    div-int v0, v4, v5

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v2, v4, v5

    if-lez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/2addr v3, v0

    return v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v26, v2, 0x3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x2

    div-int v11, v2, v5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v17

    const/4 v9, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-gt v9, v2, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/lit8 v20, v2, -0x1

    sub-int v2, v20, v17

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v25, v2, v5

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v8, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v5, v5, v8

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v9, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v9, v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    const/16 v21, -0x1

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartYear:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartMonth:I

    int-to-float v0, v2

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartDay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndYear:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndMonth:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDay:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapStartMonth:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v23, v23, v2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapEndMonth:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v14, v2

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v18, v18, v2

    :cond_4
    move/from16 v0, v24

    mul-int/lit16 v2, v0, 0x2710

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v23

    float-to-int v5, v5

    add-int/2addr v2, v5

    add-int v2, v2, v22

    mul-int/lit16 v5, v15, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v14

    float-to-int v6, v6

    add-int/2addr v5, v6

    add-int/2addr v5, v13

    if-le v2, v5, :cond_b

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    cmpl-float v2, v23, v18

    if-nez v2, :cond_c

    move/from16 v0, v22

    if-ne v0, v9, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_c

    :goto_3
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    move/from16 v0, v27

    if-ne v15, v0, :cond_d

    cmpl-float v2, v14, v18

    if-nez v2, :cond_d

    if-ne v13, v9, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_d

    :goto_4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b

    move/from16 v0, v21

    if-ne v9, v0, :cond_1b

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_8
    const-string/jumbo v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v28, 0x0

    aput-object v6, v5, v28

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v25

    int-to-float v5, v0

    move/from16 v0, v26

    int-to-float v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int v26, v26, v2

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v25, v2, v5

    goto/16 :goto_1

    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_c
    move/from16 v0, v27

    if-ne v15, v0, :cond_5

    cmpl-float v2, v14, v18

    if-nez v2, :cond_5

    if-ne v13, v9, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    goto/16 :goto_3

    :cond_d
    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    cmpl-float v2, v23, v18

    if-nez v2, :cond_6

    move/from16 v0, v22

    if-ne v0, v9, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v24

    if-ne v0, v15, :cond_11

    cmpl-float v2, v23, v14

    if-nez v2, :cond_11

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    cmpl-float v2, v18, v23

    if-nez v2, :cond_11

    move/from16 v21, v22

    move v12, v13

    :cond_f
    :goto_7
    move/from16 v0, v21

    if-ge v0, v9, :cond_10

    if-ge v9, v12, :cond_10

    sub-int v2, v25, v11

    int-to-float v3, v2

    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    mul-int/lit8 v2, v11, 0x2

    int-to-float v2, v2

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_10
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_15

    move/from16 v0, v21

    if-ne v0, v12, :cond_15

    move/from16 v0, v21

    if-ne v9, v0, :cond_15

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_11
    move/from16 v0, v24

    mul-int/lit16 v2, v0, 0x2710

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v23

    float-to-int v5, v5

    add-int/2addr v2, v5

    move/from16 v0, v27

    mul-int/lit16 v5, v0, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v18

    float-to-int v6, v6

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_12

    move/from16 v0, v27

    mul-int/lit16 v2, v0, 0x2710

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v2, v5

    mul-int/lit16 v5, v15, 0x2710

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v14

    float-to-int v6, v6

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_12

    move/from16 v0, v27

    if-ne v0, v15, :cond_13

    cmpl-float v2, v18, v14

    if-nez v2, :cond_13

    :cond_12
    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_14

    cmpl-float v2, v18, v23

    if-nez v2, :cond_14

    move/from16 v21, v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v12, v2, 0x1

    goto/16 :goto_7

    :cond_13
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v12, v2, 0x1

    goto/16 :goto_7

    :cond_14
    move/from16 v0, v27

    if-ne v0, v15, :cond_f

    cmpl-float v2, v18, v14

    if-nez v2, :cond_f

    const/16 v21, 0x0

    move v12, v13

    goto/16 :goto_7

    :cond_15
    if-ne v12, v9, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_16

    move/from16 v2, v25

    :goto_8
    int-to-float v3, v2

    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    int-to-float v2, v11

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_17

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_9
    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_16
    sub-int v2, v25, v11

    goto/16 :goto_8

    :cond_17
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_9

    :cond_18
    move/from16 v0, v21

    if-ne v0, v9, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_19

    sub-int v2, v25, v11

    :goto_a
    int-to-float v3, v2

    move/from16 v0, v26

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    int-to-float v2, v11

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_b
    move/from16 v0, v25

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v28, 0x402ccccd    # 2.7f

    div-float v6, v6, v28

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_19
    move/from16 v2, v25

    goto/16 :goto_a

    :cond_1a
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1c

    if-eq v9, v12, :cond_7

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-nez v2, :cond_8

    if-ne v9, v12, :cond_8

    goto/16 :goto_6

    :cond_1d
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

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v2
.end method

.method private getDayFromLocation(FF)I
    .locals 7

    const/4 v6, -0x1

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
    return v6

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

    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-le v1, v4, :cond_4

    :cond_3
    return v6

    :cond_4
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

    nop

    nop

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

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 8

    const/16 v6, 0x34

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mFormatter:Ljava/util/Formatter;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

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

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

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
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v4, "SemSimpleMonthView"

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

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

    const-string/jumbo v4, "SemSimpleMonthView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " InvocationTargetException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v7

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SemSimpleMonthView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v4, "SemSimpleMonthView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalAccessException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
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

.method private onDayClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v2, p2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v2, p2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    iget v1, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method getAccessibilityFocus()Ljava/util/Calendar;
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v1

    const/4 v0, 0x0

    if-ltz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    :cond_0
    return-object v0
.end method

.method public getDayHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    return v0
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
    .locals 5

    const v4, 0x105030b

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE"

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    const v1, 0x105030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    const v1, 0x105030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    const v1, 0x10502fd

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

    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v1, :cond_2

    :cond_1
    return v3

    :cond_2
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    return v2
.end method

.method public reuse()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 11

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v4, "com.android.calendar.Feature"

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Feature class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Feature class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v7, "getSolarLunarConverter"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v0, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Converter class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v3

    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Converter class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v7, "convertLunarToSolar"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "getWeekday"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "getYear"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "getMonth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "getDay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v7, "getDayLengthOf"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    :cond_2
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V
    .locals 12

    move/from16 v0, p17

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    const/16 v7, 0xa

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    invoke-static {p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidMonth(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    :cond_1
    iput p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v7, :cond_7

    new-instance v6, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mHasToday:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mToday:I

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    iget-boolean v10, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    :cond_2
    :goto_1
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    :goto_3
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v8, 0x2

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v8, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    const/4 v7, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p5

    :cond_3
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v8, 0x2

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v8, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_4

    const/4 v7, 0x5

    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p6

    :cond_4
    if-lez p5, :cond_5

    const/16 v7, 0x20

    move/from16 v0, p6

    if-ge v0, v7, :cond_5

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    :cond_5
    if-lez p6, :cond_6

    const/16 v7, 0x20

    move/from16 v0, p6

    if-ge v0, v7, :cond_6

    move/from16 v0, p6

    move/from16 v1, p5

    if-lt v0, v1, :cond_6

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

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
    new-instance v6, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    goto/16 :goto_2

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    goto/16 :goto_3
.end method

.method public setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    return-void
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106017d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    const v4, 0x106017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    const v4, 0x106017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Calendar_SetColorOfDays"

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v1, v4, v5

    const/16 v4, 0x52

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    aput v5, v4, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x42

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    aput v5, v4, v1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    aput v5, v4, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    :cond_0
    return-void
.end method
