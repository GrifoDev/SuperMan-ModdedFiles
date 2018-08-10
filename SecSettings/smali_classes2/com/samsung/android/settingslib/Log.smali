.class public Lcom/samsung/android/settingslib/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/Log$TraceReflector;
    }
.end annotation


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final LINE_SEP_LEN:I

.field private static sLevel:I

.field private static sStartTime:D

.field private static sTimeBefore:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const-class v0, Lcom/samsung/android/settingslib/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/samsung/android/settingslib/Log;->LINE_SEP_LEN:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/settingslib/Log;->sTimeBefore:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    if-nez p0, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    return-object p0
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settingslib/Log$TraceReflector;->getInstance()Lcom/samsung/android/settingslib/Log$TraceReflector;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/android/settingslib/Log$TraceReflector;->-wrap0(Lcom/samsung/android/settingslib/Log$TraceReflector;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    if-gt v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static end(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/settingslib/Log;->usedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[end]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/settingslib/Log$TraceReflector;->getInstance()Lcom/samsung/android/settingslib/Log$TraceReflector;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/Log$TraceReflector;->-wrap1(Lcom/samsung/android/settingslib/Log$TraceReflector;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setStartTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/samsung/android/settingslib/Log;->sStartTime:D

    return-void
.end method

.method public static start(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/settingslib/Log;->usedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[start]    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static usedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-double v0, v4

    sget-wide v4, Lcom/samsung/android/settingslib/Log;->sStartTime:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/settingslib/Log;->setStartTime()V

    sget-wide v0, Lcom/samsung/android/settingslib/Log;->sStartTime:D

    :cond_0
    sget-wide v4, Lcom/samsung/android/settingslib/Log;->sStartTime:D

    sub-double v4, v0, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double v2, v4, v6

    sput-wide v0, Lcom/samsung/android/settingslib/Log;->sStartTime:D

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " consume time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/samsung/android/settingslib/Log;->sLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/settingslib/Log;->FQCN:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settingslib/Log;->MakeMsg(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
