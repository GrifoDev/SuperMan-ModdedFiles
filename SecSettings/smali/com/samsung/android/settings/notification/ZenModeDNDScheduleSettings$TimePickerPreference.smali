.class Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "ZenModeDNDScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;,
        Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private frag:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

.field private mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->frag:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;)Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->frag:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$TimePickerFragment;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setPersistent(Z)V

    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$1;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private updateSummary()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mHourOfDay:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mMinute:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;

    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mSummaryFormat:I

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->updateSummary()V

    return-void
.end method

.method public setTime(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mCallback:Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mHourOfDay:I

    iput p2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->mMinute:I

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDScheduleSettings$TimePickerPreference;->updateSummary()V

    return-void
.end method
