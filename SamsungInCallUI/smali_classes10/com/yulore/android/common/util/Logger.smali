.class public Lcom/yulore/android/common/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x4

.field public static final LEVEL_ERROR:I = 0x1

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_VERBOSE:I = 0x5

.field public static final LEVEL_WARN:I = 0x2

.field private static Level:I = 0x0

.field public static final TAG:Ljava/lang/String; = "YuloreIVRCommon"

.field private static mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yulore/android/common/util/Logger;->mTimestamp:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static elapsed(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/yulore/android/common/util/Logger;->mTimestamp:J

    sub-long v2, v0, v4

    sput-wide v0, Lcom/yulore/android/common/util/Logger;->mTimestamp:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Elapsed\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static msgStartTime(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/yulore/android/common/util/Logger;->mTimestamp:J

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Started\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/yulore/android/common/util/Logger;->mTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs print(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    sget v3, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static printArray([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v1, p0

    const-string v2, "---print Array begin---"

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "---end---"

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static printList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "---print List begin---"

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "---end---"

    invoke-static {v2}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDebugMode(ILjava/lang/String;)V
    .locals 2

    const-string v0, "Yulore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    sput p0, Lcom/yulore/android/common/util/Logger;->Level:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "YuloreIVRCommon"

    const-string v1, "Logger level value invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "YuloreIVRCommon"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/android/common/util/Logger;->Level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
