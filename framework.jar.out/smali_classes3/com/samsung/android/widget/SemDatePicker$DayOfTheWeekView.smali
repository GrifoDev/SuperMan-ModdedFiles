.class public Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;
.super Landroid/view/View;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DayOfTheWeekView"
.end annotation


# instance fields
.field private mDayColorSet:[I

.field private mDayLabelCalendar:Ljava/util/Calendar;

.field private mDefaultWeekdayFeatureString:Ljava/lang/String;

.field private mMonthDayLabelPaint:Landroid/graphics/Paint;

.field private mNormalDayTextColor:I

.field private mSaturdayTextColor:I

.field private mSundayTextColor:I

.field private mWeekdayFeatureString:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/widget/SemDatePicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x7

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    const-string/jumbo v3, "XXXXXXR"

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x1060179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    const v3, 0x106017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    const v3, 0x106017b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    const v3, 0x1050300

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Calendar_SetColorOfDays"

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDefaultWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get12(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemDatePicker;->-set1(Lcom/samsung/android/widget/SemDatePicker;I)I

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get11(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v8, v9, 0x3

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get13(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    div-int v2, v9, v10

    const/4 v3, 0x0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mWeekdayFeatureString:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v9, v3, 0x2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    rem-int v4, v9, v10

    const/16 v9, 0x52

    if-ne v5, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSundayTextColor:I

    aput v10, v9, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v9, 0x42

    if-ne v5, v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mSaturdayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    iget v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mNormalDayTextColor:I

    aput v10, v9, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    if-ge v3, v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get42(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    add-int/2addr v9, v3

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    rem-int v0, v9, v10

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get10(Lcom/samsung/android/widget/SemDatePicker;)Ljava/text/SimpleDateFormat;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayLabelCalendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get21(Lcom/samsung/android/widget/SemDatePicker;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v9}, Lcom/samsung/android/widget/SemDatePicker;->-get36(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    sub-int v9, v6, v3

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get37(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    :goto_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mDayColorSet:[I

    aget v10, v10, v0

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v7

    int-to-float v10, v8

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->mMonthDayLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    mul-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v2

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;->this$0:Lcom/samsung/android/widget/SemDatePicker;

    invoke-static {v10}, Lcom/samsung/android/widget/SemDatePicker;->-get37(Lcom/samsung/android/widget/SemDatePicker;)I

    move-result v10

    add-int v7, v9, v10

    goto :goto_3

    :cond_5
    return-void
.end method
