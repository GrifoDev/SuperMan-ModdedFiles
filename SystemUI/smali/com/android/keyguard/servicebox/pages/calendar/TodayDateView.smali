.class public Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;
.super Landroid/widget/LinearLayout;
.source "TodayDateView.java"


# instance fields
.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayView:Landroid/widget/TextView;

.field private mWeekDayFormatter:Ljava/text/SimpleDateFormat;

.field private mWeekDayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayFormatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private initViews()V
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_today_clock_week_day:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    return-void
.end method

.method private updateDay()V
    .locals 5

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mDayFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->mWeekDayFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->initViews()V

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/calendar/TodayDateView;->updateDay()V

    return-void
.end method
