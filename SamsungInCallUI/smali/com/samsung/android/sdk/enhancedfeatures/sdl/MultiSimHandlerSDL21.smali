.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;
.super Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;


# instance fields
.field private mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

.field private mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

.field private mGetSlotIdRef:Ljava/lang/reflect/Method;

.field private mInitGetActiveSubIdListRef:Z

.field private mInitGetDefaultSubIdRef:Z

.field private mInitGetSlotIdRef:Z

.field private mInitSetDefaultSubIdRef:Z

.field private mSetDefaultSubIdRef:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitSetDefaultSubIdRef:Z

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mSetDefaultSubIdRef:Ljava/lang/reflect/Method;

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActiveSubIdList()[I
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetActiveSubIdListRef:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string v2, "getActiveSubIdList"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveSubIdList(). NoSuchMethodException. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetActiveSubIdListRef:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    array-length v2, v0

    new-array v2, v2, [I

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_4

    aget-wide v4, v0, v3

    long-to-int v4, v4

    aput v4, v2, v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSubIdList(). IllegalAccessException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveSubIdList(). InvocationTargetException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getDefaultSubId(I)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetDefaultSubIdRef:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string v2, "getDefaultSubId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSubId(). NoSuchMethodException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetDefaultSubIdRef:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSubId(). IllegalAccessException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSubId(). InvocationTargetException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getSlotId(I)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitGetSlotIdRef:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string v2, "getSlotId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotId(). NoSuchMethodException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mGetSlotIdRef:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotId(). IllegalAccessException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSlotId(). InvocationTargetException. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setDefaultSubId(II)V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitSetDefaultSubIdRef:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mInitSetDefaultSubIdRef:Z

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const-string v1, "setDefaultSubId"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mSetDefaultSubIdRef:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mSetDefaultSubIdRef:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mSetDefaultSubIdRef:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSubId(). IllegalAccessException. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSubId(). NoSuchMethodException. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSubId(). InvocationTargetException. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
