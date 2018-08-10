.class public Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;
.super Landroid/widget/LinearLayout;
.source "TodayDateView.java"


# instance fields
.field private mDayView:Landroid/widget/TextView;

.field private mWeekDayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private initViews()V
    .locals 3

    const v0, 0x7f0a04ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    const v0, 0x7f0a04af

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    sget-object v1, Lcom/android/systemui/Rune;->KEYWI_VALUE_CLOCK_FONT_STYLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->initViews()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->updateDay()V

    return-void
.end method

.method public updateDay()V
    .locals 6

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "EEEE"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
