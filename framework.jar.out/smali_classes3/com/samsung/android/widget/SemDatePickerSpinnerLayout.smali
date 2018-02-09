.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SemDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final TAG:Ljava/lang/String; = "SemDatePickerSpinnerLayout"

.field private static final sem_DEBUG:Z


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

.field private mIsEditTextMode:Z

.field private mIsLeapMonth:Z

.field private mIsLeapMonthMethod:Ljava/lang/reflect/Method;

.field private mIsLunar:Z

.field private mLunarCurrentDay:I

.field private mLunarCurrentMonth:I

.field private mLunarCurrentYear:I

.field private mLunarTempDay:I

.field private mLunarTempMonth:I

.field private mLunarTempYear:I

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private final mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mNumberTextSize:I

.field private mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mSubNumberTextSize:I

.field private mSubTextSize:I

.field private mTempDate:Ljava/util/Calendar;

.field private mTextSize:I

.field private mToastText:Ljava/lang/String;

.field private mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempDay:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempMonth:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempYear:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isMonthJan:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempDay:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempYear:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11

    const/4 v10, 0x0

    const v7, 0x102044b

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "MM/dd/yyyy"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    iput-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isMonthJan:Z

    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_DAY:I

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_MONTH:I

    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_YEAR:I

    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x10900ff

    invoke-virtual {v0, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    new-instance v2, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    const v4, 0x10204a8

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    const v4, 0x10204aa

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    const v4, 0x10204ac

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    const v4, 0x10204a9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    const v4, 0x10204ab

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    const v4, 0x10204ad

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    const v4, 0x1050315

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    const v4, 0x10408e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "my"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "bn"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const v4, 0x1050316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    const v4, 0x1050317

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->reorderSpinners()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMonthInputMode()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v4, "ga"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x1050316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    const v4, 0x1050317

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    goto/16 :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    goto/16 :goto_2
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

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v6

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
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

    const-string/jumbo v2, "SemDatePickerSpinnerLayout"

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

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

.method private isNewDate(III)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged(Z)V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 12

    const/16 v11, 0x79

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "yyyyMMMdd"

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v3

    array-length v5, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-char v6, v3, v2

    sparse-switch v6, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_0
    aget-char v0, v3, v8

    aget-char v1, v3, v9

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    if-ne v0, v10, :cond_3

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_3
    if-ne v0, v11, :cond_4

    if-ne v1, v10, :cond_4

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    :cond_4
    if-ne v0, v11, :cond_1

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDate(III)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    iput p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    iput p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentDay:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 3

    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    const v0, 0x2000005

    :goto_0
    const v2, 0x102044b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void

    :cond_0
    const v0, 0x2000006

    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "format  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 15

    if-eqz p2, :cond_0

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    if-eqz p3, :cond_2

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v2, v6, v9

    if-nez v2, :cond_5

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v13}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v13

    iget-object v14, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_4

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v2, v6, v9

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v1, v5, v8

    if-nez v2, :cond_9

    if-nez v1, :cond_9

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    :cond_3
    :goto_1
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    :cond_4
    if-nez p1, :cond_d

    return-void

    :cond_5
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_6

    iget v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    :cond_6
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_7

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v5, 0xb

    goto/16 :goto_0

    :cond_7
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_8

    const/4 v8, 0x0

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    const/16 v5, 0xb

    goto/16 :goto_0

    :cond_9
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_a

    iget v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_a
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_b

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v10, v12, :cond_b

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, v11, v10, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v4

    goto/16 :goto_1

    :cond_b
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_c

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v10, v12, :cond_c

    const/4 v7, 0x1

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x1

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    invoke-direct {p0, v11, v10, v12}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v4

    goto/16 :goto_1

    :cond_d
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/view/View;->hasFocus()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-static {v12, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_e
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_f

    iget v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    :goto_2
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-boolean v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v12, :cond_10

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentDay:I

    :cond_10
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setRawInputType(I)V

    :cond_11
    return-void

    :cond_12
    iget-object v12, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v12, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    goto :goto_2
.end method

.method private usingNumericMonths()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentDay:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    const/16 v0, 0x14

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

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

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemDatePicker;Z)V

    :cond_2
    return-void

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    return-void
.end method

.method public setIsLeapMonth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 11

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    iget-boolean v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v7, :cond_2

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v4, "com.android.calendar.Feature"

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v7, "getSolarLunarTables"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v0, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v3

    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v7, "isLeapMonth"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

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

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setMaxDate(J)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setMinDate(J)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    return-void
.end method

.method public setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    return-void
.end method

.method public updateDate(III)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged(Z)V

    goto :goto_0
.end method

.method public updateInputState()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
