.class public Lcom/android/settings/display/NightDisplayPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSummary()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    iget-object v5, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    if-eqz v3, :cond_0

    const v5, 0x7f1212f7

    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v3, :cond_3

    const v4, 0x7f1212f5

    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v5, 0x7f1212f3

    goto :goto_0

    :pswitch_1
    if-eqz v3, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/display/NightDisplayPreference;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f1212f6

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/display/NightDisplayPreference;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f1212f2

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    if-eqz v3, :cond_2

    const v5, 0x7f1212f8

    :goto_3
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v5, 0x7f1212f4

    goto :goto_3

    :cond_3
    const v4, 0x7f1212f1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    return-void
.end method

.method public onDetached()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    return-void
.end method
