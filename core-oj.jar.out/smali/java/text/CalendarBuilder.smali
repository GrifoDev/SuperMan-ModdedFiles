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

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x24

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 62
    return-void
.end method

.method static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "dayOfWeek"    # I

    .prologue
    const/4 v0, 0x0

    .line 177
    if-lez p0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static toCalendarDayOfWeek(I)I
    .locals 1
    .param p0, "isoDayOfWeek"    # I

    .prologue
    .line 169
    invoke-static {p0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return p0

    .line 173
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
    .param p0, "calendarDayOfWeek"    # I

    .prologue
    .line 165
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
    .param p1, "value"    # I

    .prologue
    .line 82
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x13

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 83
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v1, 0x23

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    .line 84
    return-object p0
.end method

.method clear(I)Ljava/text/CalendarBuilder;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 95
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 96
    const/4 p1, 0x7

    .line 98
    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    aput v2, v0, p1

    .line 99
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v1, p1, 0x12

    aput v2, v0, v1

    .line 100
    return-object p0
.end method

.method establish(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 9
    .param p1, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v8, 0x23

    const/16 v7, 0x11

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 104
    invoke-virtual {p0, v7}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v6, v6, v7

    iget-object v7, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v7, v7, v5

    if-le v6, v7, :cond_0

    move v3, v5

    .line 106
    .local v3, "weekDate":Z
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/Calendar;->isWeekDateSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    .end local v3    # "weekDate":Z
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 117
    const/4 v2, 0x2

    .local v2, "stamp":I
    :goto_1
    iget v5, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    if-ge v2, v5, :cond_6

    .line 118
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    iget v5, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-gt v1, v5, :cond_2

    .line 119
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v5, v5, v1

    if-ne v5, v2, :cond_5

    .line 120
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v6, v1, 0x12

    aget v5, v5, v6

    invoke-virtual {p1, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "index":I
    .end local v2    # "stamp":I
    .restart local v3    # "weekDate":Z
    :cond_3
    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 109
    iget-object v6, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v6, v6, v8

    invoke-virtual {p0, v5, v6}, Ljava/text/CalendarBuilder;->set(II)Ljava/text/CalendarBuilder;

    .line 111
    :cond_4
    const/4 v3, 0x0

    .local v3, "weekDate":Z
    goto :goto_0

    .line 118
    .end local v3    # "weekDate":Z
    .restart local v1    # "index":I
    .restart local v2    # "stamp":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    .end local v1    # "index":I
    :cond_6
    if-eqz v3, :cond_9

    .line 127
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v6, 0x15

    aget v4, v5, v6

    .line 128
    .local v4, "weekOfYear":I
    :goto_3
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 129
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    const/16 v6, 0x19

    aget v0, v5, v6

    .line 130
    .local v0, "dayOfWeek":I
    :goto_4
    invoke-static {v0}, Ljava/text/CalendarBuilder;->isValidDayOfWeek(I)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p1}, Ljava/util/Calendar;->isLenient()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 131
    const/16 v5, 0x8

    if-lt v0, v5, :cond_c

    .line 132
    add-int/lit8 v0, v0, -0x1

    .line 133
    div-int/lit8 v5, v0, 0x7

    add-int/2addr v4, v5

    .line 134
    rem-int/lit8 v5, v0, 0x7

    add-int/lit8 v0, v5, 0x1

    .line 141
    :cond_7
    invoke-static {v0}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result v0

    .line 143
    :cond_8
    iget-object v5, p0, Ljava/text/CalendarBuilder;->field:[I

    aget v5, v5, v8

    invoke-virtual {p1, v5, v4, v0}, Ljava/util/Calendar;->setWeekDate(III)V

    .line 145
    .end local v0    # "dayOfWeek":I
    .end local v4    # "weekOfYear":I
    :cond_9
    return-object p1

    .line 127
    :cond_a
    const/4 v4, 0x1

    .restart local v4    # "weekOfYear":I
    goto :goto_3

    .line 129
    :cond_b
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_4

    .line 136
    .restart local v0    # "dayOfWeek":I
    :cond_c
    :goto_5
    if-gtz v0, :cond_7

    .line 137
    add-int/lit8 v0, v0, 0x7

    .line 138
    add-int/lit8 v4, v4, -0x1

    goto :goto_5
.end method

.method isSet(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 88
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 89
    const/4 p1, 0x7

    .line 91
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
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 69
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 70
    const/4 p1, 0x7

    .line 71
    invoke-static {p2}, Ljava/text/CalendarBuilder;->toCalendarDayOfWeek(I)I

    move-result p2

    .line 73
    :cond_0
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    iget v1, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/text/CalendarBuilder;->nextStamp:I

    aput v1, v0, p1

    .line 74
    iget-object v0, p0, Ljava/text/CalendarBuilder;->field:[I

    add-int/lit8 v1, p1, 0x12

    aput p2, v0, v1

    .line 75
    iget v0, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    if-le p1, v0, :cond_1

    const/16 v0, 0x11

    if-ge p1, v0, :cond_1

    .line 76
    iput p1, p0, Ljava/text/CalendarBuilder;->maxFieldIndex:I

    .line 78
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x2c

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "CalendarBuilder:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Ljava/text/CalendarBuilder;->field:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 152
    invoke-virtual {p0, v0}, Ljava/text/CalendarBuilder;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
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

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 157
    .local v1, "lastIndex":I
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    :cond_2
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
