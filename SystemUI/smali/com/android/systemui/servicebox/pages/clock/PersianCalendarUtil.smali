.class public Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;
.super Ljava/lang/Object;
.source "PersianCalendarUtil.java"


# instance fields
.field private mMonthNames:[Ljava/lang/String;

.field private final mPersianCalendar:Landroid/icu/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "fa_IR@calendar=persian"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mPersianCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mMonthNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateInPersianCalendar()Ljava/lang/String;
    .locals 12

    const/4 v11, 0x0

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mPersianCalendar:Landroid/icu/util/Calendar;

    invoke-virtual {v7, v2}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mPersianCalendar:Landroid/icu/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mPersianCalendar:Landroid/icu/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const-string/jumbo v6, " "

    iget-object v7, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mMonthNames:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-object v6

    :cond_1
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mMonthNames:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_0
    const-string/jumbo v7, "KeyguardClockPage/fa_IR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "date("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") in fa_IR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    const-string/jumbo v7, "fa"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/servicebox/pages/clock/PersianCalendarUtil;->mMonthNames:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
