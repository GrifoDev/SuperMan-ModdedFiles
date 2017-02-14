.class public Lcn/com/xy/sms/sdk/log/TimeLog;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public currentTime:J

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->currentTime:J

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->currentTime:J

    iget-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->currentTime:J

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->startTime:J

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "timeLog: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->startTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " lastTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->currentTime:J

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iput-wide v0, p0, Lcn/com/xy/sms/sdk/log/TimeLog;->currentTime:J

    return-void
.end method
