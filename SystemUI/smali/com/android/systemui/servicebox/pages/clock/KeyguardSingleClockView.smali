.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;
    }
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

.field private mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

.field protected mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field protected mTimeSet:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)Lcom/android/systemui/widget/KeyguardTextClockForUser;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView$1;-><init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method


# virtual methods
.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v1, 0x7f0a02af

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a02ae

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a02b6

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v1, 0x7f0a02ab

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v1, 0x7f0a02b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeSet:Landroid/widget/LinearLayout;

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0a02ad

    invoke-virtual {p0, v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTimeZone(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClock;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v5}, Lcom/android/systemui/widget/KeyguardTextClock;->setAllCaps(Z)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/widget/SystemUITextView;->setAllCaps(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeSet:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setTransitionName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/KeyguardTextClock;->setTransitionName(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/widget/SystemUITextView;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v8, "[^a-zA-Z]"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "[^a-zA-Z]"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v2, v9

    aget-object v1, v2, v10

    aget-object v3, v5, v9

    aget-object v4, v5, v10

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v7}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v8, v7}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v8, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v8, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->updateContentDescription()V

    sget-boolean v8, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v9, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v9}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeSet:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeColonView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
