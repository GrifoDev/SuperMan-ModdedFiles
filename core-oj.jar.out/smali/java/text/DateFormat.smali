.class public abstract Ljava/text/DateFormat;
.super Ljava/text/Format;
.source "DateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/text/DateFormat$DateFormatGetter;,
        Ljava/text/DateFormat$Field;
    }
.end annotation


# static fields
.field public static final AM_PM_FIELD:I = 0xe

.field public static final DATE_FIELD:I = 0x3

.field public static final DAY_OF_WEEK_FIELD:I = 0x9

.field public static final DAY_OF_WEEK_IN_MONTH_FIELD:I = 0xb

.field public static final DAY_OF_YEAR_FIELD:I = 0xa

.field public static final DEFAULT:I = 0x2

.field public static final ERA_FIELD:I = 0x0

.field public static final FULL:I = 0x0

.field public static final HOUR0_FIELD:I = 0x10

.field public static final HOUR1_FIELD:I = 0xf

.field public static final HOUR_OF_DAY0_FIELD:I = 0x5

.field public static final HOUR_OF_DAY1_FIELD:I = 0x4

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final MILLISECOND_FIELD:I = 0x8

.field public static final MINUTE_FIELD:I = 0x6

.field public static final MONTH_FIELD:I = 0x2

.field public static final SECOND_FIELD:I = 0x7

.field public static final SHORT:I = 0x3

.field public static final TIMEZONE_FIELD:I = 0x11

.field public static final WEEK_OF_MONTH_FIELD:I = 0xd

.field public static final WEEK_OF_YEAR_FIELD:I = 0xc

.field public static final YEAR_FIELD:I = 0x1

.field public static is24Hour:Ljava/lang/Boolean; = null

.field private static final serialVersionUID:J = 0x642ca1e4c22615fcL


# instance fields
.field protected calendar:Ljava/util/Calendar;

.field protected numberFormat:Ljava/text/NumberFormat;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method

.method private static get(IIILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 7
    .param p0, "timeStyle"    # I
    .param p1, "dateStyle"    # I
    .param p2, "flags"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    const/4 v4, 0x3

    .line 752
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_1

    .line 753
    if-ltz p0, :cond_0

    if-le p0, v4, :cond_2

    .line 754
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal time style "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 757
    :cond_1
    const/4 p0, -0x1

    .line 759
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    .line 760
    if-ltz p1, :cond_3

    if-le p1, v4, :cond_5

    .line 761
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal date style "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 764
    :cond_4
    const/4 p1, -0x1

    .line 770
    :cond_5
    :try_start_0
    const-class v3, Ljava/text/spi/DateFormatProvider;

    invoke-static {v3}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v1

    .line 771
    .local v1, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v1}, Lsun/util/LocaleServiceProviderPool;->hasProviders()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 773
    invoke-static {}, Ljava/text/DateFormat$DateFormatGetter;->-get0()Ljava/text/DateFormat$DateFormatGetter;

    move-result-object v3

    .line 772
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 775
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 776
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 777
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 772
    invoke-virtual {v1, v3, p3, v4}, Lsun/util/LocaleServiceProviderPool;->getLocalizedObject(Lsun/util/LocaleServiceProviderPool$LocalizedObjectGetter;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DateFormat;

    .line 778
    .local v2, "providersInstance":Ljava/text/DateFormat;
    if-eqz v2, :cond_6

    .line 779
    return-object v2

    .line 783
    .end local v2    # "providersInstance":Ljava/text/DateFormat;
    :cond_6
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(IILjava/util/Locale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 784
    .end local v1    # "pool":Lsun/util/LocaleServiceProviderPool;
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/util/MissingResourceException;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "M/d/yy h:mm a"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .prologue
    .line 585
    const-class v1, Ljava/text/spi/DateFormatProvider;

    invoke-static {v1}, Lsun/util/LocaleServiceProviderPool;->getPool(Ljava/lang/Class;)Lsun/util/LocaleServiceProviderPool;

    move-result-object v0

    .line 586
    .local v0, "pool":Lsun/util/LocaleServiceProviderPool;
    invoke-virtual {v0}, Lsun/util/LocaleServiceProviderPool;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1

    return-object v1
.end method

.method public static final getDateInstance()Ljava/text/DateFormat;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 483
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v2, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(I)Ljava/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    .prologue
    .line 495
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, p0, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 509
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance()Ljava/text/DateFormat;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 519
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v2, v2, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(II)Ljava/text/DateFormat;
    .locals 2
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I

    .prologue
    .line 534
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, p0, v1, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "dateStyle"    # I
    .param p1, "timeStyle"    # I
    .param p2, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 548
    const/4 v0, 0x3

    invoke-static {p1, p0, v0, p2}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/DateFormat;
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 556
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance()Ljava/text/DateFormat;
    .locals 4

    .prologue
    .line 447
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(I)Ljava/text/DateFormat;
    .locals 3
    .param p0, "style"    # I

    .prologue
    .line 459
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "style"    # I
    .param p1, "aLocale"    # Ljava/util/Locale;

    .prologue
    .line 473
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Ljava/text/DateFormat;->get(IIILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final set24HourTimePref(Z)V
    .locals 1
    .param p0, "is24Hour"    # Z

    .prologue
    .line 566
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Ljava/text/DateFormat;->is24Hour:Ljava/lang/Boolean;

    .line 565
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 733
    invoke-super {p0}, Ljava/text/Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 734
    .local v0, "other":Ljava/text/DateFormat;
    iget-object v1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    iput-object v1, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 735
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/NumberFormat;

    iput-object v1, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 736
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 717
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 718
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/text/DateFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    .line 719
    check-cast v0, Ljava/text/DateFormat;

    .line 721
    .local v0, "other":Ljava/text/DateFormat;
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 722
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 723
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->isLenient()Z

    move-result v2

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 724
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 721
    if-eqz v2, :cond_3

    .line 725
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 720
    :cond_3
    return v1
.end method

.method public final format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 338
    sget-object v1, Ljava/text/DontCareFieldPosition;->INSTANCE:Ljava/text/FieldPosition;

    .line 337
    invoke-virtual {p0, p1, v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 296
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 297
    check-cast p1, Ljava/util/Date;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 298
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 302
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot format given Object as a Date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0}, Ljava/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 355
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 356
    .local v0, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    .line 357
    .local v1, "result":Ljava/util/Date;
    iget v2, v0, Ljava/text/ParsePosition;->index:I

    if-nez v2, :cond_0

    .line 358
    new-instance v2, Ljava/text/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unparseable date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    iget v4, v0, Ljava/text/ParsePosition;->errorIndex:I

    .line 358
    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 360
    :cond_0
    return-object v1
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 416
    invoke-virtual {p0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .prologue
    .line 601
    iput-object p1, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 599
    return-void
.end method

.method public setLenient(Z)V
    .locals 1
    .param p1, "lenient"    # Z

    .prologue
    .line 686
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 684
    return-void
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .prologue
    .line 620
    iput-object p1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 618
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 650
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 648
    return-void
.end method
