.class public Landroid/support/v17/leanback/widget/picker/TimePicker;
.super Landroid/support/v17/leanback/widget/picker/Picker;
.source "TimePicker.java"


# instance fields
.field mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mAmPmSeparatorView:Landroid/view/View;

.field mColAmPmIndex:I

.field mColHourIndex:I

.field mColMinuteIndex:I

.field private final mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

.field private mCurrentAmPmIndex:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mIs24hFormat:Z

.field mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private mPickerView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getTimeConstantInstance(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->timeSeparator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setSeparator(Ljava/lang/CharSequence;)V

    sget v3, Landroid/support/v17/leanback/R$id;->picker:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mPickerView:Landroid/view/ViewGroup;

    sget-object v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_is24HourFormat:I

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbTimePicker_useCurrentTime:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->getTimePickerFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateColumns(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateHourColumn(Z)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v5}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    const/16 v4, 0x3b

    invoke-static {v3, v4}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v5}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v6}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateAmPmColumn()V

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    const/4 v4, 0x0

    invoke-static {v4, v3}, Landroid/support/v17/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setHour(I)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setMinute(I)V

    :cond_0
    return-void
.end method

.method private getTimePickerFormat()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    const-string/jumbo v5, "hma"

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    const/16 v4, 0x61

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    const-string/jumbo v4, "a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "m"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v4, v5, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const-string/jumbo v3, "mh"

    :goto_3
    if-eqz v1, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_4
    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v6, v4}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v4

    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "hm"

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method private updateAmPmColumn()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColumnViews:Ljava/util/List;

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmSeparatorView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColumnViews:Ljava/util/List;

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmSeparatorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    goto :goto_0
.end method

.method private updateColumns(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p1, "hma"

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput v5, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid time picker format."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    new-instance v3, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    goto :goto_1

    :sswitch_2
    new-instance v3, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mConstant:Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setStaticLabels([Ljava/lang/CharSequence;)V

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v6}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-static {v3, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumns(Ljava/util/List;)V

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mPickerView:Landroid/view/ViewGroup;

    iget v4, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mAmPmSeparatorView:Landroid/view/View;

    return-void

    :cond_2
    iget v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x48 -> :sswitch_0
        0x4d -> :sswitch_1
    .end sparse-switch
.end method

.method private updateHourColumn(Z)V
    .locals 2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    :goto_1
    invoke-static {v1, v0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mHourColumn:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnAt(ILandroid/support/v17/leanback/widget/picker/PickerColumn;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    goto :goto_1
.end method

.method private static updateMax(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMaxValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMaxValue(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static updateMin(Landroid/support/v17/leanback/widget/picker/PickerColumn;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->setMinValue(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onColumnValueChanged(II)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    if-ne p1, v0, :cond_1

    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    if-ne p1, v0, :cond_2

    iput p2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid column index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHour(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x17L
        .end annotation
    .end param

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in [0-23] range in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-le v0, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0xc

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/TimePicker;->updateAmPmColumn()V

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    return-void

    :cond_4
    iput v2, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    if-nez v0, :cond_2

    iput v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3bL
        .end annotation
    .end param

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0x3b

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not in [0-59] range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/TimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/TimePicker;->setColumnValue(IIZ)V

    return-void
.end method
