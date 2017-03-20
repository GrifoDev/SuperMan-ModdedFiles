.class public Lcom/android/incallui/InCallDateUtils;
.super Ljava/lang/Object;
.source "InCallDateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDuration(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    .line 16
    const/4 v3, 0x0

    .line 17
    .local v3, "hours":I
    const/4 v4, 0x0

    .line 18
    .local v4, "minutes":I
    const/4 v6, 0x0

    .line 19
    .local v6, "seconds":I
    const-wide/16 v8, 0x3e8

    div-long v8, p1, v8

    long-to-int v2, v8

    .line 20
    .local v2, "elapsedSeconds":I
    const/16 v7, 0xe10

    if-lt v2, v7, :cond_0

    .line 21
    div-int/lit16 v3, v2, 0xe10

    .line 22
    mul-int/lit16 v7, v3, 0xe10

    sub-int/2addr v2, v7

    .line 24
    :cond_0
    const/16 v7, 0x3c

    if-lt v2, v7, :cond_1

    .line 25
    div-int/lit8 v4, v2, 0x3c

    .line 26
    mul-int/lit8 v7, v4, 0x3c

    sub-int/2addr v2, v7

    .line 28
    :cond_1
    move v6, v2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 31
    .local v5, "res":Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "duration":Ljava/lang/StringBuilder;
    if-lez v3, :cond_2

    .line 34
    const/high16 v7, 0x7f110000

    const/4 v8, 0x1

    :try_start_0
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_2
    if-lez v4, :cond_4

    .line 37
    if-lez v3, :cond_3

    .line 38
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :cond_3
    const v7, 0x7f110001

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_4
    if-lez v6, :cond_7

    .line 43
    if-gtz v3, :cond_5

    if-lez v4, :cond_6

    .line 44
    :cond_5
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    :cond_6
    const v7, 0x7f110002

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v6, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    return-object v7

    .line 48
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    goto :goto_0
.end method
