.class public Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleVerticalClockView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/clock/KeyguardClockBase;


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

.field private mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

.field private mTimeSet:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

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

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/KeyguardTextClockForUser;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    const v0, 0x7f0a02ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a02ad

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setElegantTextHeight(Z)V

    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v6, "[^a-zA-Z]"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "[^a-zA-Z]"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v2, v7

    aget-object v1, v2, v8

    aget-object v3, v5, v7

    aget-object v4, v5, v8

    const-string/jumbo v6, "KK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "K"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "K"

    const-string/jumbo v7, "KK"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const-string/jumbo v6, "KK"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "K"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "K"

    const-string/jumbo v7, "KK"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v6, v0}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v6, v1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v6, v3}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v6, v4}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v6, p3}, Lcom/android/systemui/widget/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->updateContentDescription()V

    sget-boolean v6, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateShamsiView:Lcom/android/systemui/widget/SystemUITextView;

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mPCalUtil:Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v7}, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/widget/SystemUITextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v6, "kk"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "k"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "k"

    const-string/jumbo v7, "kk"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "HH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "H"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "H"

    const-string/jumbo v7, "HH"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "hh"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "h"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "h"

    const-string/jumbo v7, "hh"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "kk"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "k"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "k"

    const-string/jumbo v7, "kk"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v6, "HH"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "H"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "H"

    const-string/jumbo v7, "HH"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v6, "hh"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "h"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "h"

    const-string/jumbo v7, "hh"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setClockVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->setVisibility(I)V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/systemui/widget/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mDateView:Lcom/android/systemui/widget/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/widget/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method protected updateContentDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeSet:Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeHourView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardSingleVerticalClockView;->mTimeMinView:Lcom/android/systemui/widget/KeyguardTextClockForUser;

    invoke-virtual {v2}, Lcom/android/systemui/widget/KeyguardTextClockForUser;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
