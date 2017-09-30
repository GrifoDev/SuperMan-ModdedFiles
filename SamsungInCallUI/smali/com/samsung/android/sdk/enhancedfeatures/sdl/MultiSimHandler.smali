.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;
.super Ljava/lang/Object;


# static fields
.field protected static sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;


# instance fields
.field private final MULTI_SIM_MANAGER_CLASS_NAME:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected isSupported:Z

.field protected mMultiSimManagerCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.telephony.MultiSimManager"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->MULTI_SIM_MANAGER_CLASS_NAME:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    :try_start_0
    const-string v0, "com.samsung.android.telephony.MultiSimManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->mMultiSimManagerCls:Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassNotFoundException. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;
    .locals 3

    const/16 v1, 0x15

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandlerSDL21;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->sMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiSimManager doesn\'t support Android Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActiveSubIdList()[I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSubId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSlotCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    goto :goto_0
.end method

.method public getSimState(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSlotId(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSlotId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNoSIM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/telephony/MultiSimManager;->isNoSIM()Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSubId(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isSupported:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/telephony/MultiSimManager;->setDefaultSubId(II)V

    goto :goto_0
.end method
