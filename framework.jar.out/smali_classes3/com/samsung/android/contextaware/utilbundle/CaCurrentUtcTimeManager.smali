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
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const-string/jumbo v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v3, 0x3

    new-array v2, v3, [I

    const/4 v1, 0x0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v3, v5, :cond_0

    const/16 v1, 0xc

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    aput v3, v2, v5

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    aput v3, v2, v4

    return-object v2
.end method
