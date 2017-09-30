.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;
.super Ljava/lang/Object;


# static fields
.field public static final SIMSLOT1:I = 0x0

.field public static final SIMSLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

.field private static sMultiSimManagerInstanceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSubIdList(Landroid/content/Context;)[I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getActiveSubIdList()[I

    move-result-object v0

    goto :goto_0
.end method

.method public static getDefaultSubId(Landroid/content/Context;I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getDefaultSubId(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getLine1Number(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimOperator(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimSlotCount(Landroid/content/Context;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getSimSlotCount()I

    move-result v0

    goto :goto_0
.end method

.method public static getSimState(Landroid/content/Context;I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getSimState(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getSlotId(Landroid/content/Context;I)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getSlotId(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "MultiSimManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sem/SemMultiSimManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    goto :goto_0
.end method

.method public static isNoSIM(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiSimManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/MultiSimManagerRef;->sMultiManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;->isNoSIM()Z

    move-result v0

    goto :goto_0
.end method
