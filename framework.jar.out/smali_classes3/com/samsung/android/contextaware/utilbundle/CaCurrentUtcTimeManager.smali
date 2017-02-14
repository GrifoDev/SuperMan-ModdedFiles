.class public Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
.super Ljava/lang/Object;
.source "CaCurrentUtcTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getUtcTime()[I
    .locals 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    const-string/jumbo v2, "GMT+00:00"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v1, v2, [I

    iget v2, v0, Landroid/text/format/Time;->hour:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->minute:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, v0, Landroid/text/format/Time;->second:I

    const/4 v3, 0x2

    aput v2, v1, v3

    return-object v1
.end method
