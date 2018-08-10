.class public Lcom/samsung/android/contextaware/MultiModeContextList;
.super Ljava/lang/Object;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/MultiModeContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/MultiModeContextList;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/android/contextaware/MultiModeContextList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/MultiModeContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final isIncluded(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isMultiModeType(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->-get0(Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;

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
