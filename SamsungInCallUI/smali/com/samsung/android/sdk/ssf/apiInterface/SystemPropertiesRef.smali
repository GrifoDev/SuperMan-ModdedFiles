.class public Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

.field private static sSystemPropertiesInstanceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static init()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/ssf/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemSystemPropertiesRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlSystemPropertiesRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/apiInterface/SystemPropertiesRef;->sSystemPropertiesInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/SystemPropertiesInterface;

    goto :goto_0
.end method
