.class public Lcom/samsung/a/a/a/a/h/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)J
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    mul-int/lit8 v2, p0, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/a/a/a/a/h/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/samsung/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(ILjava/lang/Long;)Z
    .locals 4

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
