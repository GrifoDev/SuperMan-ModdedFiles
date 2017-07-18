.class Ljava/text/CalendarBuilder;
.super Ljava/lang/Object;
.source "CalendarBuilder.java"


# static fields
.field private static final COMPUTED:I = 0x1

.field public static final ISO_DAY_OF_WEEK:I = 0x3e8

.field private static final MAX_FIELD:I = 0x12

.field private static final MINIMUM_USER_STAMP:I = 0x2

.field private static final UNSET:I = 0x0

.field public static final WEEK_YEAR:I = 0x11


# instance fields
.field private final field:[I

.field private maxFieldIndex:I

.field private nextStamp:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/4 v0, 0x2

    iput v0, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    return-void
.end method

.method static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static toCalendarDayOfWeek(I)I
    .locals 1

    invoke-static {p0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method static toISODayOfWeek(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method addYear(I)Ljava/text/CalendarBuilder;
    .locals 3

    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x13

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x23

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method clear(I)Ljava/text/CalendarBuilder;
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    aput v2, v0, p1

    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v1, p1, 0x12

    aput v2, v0, v1

    return-object p0
.end method

.method establish(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 9

    const/16 v8, 0x23

    const/16 v7, 0x11

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v7}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v6, v6, v7

    iget-object v7, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v7, v7, v5

    if-le v6, v7, :cond_0

    move v3, v5

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x2

    :goto_1
    iget v5, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    if-ge v2, v5, :cond_6

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-gt v1, v5, :cond_2

    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_5

    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v6, v1, 0x12

    aget v5, v5, v6

    invoke-virtual {p1, v1, v5}, Ljava/util/Calendar;->set(II)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v6, v6, v8

    invoke-virtual {p0, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_9

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v6, 0x15

    aget v4, v5, v6

    :goto_3
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v6, 0x19

    aget v0, v5, v6

    :goto_4
    invoke-static {v0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Ljava/util/Calendar;->isLenient()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    if-lt v0, v5, :cond_c

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v5, v0, 0x7

    add-int/2addr v4, v5

    rem-int/lit8 v5, v0, 0x7

    add-int/lit8 v0, v5, 0x1

    :cond_7
    invoke-static {v0}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result v0

    :cond_8
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v5, v5, v8

    invoke-virtual {p1, v5, v4, v0}, Ljava/util/Calendar;->setWeekDate(III)V

    :cond_9
    return-object p1

    :cond_a
    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_4

    :cond_c
    :goto_5
    if-gtz v0, :cond_7

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v4, v4, -0x1

    goto :goto_5
.end method

.method isSet(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    const/4 p1, 0x7

    :cond_0
    iget-object v1, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v1, v1, p1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method set(II)Ljava/text/CalendarBuilder;
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    invoke-static {p2}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result p2

    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    iget v1, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    aput v1, v0, p1

    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    iget v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-le p1, v0, :cond_1

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1

    iput p1, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CalendarBuilder:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v5, v0, 0x12

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
