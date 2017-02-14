.class public Lcom/samsung/android/contextaware/InterruptModeContextList;
.super Ljava/lang/Object;
.source "InterruptModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/InterruptModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/InterruptModeContextList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/InterruptModeContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/InterruptModeContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final isInterruptModeType(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public final isInterruptModeType(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->-get0(Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
