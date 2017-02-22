.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSingleClockView.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

.field private mDateView:Lcom/android/keyguard/KeyguardTextClock;

.field private mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

.field private mTimeView:Lcom/android/keyguard/KeyguardTextClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView$SettingsObserver;->observe()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    :cond_0
    return-void
.end method

.method static synthetic access$001(Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method HideBarometr()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "barometr_in_lockscreen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->barometr:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->barometr:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HideDigitalClock()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_digital_clock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->hide_clock:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->hide_clock:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HideDigitalData()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_digital_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HideDigitalSec()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_digital_sec"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->hide_sec:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->hide_sec:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo1()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo10()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock9"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo11()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock10"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen10:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen10:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo12()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock11"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen11:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen11:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo13()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock12"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen12:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen12:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo14()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock13"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen13:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen13:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo15()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock14"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen14:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen14:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo16()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock15"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen15:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen15:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo17()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock16"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen16:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen16:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo18()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock17"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen17:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen17:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo2()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo3()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock2"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo4()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock3"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo5()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock4"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo6()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo7()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock6"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo8()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock7"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HidePedo9()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_analog_clock8"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->analog_clock_lockscreen8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HideWeather()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_weather"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->lockweather:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->lockweather:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method HideWeather1()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hide_weather1"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const v2, 0x8

    sget v3, Lcom/android/keyguard/R$id;->lockweather1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x3

    sget v3, Lcom/android/keyguard/R$id;->lockweather1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public changeHourFormat()V
    .locals 0

    return-void
.end method

.method public getClockCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public hangBackgroudImageOnTheClock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->theme_single_textclock_bg_image_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->theme_textclock_bg_image:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_time_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->keyguard_single_shamsi_date_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardTextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setElegantTextHeight(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextClock;->setShowCurrentUserTime(Z)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalClock()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalData()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideDigitalSec()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideBarometr()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo1()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo2()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo3()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo4()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo5()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo6()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo7()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo8()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo9()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo10()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo11()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo12()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo13()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo14()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo15()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo16()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo17()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HidePedo18()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideWeather()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->HideWeather1()V

    return-void
.end method

.method public refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p3}, Lcom/android/keyguard/KeyguardTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_PERSIAN_CALENDAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateShamsiView:Lcom/android/keyguard/KeyguardTextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mPCalUtil:Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/PersianCalendarUtil;->getDateInPersianCalendar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setClockCacheKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextClock;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setDateVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardTextClock;->setVisibility(I)V

    return-void
.end method

.method public updateChildViewsLook()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mDateView:Lcom/android/keyguard/KeyguardTextClock;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardSingleClockView;->mTimeView:Lcom/android/keyguard/KeyguardTextClock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/ViewStyleUtils;->setTextFontEffect(Landroid/widget/TextView;)V

    return-void
.end method
