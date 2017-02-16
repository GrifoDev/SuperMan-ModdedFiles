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

.method static synthetic -get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
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

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 0
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V
    .locals 0
    .param p1, "set"    # Z
    .param p2, "yearChanged"    # Z
    .param p3, "monthChanged"    # Z
    .param p4, "dayChanged"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v10, 0x0

    const v7, 0x102044b

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 81
    const-string/jumbo v5, "MM/dd/yyyy"

    .line 80
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    .line 114
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .line 123
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    .line 124
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 125
    iput-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 762
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    .line 764
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isMonthJan:Z

    .line 765
    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_DAY:I

    .line 766
    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_MONTH:I

    .line 767
    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_YEAR:I

    .line 769
    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    .line 770
    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    .line 771
    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    .line 772
    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    .line 776
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 790
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 168
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 169
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900ff

    invoke-virtual {v0, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    .line 172
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 174
    new-instance v2, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    .line 243
    .local v2, "onChangeListener":Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;
    const v4, 0x10204a8

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    .line 245
    const v4, 0x10204aa

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    .line 246
    const v4, 0x10204ac

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    .line 249
    const v4, 0x10204a9

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 250
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 252
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 253
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 254
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 255
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 256
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 259
    const v4, 0x10204ab

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 260
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 262
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 264
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 265
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 266
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 275
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 276
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 279
    const v4, 0x10204ad

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 280
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 282
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 283
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 285
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 286
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 288
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 289
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 290
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 293
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050313

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    .line 294
    const v4, 0x1050314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    .line 295
    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 296
    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    .line 297
    const v4, 0x10408da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    .line 299
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "language":Ljava/lang/String;
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

    .line 301
    :cond_0
    const v4, 0x1050315

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 302
    const v4, 0x1050316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    .line 308
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 309
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 310
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 311
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 315
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 321
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 322
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 326
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 327
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 328
    const/4 v7, 0x5

    .line 327
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->reorderSpinners()V

    .line 164
    return-void

    .line 268
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 269
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 270
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 271
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 273
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMonthInputMode()V

    goto/16 :goto_0

    .line 303
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string/jumbo v4, "ga"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    const v4, 0x1050315

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 305
    const v4, 0x1050316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    goto/16 :goto_1

    .line 317
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 318
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    goto/16 :goto_2
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 481
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 482
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 483
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 484
    return-object v2
.end method

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1313
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1314
    return v6

    .line 1317
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

    .line 1318
    .local v0, "max":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1319
    .local v1, "maxDay":I
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1320
    nop

    nop

    .end local v0    # "max":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1323
    :cond_1
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
    .line 1327
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1330
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1335
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 1331
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/NoSuchMethodException;
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
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1341
    if-nez p2, :cond_0

    .line 1342
    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    return-object v7

    .line 1347
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1348
    .local v3, "result":Ljava/lang/Object;
    return-object v3

    .line 1353
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1354
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
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

    .line 1357
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v7

    .line 1351
    :catch_1
    move-exception v1

    .line 1352
    .local v1, "e":Ljava/lang/IllegalArgumentException;
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

    .line 1349
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1350
    .local v0, "e":Ljava/lang/IllegalAccessException;
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
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 562
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v0

    .line 564
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

    .prologue
    .line 701
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 702
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    .line 700
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    const/4 v1, 0x1

    return v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 12

    .prologue
    const/16 v11, 0x79

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 494
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 498
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "yyyyMMMdd"

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v3

    .line 500
    .local v3, "order":[C
    array-length v5, v3

    .line 501
    .local v5, "spinnerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 502
    aget-char v6, v3, v2

    sparse-switch v6, :sswitch_data_0

    .line 516
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 505
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    .line 519
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 501
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 508
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    .line 512
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    .line 521
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 524
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 533
    :cond_0
    aget-char v0, v3, v8

    .line 534
    .local v0, "c":C
    aget-char v1, v3, v9

    .line 535
    .local v1, "c2":C
    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    .line 536
    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    .line 493
    :cond_1
    :goto_3
    return-void

    .line 537
    :cond_2
    if-ne v0, v10, :cond_3

    .line 538
    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 539
    :cond_3
    if-ne v0, v11, :cond_4

    if-ne v1, v10, :cond_4

    .line 540
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 541
    :cond_4
    if-ne v0, v11, :cond_1

    .line 542
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 502
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 568
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 569
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 721
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 722
    const v0, 0x2000005

    .line 726
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x102044b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 727
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 719
    return-void

    .line 724
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const v0, 0x2000006

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 807
    const-string/jumbo v1, "format  : "

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    .line 808
    packed-switch p1, :pswitch_data_0

    .line 888
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 889
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 805
    return-void

    .line 810
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 811
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 812
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 816
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    .line 817
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 816
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 822
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 826
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 827
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 826
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 831
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 832
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 833
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 835
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    .line 839
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 838
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 844
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 846
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 847
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 846
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 841
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 850
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 851
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 852
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 853
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 855
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    .line 859
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 858
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 864
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 867
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 866
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 861
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 870
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 871
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 872
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 873
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 875
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 877
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 878
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 880
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 881
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 883
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 808
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
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 731
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 732
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 733
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 730
    :cond_0
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 920
    return-void
.end method

.method private updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 2
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1172
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p2, :cond_0

    .line 1173
    return-void

    .line 1175
    :cond_0
    if-nez p2, :cond_3

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1180
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1171
    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 12
    .param p1, "set"    # Z
    .param p2, "yearChanged"    # Z
    .param p3, "monthChanged"    # Z
    .param p4, "dayChanged"    # Z

    .prologue
    .line 587
    if-eqz p2, :cond_0

    .line 588
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 589
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 590
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    .line 593
    :cond_0
    if-eqz p3, :cond_2

    .line 594
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 595
    .local v8, "minYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 596
    .local v5, "maxYear":I
    sub-int v1, v5, v8

    .line 598
    .local v1, "diffYear":I
    if-nez v1, :cond_5

    .line 599
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 600
    .local v7, "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 614
    .local v4, "maxMonth":I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 615
    add-int/lit8 v7, v7, 0x1

    .line 616
    add-int/lit8 v4, v4, 0x1

    .line 619
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 620
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 621
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 623
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-nez v9, :cond_2

    .line 624
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 625
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    .line 624
    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 626
    .local v2, "displayedValues":[Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 630
    .end local v1    # "diffYear":I
    .end local v2    # "displayedValues":[Ljava/lang/String;
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_2
    if-eqz p4, :cond_4

    .line 631
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 632
    .restart local v8    # "minYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 633
    .restart local v5    # "maxYear":I
    sub-int v1, v5, v8

    .line 634
    .restart local v1    # "diffYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 635
    .restart local v7    # "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 636
    .restart local v4    # "maxMonth":I
    sub-int v0, v4, v7

    .line 638
    .local v0, "diffMonth":I
    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 639
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 640
    .local v6, "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 668
    .local v3, "maxDay":I
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 669
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 672
    .end local v0    # "diffMonth":I
    .end local v1    # "diffYear":I
    .end local v3    # "maxDay":I
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v6    # "minDay":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_4
    if-nez p1, :cond_b

    .line 673
    return-void

    .line 602
    .restart local v1    # "diffYear":I
    .restart local v5    # "maxYear":I
    .restart local v8    # "minYear":I
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 603
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 604
    .restart local v7    # "minMonth":I
    const/16 v4, 0xb

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 605
    .end local v4    # "maxMonth":I
    .end local v7    # "minMonth":I
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 606
    const/4 v7, 0x0

    .line 607
    .restart local v7    # "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 609
    .end local v4    # "maxMonth":I
    .end local v7    # "minMonth":I
    :cond_7
    const/4 v7, 0x0

    .line 610
    .restart local v7    # "minMonth":I
    const/16 v4, 0xb

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 642
    .restart local v0    # "diffMonth":I
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 643
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 644
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 645
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 647
    .restart local v3    # "maxDay":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v9, :cond_3

    .line 648
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 649
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 648
    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v3

    goto/16 :goto_1

    .line 652
    .end local v3    # "maxDay":I
    .end local v6    # "minDay":I
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_a

    .line 653
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_a

    .line 654
    const/4 v6, 0x1

    .line 655
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .restart local v3    # "maxDay":I
    goto/16 :goto_1

    .line 657
    .end local v3    # "maxDay":I
    .end local v6    # "minDay":I
    :cond_a
    const/4 v6, 0x1

    .line 658
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 660
    .restart local v3    # "maxDay":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v9, :cond_3

    .line 661
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 662
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 661
    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v3

    goto/16 :goto_1

    .line 677
    .end local v0    # "diffMonth":I
    .end local v1    # "diffYear":I
    .end local v3    # "maxDay":I
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v6    # "minDay":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 678
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 680
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 681
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    .line 680
    invoke-static {v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 684
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 685
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 690
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 692
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 693
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 576
    :cond_d
    return-void

    .line 687
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    goto :goto_2
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
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
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1240
    if-nez p1, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1247
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1252
    if-nez p1, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1254
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1256
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1259
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .prologue
    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    .line 338
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 339
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .line 336
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 407
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 405
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 420
    const/16 v0, 0x14

    .line 422
    .local v0, "flags":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 423
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    .line 422
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    .line 437
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 438
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 439
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 441
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    .line 442
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 454
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 455
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

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 434
    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4
    .param p1, "editTextMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1192
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    .line 1193
    return-void

    .line 1202
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    .line 1203
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1205
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1206
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1207
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1208
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    .line 1209
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1210
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1215
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_2

    .line 1216
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemDatePicker;Z)V

    .line 1191
    :cond_2
    return-void

    .line 1212
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 396
    return-void
.end method

.method public setIsLeapMonth(Z)V
    .locals 0
    .param p1, "isLeapMonth"    # Z

    .prologue
    .line 1309
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 1308
    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 11
    .param p1, "isLunar"    # Z
    .param p2, "isLeapMonth"    # Z
    .param p3, "pathClassLoader"    # Ldalvik/system/PathClassLoader;

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    .line 1265
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 1267
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v7, :cond_2

    .line 1268
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1269
    .local v1, "calendarPkgName":Ljava/lang/String;
    iput-object p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 1271
    const/4 v0, 0x0

    .line 1273
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v4, "com.android.calendar.Feature"

    .line 1274
    .local v4, "featureClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1279
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1280
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return-void

    .line 1275
    .end local v4    # "featureClassName":Ljava/lang/String;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 1276
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return-void

    .line 1284
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "featureClassName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "getSolarLunarTables"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v0, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1285
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    .line 1287
    const/4 v6, 0x0

    .line 1289
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 1290
    .local v2, "converterClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1295
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 1296
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return-void

    .line 1291
    .end local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 1292
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1300
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
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

    .line 1301
    const-string/jumbo v7, "getDayLengthOf"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    .line 1302
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 1301
    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    .line 1305
    .end local v0    # "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "calendarPkgName":Ljava/lang/String;
    .end local v2    # "converterClassName":Ljava/lang/String;
    .end local v4    # "featureClassName":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 1263
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 387
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 382
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 373
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 368
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "picker"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "onEditModeChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    if-nez v0, :cond_0

    .line 1233
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    .line 1235
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .line 1231
    return-void
.end method

.method public setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .line 1167
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x1

    .line 344
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    .line 348
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged()V

    .line 343
    return-void
.end method

.method public updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 745
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 748
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 738
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 751
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 752
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 754
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
