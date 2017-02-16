.class public Lcom/samsung/android/widget/SemDatePicker;
.super Landroid/widget/LinearLayout;
.source "SemDatePicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePicker$1;,
        Lcom/samsung/android/widget/SemDatePicker$2;,
        Lcom/samsung/android/widget/SemDatePicker$3;,
        Lcom/samsung/android/widget/SemDatePicker$4;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;,
        Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;,
        Lcom/samsung/android/widget/SemDatePicker$LunarDate;,
        Lcom/samsung/android/widget/SemDatePicker$LunarUtils;,
        Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;,
        Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/widget/SemDatePicker$SavedState;,
        Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;
    }
.end annotation


# static fields
.field public static final DATE_MODE_END:I = 0x2

.field public static final DATE_MODE_NONE:I = 0x0

.field public static final DATE_MODE_START:I = 0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MONTH_PER_YEAR:I = 0xc

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final SEM_DEBUG:Z = false

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SPINNER_HAVE_ONLY_ONE_ITEM_ALPHA:I = 0x66

.field private static final TAG:Ljava/lang/String;

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_CALENDAR:I = 0x0

.field private static final VIEW_SPINNER:I = 0x1

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarHeaderTextSize:I

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

.field private final mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentView:I

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayHeight:I

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

.field private mEndDate:Ljava/util/Calendar;

.field private mEndYear:I

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mGetLunarMethod:Ljava/lang/reflect/Method;

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

.field private mIsConfigurationChanged:Z

.field private mIsEnabled:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsFromSystem:Z

.field private mIsLeapMonth:Z

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mLongPressUpdateInterval:J

.field private mLunarChanged:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mMonthKeyListener:Landroid/view/View$OnKeyListener;

.field private mMonthTouchListener:Landroid/view/View$OnTouchListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mNumberOfMonths:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

.field private mSpinnerLayoutBottomMargin:I

.field private mSpinnerLayoutBottomMarginRatio:F

.field private mSpinnerLayoutHeight:I

.field private mSpinnerLayoutHeightRatio:F

.field private mSpinnerLayoutTopMargin:I

.field private mSpinnerLayoutTopMarginRatio:F

.field private mStartDate:Ljava/util/Calendar;

.field private mStartOfLunarYearField:Ljava/lang/reflect/Field;

.field private mStartYear:I

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field private mWeekStart:I

.field private mWidthPerYearField:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemDatePicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemDatePicker;)Lcom/android/internal/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePicker;ZZ)V
    .locals 0
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePicker;I)V
    .locals 0
    .param p1, "viewIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePicker;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 447
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 461
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    .line 190
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 212
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    .line 230
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSystem:Z

    .line 234
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    .line 239
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    .line 242
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    .line 244
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 245
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    .line 258
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 261
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$1;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 269
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    .line 278
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 281
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    .line 282
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 283
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 284
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    .line 285
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 286
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 298
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$2;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    .line 396
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$3;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    .line 406
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$4;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 465
    .local v12, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/widget/SemDatePicker;->setLocale(Ljava/util/Locale;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 474
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 475
    sget-object v19, Lcom/android/internal/R$styleable;->DatePicker:[I

    .line 474
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 476
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    .line 477
    const/16 v19, 0x76e

    .line 476
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    .line 478
    const/16 v18, 0x2

    const/16 v19, 0x834

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Ljava/util/Calendar;->set(III)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    move/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    invoke-virtual/range {v18 .. v21}, Ljava/util/Calendar;->set(III)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 483
    const-string/jumbo v19, "layout_inflater"

    .line 482
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 485
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x10900fe

    .line 486
    .local v11, "layoutResourceId":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 488
    const/16 v18, 0x3

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 490
    .local v8, "firstDayOfWeek":I
    if-eqz v8, :cond_0

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/widget/SemDatePicker;->setFirstDayOfWeek(I)V

    .line 495
    :cond_0
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 496
    .local v17, "tempText":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v7

    .line 500
    .local v7, "defaultHighlightColor":I
    const/16 v18, 0xf

    .line 499
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 501
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    const v18, 0x10204a5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    .line 504
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 507
    const v18, 0x10502fc

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    .line 508
    const v18, 0x102049c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 509
    const v18, 0x102049e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 513
    const v18, 0x10204a1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ViewAnimator;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    .line 514
    const v18, 0x10204a2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 515
    const v18, 0x10204a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$5;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    .line 558
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$6;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$7;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 573
    const v18, 0x1050305

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    .line 576
    const v18, 0x10502fd

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 577
    const v18, 0x1050317

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    .line 578
    const v18, 0x10502fd

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 579
    const v18, 0x10204a3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 580
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 583
    const v18, 0x102049a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 584
    const v18, 0x102049b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 587
    const v18, 0x102049f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 588
    const v18, 0x102049d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x10408d1

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x10408d2

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 605
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 606
    .local v13, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x101045c

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 607
    iget v0, v13, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    .line 609
    const v18, 0x1050309

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 610
    const v18, 0x105030a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const v19, 0x102049e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const v19, 0x102049e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x102049f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x102049d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 619
    new-instance v18, Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V

    .line 625
    const v18, 0x10204a0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 626
    const v18, 0x10204a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 627
    const v18, 0x105031c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    .line 628
    const v18, 0x105031d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    .line 630
    const v18, 0x1050318

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    .line 631
    const v18, 0x1050319

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    .line 632
    const v18, 0x105031a

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 644
    .local v14, "millis":J
    const/16 v9, 0x10

    .line 647
    .local v9, "flags":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 460
    return-void

    .line 592
    .end local v9    # "flags":I
    .end local v13    # "outValue":Landroid/util/TypedValue;
    .end local v14    # "millis":J
    :cond_1
    const v18, 0x102049d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 593
    const v18, 0x102049f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    goto/16 :goto_0
.end method

.method private checkMaxFontSize()V
    .locals 6

    .prologue
    .line 2050
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2051
    .local v0, "currentFontScale":F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderTextSize:I

    .line 2049
    const v1, 0x3f99999a    # 1.2f

    .line 2053
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2054
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderTextSize:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2048
    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 712
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 713
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 714
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 715
    return-object v2
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2475
    const-string/jumbo v1, "com.android.calendar"

    .line 2476
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 2477
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.calendar"

    .line 2476
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2478
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2481
    :try_start_0
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2488
    :cond_0
    :goto_0
    return-object v2

    .line 2483
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 1169
    packed-switch p0, :pswitch_data_0

    .line 1186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 1182
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 1184
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 1169
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

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 2526
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 2529
    .local v1, "memberField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2534
    .end local v1    # "memberField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 2530
    .restart local v1    # "memberField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 2531
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

.method private getIndexOfleapMonthOfYear(I)I
    .locals 11
    .param p1, "year"    # I

    .prologue
    const/16 v8, 0x7f

    .line 2391
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 2392
    return v8

    .line 2394
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 2395
    .local v4, "startOfLunarYear":Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 2396
    .local v5, "widthPerYear":Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 2397
    .local v1, "indexOfLeapMonth":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 2398
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 2403
    nop

    nop

    .end local v4    # "startOfLunarYear":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, p1, v6

    nop

    nop

    .end local v5    # "widthPerYear":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int v3, v6, v7

    .line 2404
    .local v3, "startIndexOfYear":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    .end local v1    # "indexOfLeapMonth":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2405
    .local v0, "index":Ljava/lang/Object;
    const/16 v2, 0x7f

    .line 2406
    .local v2, "indexOfLeapMonthOfYear":I
    instance-of v6, v0, Ljava/lang/Byte;

    if-eqz v6, :cond_1

    .line 2407
    nop

    nop

    .end local v0    # "index":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 2410
    :cond_1
    return v2

    .line 2399
    .end local v2    # "indexOfLeapMonthOfYear":I
    .end local v3    # "startIndexOfYear":I
    .restart local v1    # "indexOfLeapMonth":Ljava/lang/Object;
    .restart local v4    # "startOfLunarYear":Ljava/lang/Object;
    .restart local v5    # "widthPerYear":Ljava/lang/Object;
    :cond_2
    sget-object v6, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return v8
.end method

.method private getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 2362
    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    invoke-direct {v5}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;-><init>()V

    .line 2363
    .local v5, "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    .line 2364
    .local v8, "year":I
    const/4 v6, 0x0

    .line 2365
    .local v6, "month":I
    const/4 v1, 0x0

    .local v1, "indexOfLeapMonthOfYear":I
    const/4 v2, 0x0

    .local v2, "indexOfMonth":I
    const/4 v4, 0x0

    .line 2366
    .local v4, "lengthOfYear":I
    const/4 v3, 0x0

    .line 2368
    .local v3, "isLeap":Z
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v9

    if-gt v0, v9, :cond_0

    .line 2369
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v9

    if-ge p1, v9, :cond_5

    .line 2370
    move v8, v0

    .line 2371
    const/4 v7, 0x0

    .line 2372
    .local v7, "totalMonthCountWithLeapBefore":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 2373
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    neg-int v7, v9

    .line 2377
    :goto_1
    sub-int v2, p1, v7

    .line 2378
    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2379
    const/16 v9, 0xc

    if-le v1, v9, :cond_2

    .line 2380
    const/16 v4, 0xc

    .line 2381
    :goto_2
    if-ge v2, v1, :cond_3

    move v6, v2

    .line 2382
    :goto_3
    const/16 v9, 0xd

    if-ne v4, v9, :cond_4

    if-ne v1, v2, :cond_4

    const/4 v3, 0x1

    .line 2386
    .end local v7    # "totalMonthCountWithLeapBefore":I
    :cond_0
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {v5, v8, v6, v9, v3}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->set(IIIZ)V

    .line 2387
    return-object v5

    .line 2375
    .restart local v7    # "totalMonthCountWithLeapBefore":I
    :cond_1
    add-int/lit8 v9, v0, -0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v7

    goto :goto_1

    .line 2380
    :cond_2
    const/16 v4, 0xd

    goto :goto_2

    .line 2381
    :cond_3
    add-int/lit8 v6, v2, -0x1

    goto :goto_3

    .line 2382
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 2368
    .end local v7    # "totalMonthCountWithLeapBefore":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .line 2492
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2495
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2500
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 2496
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 2497
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1762
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1763
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1765
    .local v1, "formatter":Ljava/util/Formatter;
    const/16 v6, 0x24

    .line 1767
    .local v6, "flags":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1768
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1769
    .local v2, "millis":J
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1770
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 1769
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 7
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v6, 0x0

    .line 2538
    if-nez p2, :cond_0

    .line 2539
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "field is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    return-object v6

    .line 2544
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2545
    .local v2, "result":Ljava/lang/Object;
    return-object v2

    .line 2548
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 2549
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2551
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v6

    .line 2546
    :catch_1
    move-exception v0

    .line 2547
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

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

.method private getTotalMonthCountWithLeap(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2356
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2358
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 2506
    if-nez p2, :cond_0

    .line 2507
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    return-object v7

    .line 2512
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2513
    .local v3, "result":Ljava/lang/Object;
    return-object v3

    .line 2518
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2519
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    .line 2522
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v7

    .line 2516
    :catch_1
    move-exception v1

    .line 2517
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    .line 2514
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2515
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    .line 1381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1383
    .local v1, "defLocale":Ljava/util/Locale;
    const-string/jumbo v4, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1384
    return v3

    .line 1386
    :cond_0
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1387
    .local v0, "defDirectionality":B
    if-eq v0, v2, :cond_1

    .line 1388
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1387
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 1388
    goto :goto_0
.end method

.method private isYearSpinnerAtLeft()Z
    .locals 3

    .prologue
    .line 1238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMMdd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "pattern":Ljava/lang/String;
    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1736
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1737
    return p1

    .line 1739
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1740
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1741
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1755
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

    .line 1743
    :sswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 1744
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 1757
    :goto_0
    return p1

    .line 1747
    :sswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 1748
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 1749
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1752
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1741
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    .line 838
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 840
    .local v2, "year":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 841
    .local v1, "monthOfYear":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 842
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v2, v1, v0}, Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V

    .line 837
    .end local v0    # "dayOfMonth":I
    .end local v1    # "monthOfYear":I
    .end local v2    # "year":I
    :cond_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1926
    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1930
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1931
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1924
    return-void

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 4

    .prologue
    .line 1938
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v1, :cond_0

    .line 1939
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1941
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1942
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$11;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 1947
    const-wide/16 v2, 0xc8

    .line 1942
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1937
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "cont"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1648
    if-nez p0, :cond_0

    .line 1649
    return-object v1

    .line 1650
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1651
    nop

    nop

    .end local p0    # "cont":Landroid/content/Context;
    return-object p0

    .line 1652
    .restart local p0    # "cont":Landroid/content/Context;
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 1653
    nop

    nop

    .end local p0    # "cont":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 1654
    .restart local p0    # "cont":Landroid/content/Context;
    :cond_2
    return-object v1
.end method

.method private semLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1374
    return-void
.end method

.method private setCurrentView(I)V
    .locals 9
    .param p1, "viewIndex"    # I

    .prologue
    const/16 v8, 0x3e8

    const/4 v3, 0x0

    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 2059
    packed-switch p1, :pswitch_data_0

    .line 2107
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2108
    .local v1, "msg1":Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2109
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2058
    return-void

    .line 2061
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v2, p1, :cond_0

    .line 2062
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2064
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    .line 2065
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2067
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2069
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2070
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 2073
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2074
    .local v0, "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2075
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2080
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v2, p1, :cond_0

    .line 2081
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v6, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2083
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2084
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2082
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 2094
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2095
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 2098
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2099
    .restart local v0    # "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2100
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2085
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v5, :cond_2

    .line 2086
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2087
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2088
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2086
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    .line 2090
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2091
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2092
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2090
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    .line 2059
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    .line 2308
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v5, :cond_1

    .line 2309
    :cond_0
    return-void

    .line 2312
    :cond_1
    const/4 v0, 0x0

    .line 2313
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "indexOfLeapMonthOfYear":I
    const/4 v2, 0x0

    .line 2314
    .local v2, "lengthOfYear":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    .line 2315
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 2318
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    .local v4, "year":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 2319
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2320
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2321
    .local v3, "month":I
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2322
    if-gt v1, v7, :cond_4

    .line 2323
    if-ge v1, v3, :cond_3

    .line 2324
    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    .line 2348
    .end local v3    # "month":I
    :goto_1
    add-int/2addr v0, v2

    .line 2349
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int v6, v4, v6

    aput v0, v5, v6

    .line 2318
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2326
    .restart local v3    # "month":I
    :cond_3
    rsub-int/lit8 v5, v3, 0xd

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    .line 2329
    :cond_4
    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    .line 2331
    .end local v3    # "month":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 2332
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2333
    .restart local v3    # "month":I
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2334
    if-gt v1, v7, :cond_7

    .line 2335
    if-ge v3, v1, :cond_6

    .line 2336
    move v2, v3

    goto :goto_1

    .line 2338
    :cond_6
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 2341
    :cond_7
    move v2, v3

    goto :goto_1

    .line 2344
    .end local v3    # "month":I
    :cond_8
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2345
    if-le v1, v7, :cond_9

    .line 2346
    const/16 v2, 0xc

    goto :goto_1

    :cond_9
    const/16 v2, 0xd

    goto :goto_1

    .line 2307
    :cond_a
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 1446
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1447
    .local v2, "month":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1450
    .local v7, "year":I
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    if-eqz v8, :cond_0

    .line 1451
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1452
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1456
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    sub-int v9, v2, v9

    add-int v5, v8, v9

    .line 1458
    .local v5, "position":I
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_1

    .line 1459
    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v0

    .line 1460
    .local v0, "indexOfLeapMonthOfYear":I
    if-ge v2, v0, :cond_2

    move v1, v2

    .line 1461
    .local v1, "indexOfMonth":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 1462
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v8

    neg-int v6, v8

    .line 1463
    .local v6, "totalMonthCountWithLeapBefore":I
    :goto_1
    add-int v5, v6, v1

    .line 1464
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v8, :cond_1

    .line 1465
    add-int/lit8 v5, v5, 0x1

    .line 1470
    .end local v0    # "indexOfLeapMonthOfYear":I
    .end local v1    # "indexOfMonth":I
    .end local v6    # "totalMonthCountWithLeapBefore":I
    :cond_1
    iput v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    .line 1471
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v8, v5, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1473
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1474
    .local v3, "msg":Landroid/os/Message;
    const/16 v8, 0x3e8

    iput v8, v3, Landroid/os/Message;->what:I

    .line 1475
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1476
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1478
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1479
    .local v4, "msg1":Landroid/os/Message;
    const/16 v8, 0x3e9

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1480
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1445
    return-void

    .line 1460
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "msg1":Landroid/os/Message;
    .restart local v0    # "indexOfLeapMonthOfYear":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "indexOfMonth":I
    goto :goto_0

    .line 1462
    :cond_3
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v6

    goto :goto_1
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1370
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1040
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1041
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1131
    return-void
.end method

.method public getDateMode()I
    .locals 1

    .prologue
    .line 2045
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 1122
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return v0

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getHeaderViewShown()Z
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 2175
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 731
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 732
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 743
    :cond_1
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .line 747
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    .line 752
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 754
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 760
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 761
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 762
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 763
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 730
    return-void
.end method

.method public isEditTextMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2131
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    .line 2132
    return v1

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1023
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth()Z
    .locals 1

    .prologue
    .line 2304
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 2299
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1859
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1858
    :goto_0
    :pswitch_0
    return-void

    .line 1861
    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 1862
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1863
    return-void

    .line 1865
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1868
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_2

    .line 1869
    return-void

    .line 1871
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1876
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_4

    .line 1877
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_3

    .line 1878
    return-void

    .line 1880
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1883
    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1884
    return-void

    .line 1886
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1859
    :pswitch_data_0
    .packed-switch 0x102049d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    .line 1046
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1047
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    .line 1048
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEE"

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 1050
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1051
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1053
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 1055
    const v2, 0x1050309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 1056
    const v2, 0x105030a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    .line 1057
    const v2, 0x1050305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1058
    const v2, 0x105031c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    .line 1059
    const v2, 0x105031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    .line 1061
    const v2, 0x1050318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    .line 1062
    const v2, 0x1050319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    .line 1063
    const v2, 0x105031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 1065
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    .line 1067
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    .line 1068
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    .line 1069
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    .line 1071
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1072
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1073
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1074
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_0

    .line 1077
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    .line 1080
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    .line 1045
    return-void
.end method

.method public onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/util/Calendar;)V
    .locals 21
    .param p1, "view"    # Lcom/samsung/android/widget/SemSimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDayClick day : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    .line 1395
    if-eqz p2, :cond_4

    .line 1396
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1397
    .local v20, "year":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 1398
    .local v18, "month":I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 1400
    .local v19, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1401
    .local v17, "currentYear":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 1403
    .local v16, "currentMonth":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1404
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1413
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->onDayOfMonthSelected(III)V

    .line 1415
    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 1416
    :cond_1
    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1421
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v9

    .line 1428
    .local v9, "enabledDayRangeStart":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_8

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v10

    .line 1435
    .local v10, "enabledDayRangeEnd":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_3

    .line 1436
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 1439
    :cond_3
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v8

    .line 1440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move-object/from16 v4, p1

    .line 1439
    invoke-virtual/range {v4 .. v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 1393
    .end local v9    # "enabledDayRangeStart":I
    .end local v10    # "enabledDayRangeEnd":I
    .end local v16    # "currentMonth":I
    .end local v17    # "currentYear":I
    .end local v18    # "month":I
    .end local v19    # "selectedDay":I
    .end local v20    # "year":I
    :cond_4
    return-void

    .line 1407
    .restart local v16    # "currentMonth":I
    .restart local v17    # "currentYear":I
    .restart local v18    # "month":I
    .restart local v19    # "selectedDay":I
    .restart local v20    # "year":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1408
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto/16 :goto_0

    .line 1415
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    .line 1424
    :cond_7
    const/4 v9, 0x1

    .restart local v9    # "enabledDayRangeStart":I
    goto/16 :goto_2

    .line 1431
    :cond_8
    const/16 v10, 0x1f

    .restart local v10    # "enabledDayRangeEnd":I
    goto :goto_3
.end method

.method public onDayOfMonthSelected(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1192
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1193
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1194
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1196
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1197
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3e8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1198
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1199
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v4, :cond_1

    .line 1200
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1201
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1202
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1203
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1219
    :goto_0
    const/4 v1, 0x0

    .line 1220
    .local v1, "setBtnEnable":Z
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-eqz v2, :cond_0

    .line 1221
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    .line 1222
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    .line 1221
    if-eqz v2, :cond_3

    .line 1223
    const/4 v1, 0x0

    .line 1227
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->onValidationChanged(Z)V

    .line 1229
    :cond_0
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 1191
    return-void

    .line 1204
    .end local v1    # "setBtnEnable":Z
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v3, :cond_2

    .line 1205
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1206
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1207
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1208
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1210
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1211
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1212
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1213
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1214
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1215
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1216
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1217
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1225
    .restart local v1    # "setBtnEnable":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1897
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    .line 1898
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1895
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1904
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1916
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 1906
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    .line 1907
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 1911
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1912
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 1904
    :pswitch_data_0
    .packed-switch 0x102049d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 1660
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemDatePicker;->makeMeasureSpec(II)I

    move-result v2

    .line 1663
    .local v2, "newWidthMeasureSpec":I
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1664
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1665
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1666
    .local v1, "height":I
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    if-ge v1, v4, :cond_1

    .line 1667
    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    .line 1668
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1672
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1673
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1674
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1675
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1708
    .end local v1    # "height":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    if-ne v4, v5, :cond_2

    .line 1709
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1710
    return-void

    .line 1690
    .restart local v1    # "height":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1691
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemDatePicker$10;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1712
    .end local v1    # "height":I
    :cond_2
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 1713
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iput v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    .line 1715
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1716
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1717
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1718
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    if-eqz v4, :cond_3

    .line 1720
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ViewPager;->setConfigurationChanged(Z)V

    .line 1722
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1723
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1725
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1659
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1157
    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1158
    .local v0, "bss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 1160
    check-cast v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    .line 1162
    .local v1, "ss":Lcom/samsung/android/widget/SemDatePicker$SavedState;
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1163
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1164
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1156
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    .line 1140
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1142
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1143
    .local v3, "year":I
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1144
    .local v4, "month":I
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1146
    .local v5, "day":I
    const/4 v10, -0x1

    .line 1148
    .local v10, "listPosition":I
    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1148
    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 652
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 696
    :cond_0
    return-void
.end method

.method public setDateMode(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v13, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1986
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 1988
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v10, :cond_3

    .line 1989
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1990
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1991
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1989
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 1999
    :cond_0
    :goto_0
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-ne v4, v10, :cond_1

    .line 2000
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2003
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v12, v4, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2004
    .local v12, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 2005
    .local v0, "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    if-eqz v0, :cond_2

    .line 2006
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2007
    .local v3, "year":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2008
    .local v2, "month":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2011
    .local v1, "selectedDay":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 2012
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v5

    .line 2018
    .local v5, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 2019
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v6

    .line 2024
    .local v6, "enabledDayRangeEnd":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v4

    .line 2025
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 2026
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 2024
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 2027
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2030
    .end local v1    # "selectedDay":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1985
    return-void

    .line 1992
    .end local v0    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .end local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v11, :cond_0

    .line 1993
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1994
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1995
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1993
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    .line 2014
    .restart local v0    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .restart local v1    # "selectedDay":I
    .restart local v2    # "month":I
    .restart local v3    # "year":I
    .restart local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_1

    .line 2021
    :cond_5
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_2
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "editTextMode"    # Z

    .prologue
    .line 2118
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    .line 2119
    return-void

    .line 2121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2117
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1012
    return-void

    .line 1014
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1015
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    .line 1010
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1099
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    .line 1098
    return-void
.end method

.method public setHeaderViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 1026
    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 667
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    .line 670
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 4
    .param p1, "isLunar"    # Z
    .param p2, "isLeapMonth"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2278
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_1

    .line 2279
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 2280
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 2282
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 2284
    if-eqz p1, :cond_0

    .line 2285
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 2288
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    .line 2289
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2290
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 2291
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 2292
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 2293
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 2277
    :cond_1
    return-void
.end method

.method public setLunarSupported(ZLandroid/view/View;)V
    .locals 19
    .param p1, "supported"    # Z
    .param p2, "lunarButton"    # Landroid/view/View;

    .prologue
    .line 2181
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    .line 2183
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-nez v15, :cond_1

    .line 2184
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 2185
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 2186
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    .line 2233
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_b

    .line 2234
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2235
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 2236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_8

    .line 2237
    return-void

    .line 2188
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_2

    .line 2189
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2191
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    .line 2192
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 2193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 2194
    .local v12, "parentView":Landroid/view/ViewParent;
    instance-of v15, v12, Landroid/view/ViewGroup;

    if-eqz v15, :cond_3

    .line 2195
    nop

    nop

    .end local v12    # "parentView":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2197
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    const v16, 0x102002b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setId(I)V

    .line 2199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2200
    .local v4, "calendarHeaderParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xd

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2201
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2203
    .local v13, "prevButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2206
    .local v11, "nextButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    iput v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2208
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x105031b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 2209
    .local v9, "margin":I
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 2214
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 2215
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v15, v8, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_5

    move-object v2, v8

    .line 2216
    nop

    nop

    .line 2224
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    if-eqz v2, :cond_4

    .line 2225
    const/16 v15, 0xf

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2226
    const/16 v15, 0x15

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2229
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2217
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    instance-of v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    .line 2218
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    nop

    nop

    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2219
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    if-eqz v8, :cond_7

    .line 2220
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2222
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2240
    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "calendarHeaderParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "margin":I
    .end local v11    # "nextButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "prevButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const/4 v3, 0x0

    .line 2242
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v7, "com.android.calendar.Feature"

    .line 2243
    .local v7, "featureClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2248
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_9

    .line 2249
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    return-void

    .line 2244
    .end local v7    # "featureClassName":Ljava/lang/String;
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 2245
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    return-void

    .line 2253
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "featureClassName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, "getSolarLunarTables"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v15, v1}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 2254
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10, v15}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    .line 2256
    const/4 v14, 0x0

    .line 2258
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v5, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 2259
    .local v5, "converterClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 2264
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v14, :cond_a

    .line 2265
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    return-void

    .line 2260
    .end local v5    # "converterClassName":Ljava/lang/String;
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 2261
    .restart local v6    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    return-void

    .line 2269
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "converterClassName":Ljava/lang/String;
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const-string/jumbo v15, "getLunar"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    .line 2270
    const-string/jumbo v15, "START_OF_LUNAR_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    .line 2271
    const-string/jumbo v15, "WIDTH_PER_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    .line 2272
    const-string/jumbo v15, "INDEX_OF_LEAP_MONTH"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    .line 2180
    .end local v3    # "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converterClassName":Ljava/lang/String;
    .end local v7    # "featureClassName":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 948
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 949
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 951
    return-void

    .line 954
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 955
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 961
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 963
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 965
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 967
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 968
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$9;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 972
    const-wide/16 v2, 0xa

    .line 968
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 947
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 894
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 895
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 897
    return-void

    .line 900
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 901
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 907
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 909
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 911
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    .line 913
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 914
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$8;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 918
    const-wide/16 v2, 0xa

    .line 914
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditModeChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V

    .line 2152
    return-void
.end method

.method public setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    .line 686
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 1264
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1263
    return-void
.end method

.method public updateDate(III)V
    .locals 16
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 780
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 801
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 803
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v15, v4, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 806
    .local v15, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 807
    .local v3, "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    if-eqz v3, :cond_1

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_4

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v8

    .line 816
    .local v8, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_5

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v9

    .line 823
    .local v9, "enabledDayRangeEnd":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_0

    .line 824
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 827
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v7

    .line 828
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p1

    .line 827
    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 829
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    if-eqz v4, :cond_1

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 773
    .end local v8    # "enabledDayRangeStart":I
    .end local v9    # "enabledDayRangeEnd":I
    :cond_1
    return-void

    .line 785
    .end local v3    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .end local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 791
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 812
    .restart local v3    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .restart local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_4
    const/4 v8, 0x1

    .restart local v8    # "enabledDayRangeStart":I
    goto/16 :goto_1

    .line 819
    :cond_5
    const/16 v9, 0x1f

    .restart local v9    # "enabledDayRangeEnd":I
    goto/16 :goto_2
.end method
