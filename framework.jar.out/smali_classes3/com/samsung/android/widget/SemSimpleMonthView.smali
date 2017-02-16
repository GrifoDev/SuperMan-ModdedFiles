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

.field private mEndCalendar:Ljava/util/Calendar;

.field private mEndDayColor:I

.field private final mFormatter:Ljava/util/Formatter;

.field private mGetDayMethod:Ljava/lang/reflect/Method;

.field private mGetMonthMethod:Ljava/lang/reflect/Method;

.field private mGetWeekDayMethod:Ljava/lang/reflect/Method;

.field private mGetYearMethod:Ljava/lang/reflect/Method;

.field private mHasToday:Z

.field private mIsLeapMonth:Z

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

.field private mStartCalendar:Ljava/util/Calendar;

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
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "className"    # Ljava/lang/Class;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemSimpleMonthView;I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v10, 0x105030b

    const/4 v9, 0x7

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 191
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 91
    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    .line 115
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mHasToday:Z

    .line 118
    iput v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    .line 121
    iput v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mToday:I

    .line 124
    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    .line 127
    iput v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    .line 130
    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    .line 132
    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    .line 135
    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    .line 138
    const/16 v3, 0x1f

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    .line 140
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLabelCalendar:Ljava/util/Calendar;

    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    .line 145
    iput v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    .line 162
    new-array v3, v9, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    .line 166
    const-string/jumbo v3, "XXXXXXR"

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    .line 169
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    .line 170
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    .line 171
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    .line 195
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 196
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010434

    invoke-virtual {v3, v4, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 201
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 202
    new-instance v3, Ljava/util/Formatter;

    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mFormatter:Ljava/util/Formatter;

    .line 205
    const v3, 0x106017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    .line 206
    const v3, 0x1050304

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedStartEndAdjust:I

    .line 208
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    .line 209
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    .line 211
    const v3, 0x105030c

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    .line 212
    const v3, 0x105030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    .line 213
    const v3, 0x105030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 216
    const v3, 0x10502fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    .line 217
    const v3, 0x10502fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    .line 220
    new-instance v3, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/samsung/android/widget/SemSimpleMonthView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    .line 221
    iget-object v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v3}, Lcom/samsung/android/widget/SemSimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 222
    invoke-virtual {p0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 223
    iput-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    .line 225
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 227
    const v3, 0x1050302

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 231
    :goto_0
    const v3, 0x1050311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    .line 233
    const v3, 0x1050312

    .line 232
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    .line 190
    return-void

    .line 229
    :cond_0
    const v3, 0x1050303

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    goto :goto_0
.end method

.method private calculateNumRows()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v1

    .line 543
    .local v1, "offset":I
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    div-int v0, v4, v5

    .line 544
    .local v0, "dividend":I
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v2, v4, v5

    .line 545
    .local v2, "remainder":I
    if-lez v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/2addr v3, v0

    return v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 611
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v24, v2, 0x3

    .line 612
    .local v24, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x2

    div-int v11, v2, v5

    .line 613
    .local v11, "dayWidthHalf":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v16

    .line 614
    .local v16, "j":I
    const/4 v9, 0x1

    .local v9, "day":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-gt v9, v2, :cond_1a

    .line 615
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_8

    .line 616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    add-int/lit8 v18, v2, -0x1

    .line 617
    .local v18, "rtlIndex":I
    sub-int v2, v18, v16

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v23, v2, v5

    .line 622
    .end local v18    # "rtlIndex":I
    .local v23, "x":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    if-ne v2, v9, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-nez v2, :cond_0

    .line 623
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    .line 624
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 623
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v8, v2, v5

    .line 627
    .local v8, "calendarDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    aget v5, v5, v8

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v9, v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v9, v2, :cond_2

    .line 630
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 636
    :cond_2
    const/16 v19, -0x1

    .line 637
    .local v19, "start":I
    const/4 v12, -0x1

    .line 639
    .local v12, "end":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 640
    .local v22, "startYear":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 641
    .local v21, "startMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 642
    .local v20, "startDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 643
    .local v15, "endYear":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 644
    .local v14, "endMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 646
    .local v13, "endDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 647
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 649
    .local v10, "dayNumberSelectedPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_9

    move/from16 v0, v20

    if-ne v0, v9, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    .line 651
    :goto_2
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 656
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v15, v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-ne v14, v2, :cond_a

    if-ne v13, v9, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_a

    .line 658
    :goto_3
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 659
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 661
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 730
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 731
    .local v17, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    move/from16 v0, v19

    if-ne v9, v0, :cond_18

    .line 734
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 737
    :cond_6
    const-string/jumbo v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v25, 0x0

    aput-object v6, v5, v25

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 738
    add-int/lit8 v16, v16, 0x1

    .line 739
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 740
    const/16 v16, 0x0

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    add-int v24, v24, v2

    .line 614
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 619
    .end local v8    # "calendarDay":I
    .end local v10    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    .end local v12    # "end":I
    .end local v13    # "endDay":I
    .end local v14    # "endMonth":I
    .end local v15    # "endYear":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "start":I
    .end local v20    # "startDay":I
    .end local v21    # "startMonth":I
    .end local v22    # "startYear":I
    .end local v23    # "x":I
    :cond_8
    mul-int/lit8 v2, v16, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    add-int v23, v2, v5

    .restart local v23    # "x":I
    goto/16 :goto_1

    .line 650
    .restart local v8    # "calendarDay":I
    .restart local v10    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    .restart local v12    # "end":I
    .restart local v13    # "endDay":I
    .restart local v14    # "endMonth":I
    .restart local v15    # "endYear":I
    .restart local v19    # "start":I
    .restart local v20    # "startDay":I
    .restart local v21    # "startMonth":I
    .restart local v22    # "startYear":I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v15, v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-ne v14, v2, :cond_3

    if-ne v13, v9, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    goto/16 :goto_2

    .line 657
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    move/from16 v0, v20

    if-ne v0, v9, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    goto/16 :goto_3

    .line 664
    .end local v10    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    .line 665
    .local v7, "dayStartEndPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 667
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 668
    .restart local v10    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 670
    move/from16 v0, v22

    if-ne v0, v15, :cond_e

    move/from16 v0, v21

    if-ne v0, v14, :cond_e

    .line 671
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_e

    .line 672
    move/from16 v19, v20

    .line 673
    move v12, v13

    .line 689
    :cond_c
    :goto_6
    move/from16 v0, v19

    if-ge v0, v9, :cond_d

    if-ge v9, v12, :cond_d

    .line 690
    sub-int v2, v23, v11

    int-to-float v3, v2

    .line 691
    .local v3, "startX":F
    move/from16 v0, v24

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

    .line 692
    .local v4, "startY":F
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

    .line 695
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_d
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_12

    move/from16 v0, v19

    if-ne v0, v12, :cond_12

    move/from16 v0, v19

    if-ne v9, v0, :cond_12

    .line 696
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 697
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 676
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    cmp-long v2, v26, v28

    if-gez v2, :cond_10

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    cmp-long v2, v26, v28

    if-gez v2, :cond_10

    .line 678
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v2, v15, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-eq v2, v14, :cond_10

    .line 679
    :cond_f
    const/16 v19, 0x0

    .line 680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v12, v2, 0x1

    .line 678
    goto/16 :goto_6

    .line 681
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    move/from16 v0, v21

    if-ne v2, v0, :cond_11

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    add-int/lit8 v12, v2, 0x1

    .line 681
    goto/16 :goto_6

    .line 684
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v2, v15, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-ne v2, v14, :cond_c

    .line 685
    const/16 v19, 0x0

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    goto/16 :goto_6

    .line 699
    :cond_12
    if-ne v12, v9, :cond_15

    .line 700
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_13

    move/from16 v2, v23

    :goto_7
    int-to-float v3, v2

    .line 701
    .restart local v3    # "startX":F
    move/from16 v0, v24

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

    .line 702
    .restart local v4    # "startY":F
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

    .line 704
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_14

    .line 707
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 711
    :goto_8
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 700
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_13
    sub-int v2, v23, v11

    goto/16 :goto_7

    .line 709
    .restart local v3    # "startX":F
    .restart local v4    # "startY":F
    :cond_14
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_8

    .line 714
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_15
    move/from16 v0, v19

    if-ne v0, v9, :cond_4

    .line 715
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_16

    sub-int v2, v23, v11

    :goto_9
    int-to-float v3, v2

    .line 716
    .restart local v3    # "startX":F
    move/from16 v0, v24

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

    .line 717
    .restart local v4    # "startY":F
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

    .line 719
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 721
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17

    .line 722
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 726
    :goto_a
    move/from16 v0, v23

    int-to-float v2, v0

    move/from16 v0, v24

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v25, 0x402ccccd    # 2.7f

    div-float v6, v6, v25

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_16
    move/from16 v2, v23

    .line 715
    goto/16 :goto_9

    .line 724
    .restart local v3    # "startX":F
    .restart local v4    # "startY":F
    :cond_17
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_a

    .line 732
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v7    # "dayStartEndPaint":Landroid/graphics/Paint;
    .restart local v17    # "paint":Landroid/graphics/Paint;
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_19

    if-eq v9, v12, :cond_5

    .line 733
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    if-nez v2, :cond_6

    if-ne v9, v12, :cond_6

    goto/16 :goto_5

    .line 609
    .end local v8    # "calendarDay":I
    .end local v10    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    .end local v12    # "end":I
    .end local v13    # "endDay":I
    .end local v14    # "endMonth":I
    .end local v15    # "endYear":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "start":I
    .end local v20    # "startDay":I
    .end local v21    # "startMonth":I
    .end local v22    # "startYear":I
    .end local v23    # "x":I
    :cond_1a
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .prologue
    .line 747
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
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 477
    if-nez p1, :cond_0

    .line 478
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 481
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 482
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 483
    return-object v2
.end method

.method private getDayFromLocation(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v6, -0x1

    .line 758
    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPadding:I

    .line 759
    .local v2, "dayStart":I
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    if-eqz v4, :cond_0

    .line 760
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v4, v4

    sub-float p1, v4, p1

    .line 762
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

    .line 763
    :cond_1
    return v6

    .line 766
    :cond_2
    float-to-int v4, p2

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    div-int v3, v4, v5

    .line 767
    .local v3, "row":I
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 769
    .local v0, "column":I
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->findDayOffset()I

    move-result v4

    sub-int v4, v0, v4

    add-int/lit8 v1, v4, 0x1

    .line 770
    .local v1, "day":I
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 771
    const/4 v4, 0x1

    if-lt v1, v4, :cond_3

    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-le v1, v4, :cond_4

    .line 772
    :cond_3
    return v6

    .line 774
    :cond_4
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 3
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    const/16 v2, 0x1d

    const/16 v1, 0x1c

    .line 507
    packed-switch p0, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 520
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 522
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_2

    .line 523
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    .line 524
    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_0

    .line 525
    return v2

    .line 527
    :cond_0
    return v1

    .line 529
    :cond_1
    return v2

    .line 531
    :cond_2
    return v1

    .line 507
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
    .param p1, "month"    # I
    .param p2, "year"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    .line 489
    invoke-static {p1, p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v1

    .line 491
    .local v1, "solarDay":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 492
    const-string/jumbo v2, "SemSimpleMonthView"

    const-string/jumbo v3, "getDaysInMonthLunar, mSolarLunarConverter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v1

    .line 496
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

    .line 498
    .local v0, "dayLength":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 499
    nop

    nop

    .end local v0    # "dayLength":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 501
    .restart local v0    # "dayLength":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v2, "SemSimpleMonthView"

    const-string/jumbo v3, "getDaysInMonthLunar, dayLength is not Integer"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return v1
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p2, "methodName"    # Ljava/lang/String;
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

    .prologue
    .line 1071
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1074
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1079
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 1075
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/lang/NoSuchMethodException;
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

    .prologue
    .line 598
    const/16 v6, 0x34

    .line 600
    .local v6, "flags":I
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 601
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 602
    .local v2, "millis":J
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mFormatter:Ljava/util/Formatter;

    .line 603
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 602
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 331
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 332
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 335
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    .line 346
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    .line 349
    const-string/jumbo v1, "sec-roboto-light"

    .line 348
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 350
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    return-void
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1085
    if-nez p2, :cond_0

    .line 1086
    const-string/jumbo v4, "SemSimpleMonthView"

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-object v7

    .line 1091
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1092
    .local v3, "result":Ljava/lang/Object;
    return-object v3

    .line 1097
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1098
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
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

    .line 1101
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v7

    .line 1095
    :catch_1
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/IllegalArgumentException;
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

    .line 1093
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/IllegalAccessException;
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

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1007
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1009
    .local v1, "defLocale":Ljava/util/Locale;
    const-string/jumbo v4, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    return v3

    .line 1012
    :cond_0
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1013
    .local v0, "defDirectionality":B
    if-eq v0, v2, :cond_1

    .line 1014
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1013
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 1014
    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 3
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 362
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
    .param p0, "month"    # I

    .prologue
    const/4 v0, 0x0

    .line 366
    if-ltz p0, :cond_0

    const/16 v1, 0xb

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 570
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 571
    return p1

    .line 573
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 574
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 576
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 586
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

    .line 578
    :sswitch_0
    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    .line 579
    return p1

    .line 581
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    .line 582
    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 584
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 576
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDayClick(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 784
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    .line 785
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 786
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 787
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 788
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 789
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;->onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/util/Calendar;)V

    .line 793
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 783
    return-void
.end method

.method private sameDay(ILandroid/text/format/Time;)Z
    .locals 3
    .param p1, "day"    # I
    .param p2, "today"    # Landroid/text/format/Time;

    .prologue
    const/4 v0, 0x0

    .line 549
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v2, p2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v2, p2, Landroid/text/format/Time;->month:I

    if-ne v1, v2, :cond_0

    .line 550
    iget v1, p2, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 549
    :cond_0
    return v0
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 814
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method getAccessibilityFocus()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 801
    iget-object v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v1

    .line 802
    .local v1, "day":I
    const/4 v0, 0x0

    .line 803
    .local v0, "date":Ljava/util/Calendar;
    if-ltz v1, :cond_0

    .line 804
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 805
    .local v0, "date":Ljava/util/Calendar;
    iget v2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget v3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/Calendar;->set(III)V

    .line 807
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    return-object v0
.end method

.method public getDayHeight()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    return v0
.end method

.method public getNumDays()I
    .locals 1

    .prologue
    .line 999
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v4, 0x105030b

    .line 241
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->isRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsRTL:Z

    .line 243
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE"

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 245
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 247
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 248
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    .line 249
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayHeight:I

    .line 251
    const v1, 0x105030c

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDaySelectedCircleSize:I

    .line 252
    const v1, 0x105030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 254
    const v1, 0x10502fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/widget/SemSimpleMonthView;->initView()V

    .line 240
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 357
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 555
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->makeMeasureSpec(II)I

    move-result v0

    .line 556
    .local v0, "newWidthMeasureSpec":I
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 559
    iget-object v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 554
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 591
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 307
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 308
    .local v0, "day":I
    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    if-le v0, v1, :cond_2

    .line 309
    :cond_1
    return v3

    .line 311
    :cond_2
    if-ltz v0, :cond_0

    .line 312
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->onDayClick(I)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method restoreAccessibilityFocus(Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 826
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    if-eq v0, v1, :cond_1

    .line 828
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 827
    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    if-gt v0, v1, :cond_0

    .line 830
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;->setFocusedVirtualView(I)V

    .line 831
    return v2
.end method

.method public reuse()V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 537
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 282
    :cond_0
    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 11
    .param p1, "isLunar"    # Z
    .param p2, "isLeapMonth"    # Z
    .param p3, "pathClassLoader"    # Ldalvik/system/PathClassLoader;

    .prologue
    .line 1020
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    .line 1021
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    .line 1023
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 1024
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "calendarPkgName":Ljava/lang/String;
    iput-object p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 1026
    const/4 v0, 0x0

    .line 1028
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v4, "com.android.calendar.Feature"

    .line 1029
    .local v4, "featureClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1034
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1035
    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Feature class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    return-void

    .line 1030
    .end local v4    # "featureClassName":Ljava/lang/String;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 1031
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Feature class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-void

    .line 1039
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "featureClassName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "getSolarLunarConverter"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v0, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1040
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    .line 1042
    const/4 v6, 0x0

    .line 1044
    .local v6, "solarLunarConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter"

    .line 1045
    .local v2, "converterClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1050
    .local v6, "solarLunarConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 1051
    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Converter class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    return-void

    .line 1046
    .end local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 1047
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemSimpleMonthView"

    const-string/jumbo v8, "setLunar, Calendar Converter class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-void

    .line 1055
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string/jumbo v7, "convertLunarToSolar"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    .line 1056
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

    .line 1055
    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mConvertLunarToSolarMethod:Ljava/lang/reflect/Method;

    .line 1058
    const-string/jumbo v7, "getWeekday"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    .line 1059
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 1058
    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    .line 1061
    const-string/jumbo v7, "getYear"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    .line 1062
    const-string/jumbo v7, "getMonth"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    .line 1063
    const-string/jumbo v7, "getDay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    .line 1065
    const-string/jumbo v7, "getDayLengthOf"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    .line 1066
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 1065
    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayLengthMethod:Ljava/lang/reflect/Method;

    .line 1019
    .end local v0    # "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "calendarPkgName":Ljava/lang/String;
    .end local v2    # "converterClassName":Ljava/lang/String;
    .end local v4    # "featureClassName":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "solarLunarConverterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 12
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I
    .param p7, "minDate"    # Ljava/util/Calendar;
    .param p8, "maxDate"    # Ljava/util/Calendar;
    .param p9, "startDate"    # Ljava/util/Calendar;
    .param p10, "endDate"    # Ljava/util/Calendar;
    .param p11, "mode"    # I

    .prologue
    .line 386
    move/from16 v0, p11

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMode:I

    .line 387
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_0

    .line 388
    const/16 v7, 0xa

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekHeight:I

    .line 391
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSelectedDay:I

    .line 393
    invoke-static {p2}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidMonth(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 394
    iput p2, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    .line 396
    :cond_1
    iput p3, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    .line 400
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    if-eqz v7, :cond_7

    .line 401
    new-instance v6, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 405
    .local v6, "today":Landroid/text/format/Time;
    :goto_0
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 406
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mHasToday:Z

    .line 407
    const/4 v7, -0x1

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mToday:I

    .line 409
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 410
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 411
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 412
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 415
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLunar:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    if-eqz v7, :cond_9

    .line 416
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

    .line 417
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetYearMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 418
    .local v5, "lunarYear":Ljava/lang/Object;
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetMonthMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 419
    .local v4, "lunarMonth":Ljava/lang/Object;
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetDayMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    .local v3, "lunarDay":Ljava/lang/Object;
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    instance-of v7, v4, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 421
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSolarLunarConverter:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mGetWeekDayMethod:Ljava/lang/reflect/Method;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    nop

    nop

    .end local v5    # "lunarYear":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 422
    nop

    nop

    .end local v4    # "lunarMonth":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    nop

    nop

    .end local v3    # "lunarDay":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 421
    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 423
    .local v2, "dayOfWeekStart":Ljava/lang/Object;
    instance-of v7, v2, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 424
    nop

    nop

    .end local v2    # "dayOfWeekStart":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    .line 429
    :cond_2
    :goto_1
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mIsLeapMonth:Z

    invoke-direct {p0, v7, v8, v9}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonthLunar(IIZ)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    .line 436
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/samsung/android/widget/SemSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 437
    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    .line 442
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

    .line 443
    const/4 v7, 0x5

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 446
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

    .line 447
    const/4 v7, 0x5

    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 450
    :cond_4
    if-lez p5, :cond_5

    const/16 v7, 0x20

    move/from16 v0, p6

    if-ge v0, v7, :cond_5

    .line 451
    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayStart:I

    .line 453
    :cond_5
    if-lez p6, :cond_6

    const/16 v7, 0x20

    move/from16 v0, p6

    if-ge v0, v7, :cond_6

    move/from16 v0, p6

    move/from16 v1, p5

    if-lt v0, v1, :cond_6

    .line 454
    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEnabledDayEnd:I

    .line 458
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTouchHelper:Lcom/samsung/android/widget/SemSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v7}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 460
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 461
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 463
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    move-object/from16 v0, p9

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 464
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clear()V

    .line 465
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 466
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 467
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    move-object/from16 v0, p10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 385
    return-void

    .line 403
    .end local v6    # "today":Landroid/text/format/Time;
    :cond_7
    new-instance v6, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v6    # "today":Landroid/text/format/Time;
    goto/16 :goto_0

    .line 427
    .restart local v3    # "lunarDay":Ljava/lang/Object;
    .restart local v4    # "lunarMonth":Ljava/lang/Object;
    .restart local v5    # "lunarYear":Ljava/lang/Object;
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    goto/16 :goto_1

    .line 431
    .end local v3    # "lunarDay":Ljava/lang/Object;
    .end local v4    # "lunarMonth":Ljava/lang/Object;
    .end local v5    # "lunarYear":Ljava/lang/Object;
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayOfWeekStart:I

    .line 432
    iget v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mMonth:I

    iget v8, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mYear:I

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemSimpleMonthView;->getDaysInMonth(II)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumCells:I

    goto/16 :goto_2

    .line 439
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekStart:I

    goto/16 :goto_3
.end method

.method public setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;

    .line 290
    return-void
.end method

.method setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 262
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x106017d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    .line 263
    const v4, 0x106017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    .line 264
    const v4, 0x106017b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Calendar_SetColorOfDays"

    iget-object v6, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    if-ge v0, v4, :cond_2

    .line 269
    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 270
    .local v2, "parsedColor":C
    add-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNumDays:I

    rem-int v1, v4, v5

    .line 271
    .local v1, "index":I
    const/16 v4, 0x52

    if-ne v2, v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSundayTextColor:I

    aput v5, v4, v1

    .line 268
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    const/16 v4, 0x42

    if-ne v2, v4, :cond_1

    .line 274
    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mSaturdayTextColor:I

    aput v5, v4, v1

    goto :goto_1

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mDayColorSet:[I

    iget v5, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mNormalTextColor:I

    aput v5, v4, v1

    goto :goto_1

    .line 259
    .end local v1    # "index":I
    .end local v2    # "parsedColor":C
    :cond_2
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    if-eq v0, p1, :cond_0

    .line 836
    iput-object p1, p0, Lcom/samsung/android/widget/SemSimpleMonthView;->mTimeZone:Ljava/util/TimeZone;

    .line 834
    :cond_0
    return-void
.end method
