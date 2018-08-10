.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Formatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 19

    const-wide/16 v14, 0x0

    cmp-long v13, p1, v14

    if-gez v13, :cond_8

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    move-wide/from16 v0, p1

    neg-long v0, v0

    move-wide/from16 p1, v0

    :cond_0
    move-wide/from16 v0, p1

    long-to-float v3, v0

    const v11, 0x104017a

    const-wide/16 v4, 0x1

    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_1

    const v11, 0x1040485

    const-wide/16 v4, 0x3e8

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v3, v13

    :cond_1
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_2

    const v11, 0x104056a

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v3, v13

    :cond_2
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_3

    const v11, 0x104038b

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v3, v13

    :cond_3
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_4

    const v11, 0x1040a19

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v3, v13

    :cond_4
    const/high16 v13, 0x44610000    # 900.0f

    cmpl-float v13, v3, v13

    if-lez v13, :cond_5

    const v11, 0x1040811

    const-wide/16 v14, 0x3e8

    mul-long/2addr v4, v14

    const/high16 v13, 0x447a0000    # 1000.0f

    div-float/2addr v3, v13

    :cond_5
    const-wide/16 v14, 0x1

    cmp-long v13, v4, v14

    if-eqz v13, :cond_6

    const/high16 v13, 0x42c80000    # 100.0f

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_9

    :cond_6
    const/4 v6, 0x1

    const-string/jumbo v7, "%.0f"

    :goto_1
    if-eqz v2, :cond_7

    neg-float v3, v3

    :cond_7
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    and-int/lit8 v13, p3, 0x2

    if-nez v13, :cond_e

    const-wide/16 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v13, v10, v12, v8, v9}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v13

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_a

    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_1

    :cond_a
    const/high16 v13, 0x41200000    # 10.0f

    cmpg-float v13, v3, v13

    if-gez v13, :cond_c

    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_b

    const/16 v6, 0xa

    const-string/jumbo v7, "%.1f"

    goto :goto_1

    :cond_b
    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_1

    :cond_c
    and-int/lit8 v13, p3, 0x1

    if-eqz v13, :cond_d

    const/4 v6, 0x1

    const-string/jumbo v7, "%.0f"

    goto :goto_1

    :cond_d
    const/16 v6, 0x64

    const-string/jumbo v7, "%.2f"

    goto :goto_1

    :cond_e
    int-to-float v13, v6

    mul-float/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-long v14, v13

    mul-long/2addr v14, v4

    int-to-long v0, v6

    move-wide/from16 v16, v0

    div-long v8, v14, v16

    goto :goto_2
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v3}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x1040358

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/32 v6, 0x15180

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    const-wide/32 v6, 0x15180

    div-long v6, v4, v6

    long-to-int v0, v6

    const v6, 0x15180

    mul-int/2addr v6, v0

    int-to-long v6, v6

    sub-long/2addr v4, v6

    :cond_0
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    :cond_1
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    :cond_2
    long-to-int v3, v4

    const/4 v6, 0x2

    if-lt v0, v6, :cond_3

    add-int/lit8 v6, v1, 0xc

    div-int/lit8 v6, v6, 0x18

    add-int/2addr v0, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402e0

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    if-lez v0, :cond_5

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402de

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402df

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_5
    const/4 v6, 0x2

    if-lt v1, v6, :cond_6

    add-int/lit8 v6, v2, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v1, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402e3

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_6
    if-lez v1, :cond_8

    const/4 v6, 0x1

    if-ne v2, v6, :cond_7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402e1

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_7
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402e2

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_8
    const/4 v6, 0x2

    if-lt v2, v6, :cond_9

    add-int/lit8 v6, v3, 0x1e

    div-int/lit8 v6, v6, 0x3c

    add-int/2addr v2, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402e7

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_9
    if-lez v2, :cond_b

    const/4 v6, 0x1

    if-ne v3, v6, :cond_a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402e5

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_a
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x10402e6

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_b
    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402e8

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_c
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x10402e9

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    const-wide/16 v8, 0x1

    const-wide/32 v6, 0xea60

    const/4 v5, 0x1

    const/4 v4, 0x0

    add-long v2, p1, v6

    sub-long/2addr v2, v8

    div-long v0, v2, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x10402e7

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    cmp-long v2, v0, v8

    if-nez v2, :cond_1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x10402e4

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    mul-long v2, v0, v6

    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, p2, v4}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v2, v1, v4

    const v2, 0x1040358

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/format/Formatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
