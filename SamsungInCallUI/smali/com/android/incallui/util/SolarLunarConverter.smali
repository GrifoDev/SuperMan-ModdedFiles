.class public final Lcom/android/incallui/util/SolarLunarConverter;
.super Ljava/lang/Object;


# static fields
.field private static final LUNAR_END_YEAR:I = 0x834

.field private static final LUNAR_START_YEAR:I = 0x759

.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private isLeapMonth_:Z

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xd

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/util/SolarLunarConverter;->acmDaysInYear_:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/util/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
        0x16e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccumulatedDays(I)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/SolarLunarConverter;->acmDaysInLeapYear_:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/util/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method public static getWeekday(III)I
    .locals 2

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isLeapYear(I)Z
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 11

    const/16 v1, 0x16d

    const/16 v10, 0x1e

    const/16 v4, 0xc

    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_lunar_birthday_for_vi"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/util/SolarLunarConverter;->convertLunarToSolar_CHN(IIIZ)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x759

    if-lt p1, v0, :cond_2

    const/16 v0, 0x834

    if-gt p1, v0, :cond_2

    if-ltz p2, :cond_2

    const/16 v0, 0xb

    if-gt p2, v0, :cond_2

    if-lt p3, v9, :cond_2

    if-le p3, v10, :cond_3

    if-nez p4, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v5

    add-int/lit16 v0, p1, -0x759

    mul-int/lit8 v6, v0, 0xe

    sget-object v2, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v2, v0

    sget-object v2, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int/lit8 v7, v6, 0xd

    aget-byte v7, v2, v7

    const/16 v2, 0x7f

    if-ne v7, v2, :cond_4

    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_5

    move v2, v3

    :goto_2
    if-ge v2, p2, :cond_8

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int v7, v6, v2

    aget-byte v4, v4, v7

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_2

    :cond_4
    const/16 v2, 0xd

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    add-int/lit8 v2, p2, 0x1

    if-ne v2, v7, :cond_6

    move v2, v3

    :goto_3
    if-ge v2, v7, :cond_8

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int v8, v6, v2

    aget-byte v4, v4, v8

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v2, p2, 0x1

    if-le v2, v7, :cond_7

    add-int/lit8 p2, p2, 0x1

    :cond_7
    move v2, v3

    :goto_4
    if-ge v2, p2, :cond_8

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int v7, v6, v2

    aget-byte v4, v4, v7

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_4

    :cond_8
    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x759

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v10, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    const/16 v2, 0x14f

    if-le v0, v2, :cond_c

    const/16 v2, 0x75a

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit16 v0, v0, -0x150

    move v2, v0

    move v0, v1

    :goto_5
    if-lt v2, v0, :cond_a

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    :goto_6
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    if-lt v2, v0, :cond_b

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    goto :goto_6

    :cond_b
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    aget v0, v5, v0

    sub-int v0, v2, v0

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    :cond_c
    if-le v0, v9, :cond_e

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit8 v0, v0, -0x2

    :goto_7
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    if-lt v0, v1, :cond_d

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    goto :goto_7

    :cond_d
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    aget v1, v5, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto/16 :goto_0
.end method

.method public convertLunarToSolar_CHN(IIIZ)V
    .locals 11

    const/16 v1, 0x16d

    const/16 v10, 0x1e

    const/16 v4, 0xc

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x759

    if-lt p1, v0, :cond_0

    const/16 v0, 0x834

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-gt p2, v0, :cond_0

    if-lt p3, v9, :cond_0

    if-le p3, v10, :cond_1

    if-nez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v5

    add-int/lit16 v0, p1, -0x759

    mul-int/lit8 v6, v0, 0xe

    sget-object v2, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDaysCHN:[I

    aget v0, v2, v0

    sget-object v2, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int/lit8 v7, v6, 0xd

    aget-byte v7, v2, v7

    const/16 v2, 0x7f

    if-ne v7, v2, :cond_2

    move v2, v4

    :goto_0
    if-ne v2, v4, :cond_3

    move v2, v3

    :goto_1
    if-ge v2, p2, :cond_6

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int v7, v6, v2

    aget-byte v4, v4, v7

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    :cond_2
    const/16 v2, 0xd

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v2, p2, 0x1

    if-ne v2, v7, :cond_4

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_6

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int v8, v6, v2

    aget-byte v4, v4, v8

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, p2, 0x1

    if-le v2, v7, :cond_5

    add-int/lit8 p2, p2, 0x1

    :cond_5
    move v2, v3

    :goto_3
    if-ge v2, p2, :cond_6

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int v7, v6, v2

    aget-byte v4, v4, v7

    add-int/2addr v4, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_3

    :cond_6
    add-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x759

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v10, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    const/16 v2, 0x14f

    if-le v0, v2, :cond_a

    const/16 v2, 0x75a

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit16 v0, v0, -0x150

    move v2, v0

    move v0, v1

    :goto_4
    if-lt v2, v0, :cond_8

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    invoke-direct {p0, v0}, Lcom/android/incallui/util/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16e

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    :goto_5
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v0, v0, 0x1

    aget v0, v5, v0

    if-lt v2, v0, :cond_9

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    goto :goto_5

    :cond_9
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    aget v0, v5, v0

    sub-int v0, v2, v0

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    :goto_6
    return-void

    :cond_a
    if-le v0, v9, :cond_c

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v9, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit8 v0, v0, -0x2

    :goto_7
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    if-lt v0, v1, :cond_b

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    goto :goto_7

    :cond_b
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    aget v1, v5, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto :goto_6

    :cond_c
    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto :goto_6
.end method

.method public convertSolarToLunar(III)V
    .locals 9

    const/16 v8, 0x76e

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/util/SolarLunarConverter;->convertSolarToLunar_CHN(III)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    const/16 v0, 0x759

    if-lt p1, v0, :cond_3

    const/16 v0, 0x834

    if-gt p1, v0, :cond_3

    if-ltz p2, :cond_3

    const/16 v0, 0xb

    if-gt p2, v0, :cond_3

    if-lt p3, v3, :cond_3

    const/16 v0, 0x1f

    if-le p3, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v0

    add-int/2addr v0, p3

    const v1, 0xa7a5e

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    aget v1, v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    move v0, v3

    :goto_1
    const/16 v1, 0xdd

    if-ge v0, v1, :cond_5

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDays:[I

    aget v4, v4, v0

    if-gt v1, v4, :cond_7

    :cond_5
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v4, v0, 0xe

    add-int/lit16 v1, v0, 0x759

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v5, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v5, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v0, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int/lit8 v1, v4, 0xd

    aget-byte v5, v0, v1

    const/16 v0, 0x7f

    if-ne v5, v0, :cond_8

    const/16 v0, 0xc

    :goto_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_6

    sget-object v6, Lcom/android/incallui/util/SolarLunarTables;->lunar:[B

    add-int v7, v4, v1

    aget-byte v6, v6, v7

    if-ne v5, v1, :cond_9

    iput-boolean v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    :goto_4
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    if-gt v7, v6, :cond_a

    :cond_6
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    if-ge v0, v8, :cond_1

    iput v8, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const/16 v0, 0xd

    goto :goto_2

    :cond_9
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput-boolean v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_4

    :cond_a
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sub-int v6, v7, v6

    iput v6, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public convertSolarToLunar_CHN(III)V
    .locals 9

    const/16 v8, 0x76e

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    const/16 v0, 0x759

    if-lt p1, v0, :cond_0

    const/16 v0, 0x834

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    const/16 v0, 0xb

    if-gt p2, v0, :cond_0

    if-lt p3, v3, :cond_0

    const/16 v0, 0x1f

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v0

    add-int/2addr v0, p3

    const v1, 0xa7a5e

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/android/incallui/util/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    aget v1, v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    move v0, v3

    :goto_0
    const/16 v1, 0xdd

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v4, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDaysCHN:[I

    aget v4, v4, v0

    if-gt v1, v4, :cond_5

    :cond_2
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v4, v0, 0xe

    add-int/lit16 v1, v0, 0x759

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v5, Lcom/android/incallui/util/SolarLunarTables;->accumulatedLunarDaysCHN:[I

    aget v0, v5, v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sget-object v0, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int/lit8 v1, v4, 0xd

    aget-byte v5, v0, v1

    const/16 v0, 0x7f

    if-ne v5, v0, :cond_6

    const/16 v0, 0xc

    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_3

    sget-object v6, Lcom/android/incallui/util/SolarLunarTables;->lunarCHN:[B

    add-int v7, v4, v1

    aget-byte v6, v6, v7

    if-ne v5, v1, :cond_7

    iput-boolean v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    :goto_3
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    if-gt v7, v6, :cond_8

    :cond_3
    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    if-ge v0, v8, :cond_4

    iput v8, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    iput v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput v3, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    goto :goto_1

    :cond_7
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    iput-boolean v2, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_3

    :cond_8
    iget v7, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    sub-int v6, v7, v6

    iput v6, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->month_:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalDaysTo(I)I
    .locals 3

    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v0, v0, 0x190

    add-int/2addr v0, v1

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->year_:I

    return v0
.end method

.method public isFirstLunarDay()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/util/SolarLunarConverter;->day_:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeapMonth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/util/SolarLunarConverter;->isLeapMonth_:Z

    return v0
.end method
