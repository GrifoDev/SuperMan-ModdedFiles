.class public Lmickles/app/aod/mGetAlarmDelta;
.super Landroid/widget/TextView;
.source "mGetAlarmDelta.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field nextAlarm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lmickles/app/aod/mGetAlarmDelta;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmickles/app/aod/mGetAlarmDelta$1;

    invoke-direct {v1, p0, v0}, Lmickles/app/aod/mGetAlarmDelta$1;-><init>(Lmickles/app/aod/mGetAlarmDelta;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmickles/app/aod/mGetAlarmDelta;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lmickles/app/aod/mGetAlarmDelta;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method getAlarmText(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/16 v13, 0xa

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "EE HH:mm"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v10, ""

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :try_start_0
    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11}, Ljava/io/PrintStream;->println()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Date;->getDay()I

    move-result v11

    mul-int/lit8 v11, v11, 0x18

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v12

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v12

    add-int v0, v11, v12

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v11

    mul-int/lit8 v11, v11, 0x18

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v12

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v12

    add-int v9, v11, v12

    if-le v0, v9, :cond_3

    sub-int v6, v0, v9

    :goto_1
    div-int/lit16 v3, v6, 0x5a0

    mul-int/lit16 v11, v3, 0x5a0

    sub-int v11, v6, v11

    div-int/lit8 v4, v11, 0x3c

    mul-int/lit16 v11, v3, 0x5a0

    sub-int v11, v6, v11

    mul-int/lit8 v12, v4, 0x3c

    sub-int v5, v11, v12

    if-lez v3, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-ge v4, v13, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-ge v5, v13, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    add-int/lit16 v11, v0, 0x2760

    sub-int v6, v11, v9

    goto/16 :goto_1
.end method
