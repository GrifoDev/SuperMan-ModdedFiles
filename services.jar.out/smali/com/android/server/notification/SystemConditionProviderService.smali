.class public abstract Lcom/android/server/notification/SystemConditionProviderService;
.super Landroid/service/notification/ConditionProviderService;
.source "SystemConditionProviderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    return-void
.end method

.method protected static dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V
    .locals 4

    const-string/jumbo v0, "      "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    const-string/jumbo v0, "%s, in %s, now=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sub-long v2, p2, p4

    invoke-static {v2, v3}, Lcom/android/server/notification/SystemConditionProviderService;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Lcom/android/server/notification/SystemConditionProviderService;->ts(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_0
.end method

.method protected static formatDuration(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static ts(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asInterface()Landroid/service/notification/IConditionProvider;
.end method

.method public abstract attachBase(Landroid/content/Context;)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
.end method

.method public abstract getComponent()Landroid/content/ComponentName;
.end method

.method public abstract isValidConditionId(Landroid/net/Uri;)Z
.end method

.method public abstract onBootComplete()V
.end method
