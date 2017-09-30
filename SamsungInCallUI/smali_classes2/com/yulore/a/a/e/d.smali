.class public Lcom/yulore/a/a/e/d;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/yulore/a/a/e/d;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/yulore/a/a/e/d;->b:J

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 2

    const-string v0, "Yulore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/4 v0, 0x5

    if-gt p0, v0, :cond_1

    sput p0, Lcom/yulore/a/a/e/d;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "YuloreIVRCommon"

    const-string v1, "Logger level value invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/a/a/e/d;->a:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/yulore/a/a/e/d;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    sget v3, Lcom/yulore/a/a/e/d;->a:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/a/a/e/d;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/a/a/e/d;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/yulore/a/a/e/d;->a:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
