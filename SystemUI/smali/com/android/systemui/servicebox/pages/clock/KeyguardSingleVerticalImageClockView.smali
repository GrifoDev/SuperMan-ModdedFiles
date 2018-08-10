.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleVerticalImageClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private DIGITS:[I

.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

.field private mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mHour10th:Landroid/widget/ImageView;

.field private mHour1th:Landroid/widget/ImageView;

.field private mMin10th:Landroid/widget/ImageView;

.field private mMin1th:Landroid/widget/ImageView;

.field private mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeImageSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->DIGITS:[I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f080132
        0x7f080133
        0x7f080134
        0x7f080135
        0x7f080136
        0x7f080137
        0x7f080138
        0x7f080139
        0x7f08013a
        0x7f08013b
    .end array-data
.end method

.method private setDIGITSArrayImage(Landroid/widget/ImageView;I)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->DIGITS:[I

    array-length v1, v2

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->DIGITS:[I

    aget v2, v2, p2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KeyguardSingleVerticalImageClockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->DIGITS:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setHour(ZI)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour1th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour1th:Landroid/widget/ImageView;

    rem-int/lit8 v2, p2, 0xa

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    div-int/lit8 v0, p2, 0xa

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour10th:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mTimeImageSet:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour10th:Landroid/widget/ImageView;

    const v0, 0x7f0a02b1

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mHour1th:Landroid/widget/ImageView;

    const v0, 0x7f0a02b2

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mMin10th:Landroid/widget/ImageView;

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mMin1th:Landroid/widget/ImageView;

    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a02ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v7}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const-string/jumbo v6, "KeyguardSingleVerticalImageClockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refreshTime() min:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hour:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", hour_day:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setHour(ZI)V

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mMin1th:Landroid/widget/ImageView;

    rem-int/lit8 v6, v4, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mMin10th:Landroid/widget/ImageView;

    div-int/lit8 v6, v4, 0xa

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setDIGITSArrayImage(Landroid/widget/ImageView;I)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    move v1, v5

    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->setHour(ZI)V

    goto :goto_0
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mTimeImageSet:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalImageClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method
