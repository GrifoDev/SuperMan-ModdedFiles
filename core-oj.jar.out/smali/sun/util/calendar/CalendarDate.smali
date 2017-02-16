.class public abstract Lsun/util/calendar/CalendarDate;
.super Ljava/lang/Object;
.source "CalendarDate.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FIELD_UNDEFINED:I = -0x80000000

.field public static final TIME_UNDEFINED:J = -0x8000000000000000L


# instance fields
.field private dayOfMonth:I

.field private dayOfWeek:I

.field private daylightSaving:I

.field private era:Lsun/util/calendar/Era;

.field private forceStandardTime:Z

.field private fraction:J

.field private hours:I

.field private leapYear:Z

.field private locale:Ljava/util/Locale;

.field private millis:I

.field private minutes:I

.field private month:I

.field private normalized:Z

.field private seconds:I

.field private year:I

.field private zoneOffset:I

.field private zoneinfo:Ljava/util/TimeZone;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/util/calendar/CalendarDate;-><init>(Ljava/util/TimeZone;)V

    .line 89
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 94
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    .line 93
    return-void
.end method


# virtual methods
.method public addDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 314
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 315
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 316
    return-object p0
.end method

.method public addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    .line 200
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 202
    :cond_0
    return-object p0
.end method

.method public addHours(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    .line 233
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 235
    :cond_0
    return-object p0
.end method

.method public addMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    .line 293
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 295
    :cond_0
    return-object p0
.end method

.method public addMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    .line 253
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 255
    :cond_0
    return-object p0
.end method

.method public addMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    .line 180
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 182
    :cond_0
    return-object p0
.end method

.method public addSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p1, :cond_0

    .line 272
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    .line 273
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 275
    :cond_0
    return-object p0
.end method

.method public addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 329
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->addMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 330
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->addSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 331
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->addMillis(I)Lsun/util/calendar/CalendarDate;

    .line 332
    return-object p0
.end method

.method public addYear(I)Lsun/util/calendar/CalendarDate;
    .locals 2
    .param p1, "n"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    .line 137
    iput-boolean v1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 139
    :cond_0
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 435
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 385
    instance-of v5, p1, Lsun/util/calendar/CalendarDate;

    if-nez v5, :cond_0

    .line 386
    return v4

    :cond_0
    move-object v1, p1

    .line 388
    check-cast v1, Lsun/util/calendar/CalendarDate;

    .line 389
    .local v1, "that":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v5

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v6

    if-eq v5, v6, :cond_1

    .line 390
    return v4

    .line 392
    :cond_1
    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 393
    .local v0, "hasZone":Z
    :goto_0
    iget-object v5, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v5, :cond_3

    move v2, v3

    .line 394
    .local v2, "thatHasZone":Z
    :goto_1
    if-eq v0, v2, :cond_4

    .line 395
    return v4

    .line 392
    .end local v0    # "hasZone":Z
    .end local v2    # "thatHasZone":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasZone":Z
    goto :goto_0

    :cond_3
    move v2, v4

    .line 393
    goto :goto_1

    .line 397
    .restart local v2    # "thatHasZone":Z
    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    iget-object v6, v1, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 400
    :cond_5
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v5

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 401
    iget v5, p0, Lsun/util/calendar/CalendarDate;->year:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->year:I

    if-ne v5, v6, :cond_8

    .line 402
    iget v5, p0, Lsun/util/calendar/CalendarDate;->month:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->month:I

    if-ne v5, v6, :cond_8

    .line 403
    iget v5, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-ne v5, v6, :cond_8

    .line 404
    iget v5, p0, Lsun/util/calendar/CalendarDate;->hours:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->hours:I

    if-ne v5, v6, :cond_8

    .line 405
    iget v5, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->minutes:I

    if-ne v5, v6, :cond_8

    .line 406
    iget v5, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->seconds:I

    if-ne v5, v6, :cond_8

    .line 407
    iget v5, p0, Lsun/util/calendar/CalendarDate;->millis:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->millis:I

    if-ne v5, v6, :cond_8

    .line 408
    iget v5, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    iget v6, v1, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-ne v5, v6, :cond_7

    .line 400
    :goto_2
    return v3

    .line 398
    :cond_6
    return v4

    :cond_7
    move v3, v4

    .line 408
    goto :goto_2

    :cond_8
    move v3, v4

    .line 400
    goto :goto_2
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    return v0
.end method

.method public getDayOfWeek()I
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/high16 v0, -0x80000000

    iput v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 215
    :cond_0
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    return v0
.end method

.method public getDaylightSaving()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    return v0
.end method

.method public getEra()Lsun/util/calendar/Era;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    return-object v0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    return v0
.end method

.method public getMillis()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    return v0
.end method

.method public getTimeOfDay()J
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 299
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iput-wide v2, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v2

    .line 302
    :cond_0
    iget-wide v0, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    return v0
.end method

.method public getZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getZoneOffset()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    return v0
.end method

.method public hashCode()I
    .locals 12

    .prologue
    const-wide/16 v10, 0x3c

    .line 414
    iget v6, p0, Lsun/util/calendar/CalendarDate;->year:I

    int-to-long v6, v6

    const-wide/16 v8, 0x7b2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->month:I

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1e

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x18

    mul-long v2, v6, v8

    .line 415
    .local v2, "hash":J
    iget v6, p0, Lsun/util/calendar/CalendarDate;->hours:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    mul-long/2addr v6, v10

    iget v8, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    mul-long/2addr v6, v10

    iget v8, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget v8, p0, Lsun/util/calendar/CalendarDate;->millis:I

    int-to-long v8, v8

    add-long v2, v6, v8

    .line 416
    iget v6, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    int-to-long v6, v6

    sub-long/2addr v2, v6

    .line 417
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 418
    .local v4, "normalized":I
    :goto_0
    const/4 v1, 0x0

    .line 419
    .local v1, "era":I
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 420
    .local v0, "e":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Lsun/util/calendar/Era;->hashCode()I

    move-result v1

    .line 423
    :cond_0
    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    invoke-virtual {v6}, Ljava/util/TimeZone;->hashCode()I

    move-result v5

    .line 424
    .local v5, "zone":I
    :goto_1
    long-to-int v6, v2

    const/16 v7, 0x20

    shr-long v8, v2, v7

    long-to-int v7, v8

    mul-int/2addr v6, v7

    xor-int/2addr v6, v1

    xor-int/2addr v6, v4

    xor-int/2addr v6, v5

    return v6

    .line 417
    .end local v0    # "e":Lsun/util/calendar/Era;
    .end local v1    # "era":I
    .end local v4    # "normalized":I
    .end local v5    # "zone":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "normalized":I
    goto :goto_0

    .line 423
    .restart local v0    # "e":Lsun/util/calendar/Era;
    .restart local v1    # "era":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isDaylightTime()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    return v0

    .line 356
    :cond_0
    iget v1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    return v0
.end method

.method public isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfWeek()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 381
    invoke-virtual {p0}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 378
    :cond_0
    return v0
.end method

.method public isStandardTime()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    return v0
.end method

.method public setDate(III)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 307
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 308
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 309
    return-object p0
.end method

.method public setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "date"    # I

    .prologue
    .line 190
    iget v0, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    if-eq v0, p1, :cond_0

    .line 191
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 194
    :cond_0
    return-object p0
.end method

.method protected setDayOfWeek(I)V
    .locals 0
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 483
    iput p1, p0, Lsun/util/calendar/CalendarDate;->dayOfWeek:I

    .line 482
    return-void
.end method

.method protected setDaylightSaving(I)V
    .locals 0
    .param p1, "daylightSaving"    # I

    .prologue
    .line 503
    iput p1, p0, Lsun/util/calendar/CalendarDate;->daylightSaving:I

    .line 502
    return-void
.end method

.method public setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 114
    iget-object v0, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    if-ne v0, p1, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->era:Lsun/util/calendar/Era;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 119
    return-object p0
.end method

.method public setHours(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "hours"    # I

    .prologue
    .line 223
    iget v0, p0, Lsun/util/calendar/CalendarDate;->hours:I

    if-eq v0, p1, :cond_0

    .line 224
    iput p1, p0, Lsun/util/calendar/CalendarDate;->hours:I

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 227
    :cond_0
    return-object p0
.end method

.method setLeapYear(Z)V
    .locals 0
    .param p1, "leapYear"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->leapYear:Z

    .line 161
    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 360
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->locale:Ljava/util/Locale;

    .line 359
    return-void
.end method

.method public setMillis(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 283
    iget v0, p0, Lsun/util/calendar/CalendarDate;->millis:I

    if-eq v0, p1, :cond_0

    .line 284
    iput p1, p0, Lsun/util/calendar/CalendarDate;->millis:I

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 287
    :cond_0
    return-object p0
.end method

.method public setMinutes(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "minutes"    # I

    .prologue
    .line 243
    iget v0, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    if-eq v0, p1, :cond_0

    .line 244
    iput p1, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 247
    :cond_0
    return-object p0
.end method

.method public setMonth(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 170
    iget v0, p0, Lsun/util/calendar/CalendarDate;->month:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lsun/util/calendar/CalendarDate;->month:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 174
    :cond_0
    return-object p0
.end method

.method protected setNormalized(Z)V
    .locals 0
    .param p1, "normalized"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 486
    return-void
.end method

.method public setSeconds(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 263
    iget v0, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    if-eq v0, p1, :cond_0

    .line 264
    iput p1, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 267
    :cond_0
    return-object p0
.end method

.method public setStandardTime(Z)V
    .locals 0
    .param p1, "standardTime"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lsun/util/calendar/CalendarDate;->forceStandardTime:Z

    .line 348
    return-void
.end method

.method public setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 321
    invoke-virtual {p0, p2}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 322
    invoke-virtual {p0, p3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 323
    invoke-virtual {p0, p4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 324
    return-object p0
.end method

.method protected setTimeOfDay(J)V
    .locals 1
    .param p1, "fraction"    # J

    .prologue
    .line 336
    iput-wide p1, p0, Lsun/util/calendar/CalendarDate;->fraction:J

    .line 335
    return-void
.end method

.method public setYear(I)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 127
    iget v0, p0, Lsun/util/calendar/CalendarDate;->year:I

    if-eq v0, p1, :cond_0

    .line 128
    iput p1, p0, Lsun/util/calendar/CalendarDate;->year:I

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/util/calendar/CalendarDate;->normalized:Z

    .line 131
    :cond_0
    return-object p0
.end method

.method public setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 0
    .param p1, "zoneinfo"    # Ljava/util/TimeZone;

    .prologue
    .line 368
    iput-object p1, p0, Lsun/util/calendar/CalendarDate;->zoneinfo:Ljava/util/TimeZone;

    .line 369
    return-object p0
.end method

.method protected setZoneOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 495
    iput p1, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    .line 494
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/4 v5, 0x2

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lsun/util/calendar/CalendarDate;->year:I

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    iget v3, p0, Lsun/util/calendar/CalendarDate;->month:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 455
    iget v3, p0, Lsun/util/calendar/CalendarDate;->dayOfMonth:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    iget v3, p0, Lsun/util/calendar/CalendarDate;->hours:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 457
    iget v3, p0, Lsun/util/calendar/CalendarDate;->minutes:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    iget v3, p0, Lsun/util/calendar/CalendarDate;->seconds:I

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 459
    iget v3, p0, Lsun/util/calendar/CalendarDate;->millis:I

    const/4 v4, 0x3

    invoke-static {v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 460
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-nez v3, :cond_0

    .line 461
    const/16 v3, 0x5a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 462
    :cond_0
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    .line 465
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    if-lez v3, :cond_1

    .line 466
    iget v0, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    .line 467
    .local v0, "offset":I
    const/16 v2, 0x2b

    .line 472
    .local v2, "sign":C
    :goto_1
    const v3, 0xea60

    div-int/2addr v0, v3

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    div-int/lit8 v3, v0, 0x3c

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 475
    rem-int/lit8 v3, v0, 0x3c

    invoke-static {v1, v3, v5}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 469
    .end local v0    # "offset":I
    .end local v2    # "sign":C
    :cond_1
    iget v3, p0, Lsun/util/calendar/CalendarDate;->zoneOffset:I

    neg-int v0, v3

    .line 470
    .restart local v0    # "offset":I
    const/16 v2, 0x2d

    .restart local v2    # "sign":C
    goto :goto_1

    .line 477
    .end local v0    # "offset":I
    .end local v2    # "sign":C
    :cond_2
    const-string/jumbo v3, " local time"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
