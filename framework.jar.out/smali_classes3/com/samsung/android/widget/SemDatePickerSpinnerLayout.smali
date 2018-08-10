.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SemDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

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

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mToast:Landroid/widget/Toast;

.field private mToastText:Ljava/lang/String;

.field private final mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

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

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
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

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempDay:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempMonth:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarTempYear:I

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToast:Landroid/widget/Toast;

    return-object p1
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

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateModeState(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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
    .locals 12

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "MM/dd/yyyy"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    new-instance v8, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_DAY:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_MONTH:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_YEAR:I

    const/4 v8, 0x0

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    const/4 v8, 0x2

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    const/4 v8, 0x3

    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    new-instance v8, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v8, 0x1090105

    const/4 v9, 0x1

    invoke-virtual {v0, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    new-instance v3, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    const v8, 0x1020483

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    const v8, 0x1020484

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    const v8, 0x1020485

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    const v8, 0x1020486

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v9, 0x10203ca

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    const v8, 0x1020488

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v9, 0x10203ca

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    const v8, 0x102048a

    invoke-virtual {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const v9, 0x10203ca

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v9, "sec-roboto-condensed-light"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v9, "sec-roboto-condensed-light"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v9, "sec-roboto-condensed-light"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x1050221

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v8, 0x1050220

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    add-int/lit8 v7, v2, -0x2

    move v6, v5

    const v8, 0x1040949

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "my"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "ml"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "bn"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "ar"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "fa"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    const v8, 0x105021f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const v8, 0x105021e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v2

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v5

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104093a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104093d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040940

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->init(III)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->reorderSpinners()V

    return-void

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMonthInputMode()V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v8, "ga"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x105021f

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    const v8, 0x105021e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    goto/16 :goto_1

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v7

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

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

    check-cast v0, Ljava/lang/Integer;

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

    sget-object v2, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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
    .locals 7

    const/4 v6, 0x0

    if-nez p2, :cond_0

    sget-object v3, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v3, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v3, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

    sget-object v3, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

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

.method private notifyDateChanged()V
    .locals 4

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

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

.method private reorderSpinners()V
    .locals 12

    const/16 v11, 0x79

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

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

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

.method private semLog(Ljava/lang/String;)V
    .locals 0

    return-void
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
    const v2, 0x10203ca

    invoke-virtual {p1, v2}, Lcom/samsung/android/widget/SemNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void

    :cond_0
    const v0, 0x2000006

    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "format  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->semLog(Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;

    invoke-direct {v4, p0, v8, v1, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;

    invoke-direct {v4, p0, v8, v0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-ne p1, v9, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :pswitch_0
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x2

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    goto/16 :goto_0

    :pswitch_2
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    goto/16 :goto_0

    :pswitch_3
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;

    invoke-direct {v4, p0, v9, v1, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$SemTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateModeState(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_3

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
    .locals 18

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    :cond_0
    if-eqz p3, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v3, v7, v10

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v14

    if-nez v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v15}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v14 .. v16}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v3, v7, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    sub-int v2, v6, v9

    if-nez v3, :cond_9

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    :cond_4
    if-nez p1, :cond_d

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v6, 0xb

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v6

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    const/16 v6, 0xb

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentYear:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v11, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v5

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-ne v11, v14, :cond_c

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11, v14}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v5

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentMonth:I

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v14, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mLunarCurrentDay:I

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v14

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_11

    aget-object v12, v15, v14

    invoke-virtual {v12}, Landroid/widget/EditText;->hasFocus()Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/widget/EditText;->setSelection(II)V

    invoke-virtual {v12}, Landroid/widget/EditText;->selectAll()V

    :cond_11
    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v14, v11}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    goto :goto_2

    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_3
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

.method public init(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

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

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

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

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

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

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

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
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

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
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    iget-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v6, :cond_2

    iput-object p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    :try_start_0
    const-string/jumbo v3, "com.android.calendar.Feature"

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v7, 0x1

    invoke-static {v3, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v6, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setLunar, Calendar Feature class is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v2

    sget-object v6, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setLunar, Calendar Feature class not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v6, "getSolarLunarTables"

    new-array v7, v10, [Ljava/lang/Class;

    invoke-direct {p0, v0, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v10, [Ljava/lang/Object;

    invoke-direct {p0, v8, v4, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    :try_start_1
    const-string/jumbo v1, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v7, 0x1

    invoke-static {v1, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v6, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setLunar, Calendar Tables class is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v2

    sget-object v6, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setLunar, Calendar Tables class not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v6, "isLeapMonth"

    new-array v7, v11, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v6, "getDayLengthOf"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v11

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    :cond_2
    invoke-direct {p0, v10, v9, v9, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

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

    return-void
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

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method
