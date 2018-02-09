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

.field private static final LEAP_MONTH:I = 0x1

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final NOT_LEAP_MONTH:I = 0x0

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

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsFromSystem:Z

.field private mIsLeapEndMonth:I

.field private mIsLeapMonth:Z

.field private mIsLeapStartMonth:I

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mLongPressUpdateInterval:J

.field private mLunarChanged:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarEndDay:I

.field private mLunarEndMonth:I

.field private mLunarEndYear:I

.field private mLunarStartDay:I

.field private mLunarStartMonth:I

.field private mLunarStartYear:I

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

.method static synthetic -get17(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemDatePicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    return v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    return v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    return v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    return v0
.end method

.method static synthetic -get32(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get33(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get34(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method static synthetic -get35(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get36(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic -get37(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic -get38(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic -get39(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get40(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get41(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get42(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return v0
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

.method static synthetic -set10(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    return p1
.end method

.method static synthetic -set11(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    return p1
.end method

.method static synthetic -set12(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    return p1
.end method

.method static synthetic -set13(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    return p1
.end method

.method static synthetic -set14(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    return p1
.end method

.method static synthetic -set15(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    return p1
.end method

.method static synthetic -set16(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic -set17(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic -set18(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

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

.method static synthetic -set4(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return p1
.end method

.method static synthetic -set9(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePicker;ZZ)V
    .locals 0

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

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePicker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSystem:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/widget/SemDatePicker$1;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/samsung/android/widget/SemDatePicker$2;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/widget/SemDatePicker$3;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/widget/SemDatePicker$4;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isFarsiLanguage()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isSimplifiedChinese()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v13, :cond_1

    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "EEEEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/widget/SemDatePicker;->setLocale(Ljava/util/Locale;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v14, Lcom/android/internal/R$styleable;->DatePicker:[I

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v13, v0, v14, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v13, 0x1

    const/16 v14, 0x76e

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    const/4 v13, 0x2

    const/16 v14, 0x834

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    const/16 v15, 0xb

    const/16 v16, 0x1f

    invoke-virtual/range {v13 .. v16}, Ljava/util/Calendar;->set(III)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v8, 0x10900fe

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v7, v8, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/widget/SemDatePicker;->setFirstDayOfWeek(I)V

    :cond_0
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v5

    const/16 v13, 0xf

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const v13, 0x10204a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v14, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;)V

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    const v13, 0x10502fd

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    const v13, 0x102049c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    const v13, 0x102049e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const v13, 0x10204a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    const v13, 0x10204a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    new-instance v14, Lcom/samsung/android/widget/SemDatePicker$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/widget/SemDatePicker$5;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v14, Lcom/samsung/android/widget/SemDatePicker$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/widget/SemDatePicker$6;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v14, Lcom/samsung/android/widget/SemDatePicker$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/widget/SemDatePicker$7;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v13, 0x1050306

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    const v13, 0x10502fe

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    const v13, 0x1050318

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    const v13, 0x10502fe

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    const v13, 0x10204a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v13, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v13, 0x102049a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    const v13, 0x102049b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v13, :cond_2

    const v13, 0x102049f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const v13, 0x102049d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x10408dc

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v15, 0x10408dd

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v10, Landroid/util/TypedValue;

    invoke-direct {v10}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x101045c

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v10, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v13, v10, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    const v13, 0x105030a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    const v13, 0x105030b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const v14, 0x102049e

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusRightId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    const v14, 0x102049e

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusLeftId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const v14, 0x102049f

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusRightId(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const v14, 0x102049d

    invoke-virtual {v13, v14}, Landroid/view/View;->setNextFocusLeftId(I)V

    new-instance v13, Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v13, v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/samsung/android/widget/SemSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V

    const v13, 0x10204a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    const v13, 0x10204a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    const v13, 0x105031d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    const v13, 0x105031e

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    const v13, 0x1050319

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    const v13, 0x105031a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    const v13, 0x105031b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    mul-int/lit8 v13, v13, 0x64

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    mul-int/lit8 v13, v13, 0x64

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    mul-int/lit8 v13, v13, 0x64

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void

    :cond_1
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v14, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    :cond_2
    const v13, 0x102049d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    const v13, 0x102049f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    goto/16 :goto_1
.end method

.method private checkMaxFontSize()V
    .locals 6

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050309

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderTextSize:I

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

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

    :cond_0
    return-void
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

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "com.android.calendar"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.calendar"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2

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

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

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

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

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

    const/16 v8, 0x7f

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v6, :cond_0

    return v8

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, p1, v6

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int v3, v6, v7

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0x7f

    instance-of v6, v0, Ljava/lang/Byte;

    if-eqz v6, :cond_1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :cond_1
    return v2

    :cond_2
    sget-object v6, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 10

    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    invoke-direct {v5}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v9

    if-gt v0, v9, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v9

    if-ge p1, v9, :cond_5

    move v8, v0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v9

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    neg-int v7, v9

    :goto_1
    sub-int v2, p1, v7

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    const/16 v9, 0xc

    if-le v1, v9, :cond_2

    const/16 v4, 0xc

    :goto_2
    if-ge v2, v1, :cond_3

    move v6, v2

    :goto_3
    const/16 v9, 0xd

    if-ne v4, v9, :cond_4

    if-ne v1, v2, :cond_4

    const/4 v3, 0x1

    :cond_0
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {v5, v8, v6, v9, v3}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->set(IIIZ)V

    return-object v5

    :cond_1
    add-int/lit8 v9, v0, -0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v7

    goto :goto_1

    :cond_2
    const/16 v4, 0xd

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v2, -0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    .locals 10

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "LLLL y"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v8, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, v9, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/16 v6, 0x24

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "field is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

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

    :goto_0
    return-object v6

    :catch_1
    move-exception v0

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

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

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

    const/4 v7, 0x0

    if-nez p2, :cond_0

    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

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

    :goto_0
    return-object v7

    :catch_1
    move-exception v1

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

    :catch_2
    move-exception v0

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

.method private isFarsiLanguage()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "fa"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
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

.method private isSimplifiedChinese()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private isYearSpinnerAtLeft()Z
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMMdd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
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
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    :goto_0
    return p1

    :sswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDateChanged(ZZ)V
    .locals 5

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v3, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v2, v1, v0}, Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V

    :cond_1
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$11;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    nop

    nop

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    nop

    nop

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method private semLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setCurrentView(I)V
    .locals 13

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const/16 v11, 0x3e9

    iput v11, v6, Landroid/os/Message;->what:I

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v11, p1, :cond_0

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v11}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/16 v11, 0x3e8

    iput v11, v5, Landroid/os/Message;->what:I

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_1
    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v11, p1, :cond_0

    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_1

    iget v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v11, v9, v8, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    :goto_1
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/16 v11, 0x3e8

    iput v11, v5, Landroid/os/Message;->what:I

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_2
    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_3
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v11, v3, v2, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v11, :cond_5

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_5
    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v11, v10, v4, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 8

    const/16 v7, 0xc

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-gt v4, v5, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    if-gt v1, v7, :cond_4

    if-ge v1, v3, :cond_3

    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    :goto_1
    add-int/2addr v0, v2

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int v6, v4, v6

    aput v0, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    rsub-int/lit8 v5, v3, 0xd

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    :cond_4
    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-ne v4, v5, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    if-gt v1, v7, :cond_7

    if-ge v3, v1, :cond_6

    move v2, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_1

    :cond_8
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    if-le v1, v7, :cond_9

    const/16 v2, 0xc

    goto :goto_1

    :cond_9
    const/16 v2, 0xd

    goto :goto_1

    :cond_a
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_0

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    :cond_0
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    sub-int v9, v2, v9

    add-int v5, v8, v9

    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_2

    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v0

    if-ge v2, v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    if-ne v7, v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v8

    neg-int v6, v8

    :goto_1
    add-int v5, v6, v1

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v8, v10, :cond_5

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    if-ne v2, v8, :cond_5

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    if-ne v8, v10, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_2
    :goto_2
    iput v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v8, v5, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/16 v8, 0x3e8

    iput v8, v3, Landroid/os/Message;->what:I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    const/16 v8, 0x3e9

    iput v8, v4, Landroid/os/Message;->what:I

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v6

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v8, v11, :cond_6

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    if-ne v2, v8, :cond_6

    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    if-ne v8, v10, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private usingNumericMonths()Z
    .locals 2

    const/4 v1, 0x0

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

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

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

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDateMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getHeaderViewShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLunarEndDate()[I
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getLunarStartDate()[I
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    :cond_2
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    invoke-direct {p0, v5, v4}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v7, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    :cond_4
    return-void
.end method

.method public isEditTextMode()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102049d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isFarsiLanguage()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFarsiLanguage:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isSimplifiedChinese()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEEEE"

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    :goto_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    const v2, 0x105030a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    const v2, 0x105030b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    const v2, 0x1050306

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    const v2, 0x105031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    const v2, 0x105031e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    const v2, 0x1050319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    const v2, 0x105031a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    const v2, 0x105031b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

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

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    return-void

    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEE"

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0
.end method

.method public onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;III)V
    .locals 24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDayClick day : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    move/from16 v22, v0

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->onDayOfMonthSelected(III)V

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    move/from16 v0, p3

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    :cond_1
    :goto_0
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, p3

    if-ne v4, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v9

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, p3

    if-ne v4, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v10

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    move/from16 v19, v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v21, v0

    move-object/from16 v4, p1

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p2

    invoke-virtual/range {v4 .. v21}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_2

    goto/16 :goto_0

    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_7
    const/16 v10, 0x1f

    goto/16 :goto_2
.end method

.method public onDayOfMonthSelected(III)V
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0x3e8

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->onValidationChanged(Z)V

    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    return-void

    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v3, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6, p3}, Ljava/util/Calendar;->set(II)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_2

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v4, :cond_8

    move v4, v3

    :goto_2
    iput v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v4, :cond_7

    move v2, v3

    :cond_7
    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    goto/16 :goto_0

    :cond_8
    move v4, v2

    goto :goto_2

    :cond_9
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102049d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemDatePicker;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    if-ge v1, v4, :cond_1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    if-ne v4, v5, :cond_2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemDatePicker$10;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iput v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ViewPager;->setConfigurationChanged(Z)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    const/4 v10, -0x1

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;->onValidationChanged(Z)V

    :cond_0
    return-void
.end method

.method public setDateMode(I)V
    .locals 23

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    move/from16 v21, v0

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, v21

    invoke-virtual {v6, v11, v12, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v0, v6, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v6

    if-ne v6, v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    if-ne v6, v5, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v7

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v6

    if-ne v6, v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v6

    if-ne v6, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    move/from16 v17, v0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v19, v0

    invoke-virtual/range {v2 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    move/from16 v20, v0

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v6, v15, v0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto/16 :goto_0

    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v8, 0x1f

    goto/16 :goto_2
.end method

.method public setEditTextMode(Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return-void
.end method

.method public setHeaderViewShown(Z)V
    .locals 0

    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1, p2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public setLunarEndDate(IIIZ)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLunarStartDate(IIIZ)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLunarSupported(ZLandroid/view/View;)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-nez v15, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_8

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v15, v12, Landroid/view/ViewGroup;

    if-eqz v15, :cond_3

    nop

    nop

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    const v16, 0x102002b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setId(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v15, 0xd

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, 0x0

    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, 0x0

    iput v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x105031c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/4 v2, 0x0

    instance-of v15, v8, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_5

    move-object v2, v8

    nop

    nop

    :goto_1
    if-eqz v2, :cond_4

    const/16 v15, 0xf

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0x15

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    instance-of v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    nop

    nop

    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v7, "com.android.calendar.Feature"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_9

    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v6

    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10, v15}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    const/4 v14, 0x0

    :try_start_1
    const-string/jumbo v5, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    if-nez v14, :cond_a

    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v6

    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

    const-string/jumbo v15, "START_OF_LUNAR_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    const-string/jumbo v15, "WIDTH_PER_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    const-string/jumbo v15, "INDEX_OF_LEAP_MONTH"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    :cond_b
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$9;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMinDate(J)V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$8;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V

    return-void
.end method

.method public setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    return-void
.end method

.method public tryVibrate()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public updateDate(III)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_0

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentYear:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentMonth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarCurrentDay:I

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    :cond_1
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v0, v4, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemSimpleMonthView;

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v8

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v9

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    move/from16 v18, v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapStartMonth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapEndMonth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v20, v0

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v20}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;IIIIIIIII)V

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v4, :cond_1

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartYear:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartMonth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarStartDay:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndYear:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndMonth:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarEndDay:I

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 v9, 0x1f

    goto/16 :goto_2
.end method
