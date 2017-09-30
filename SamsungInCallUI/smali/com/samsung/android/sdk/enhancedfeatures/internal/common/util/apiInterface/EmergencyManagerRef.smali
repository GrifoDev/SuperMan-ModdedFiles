.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sEmergencyManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;

.field private static sEmergencyManagerInstanceInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstanceInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 2

    const-string v0, "Interface SE-SDL"

    const-string v1, "EmergencyManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyManagerRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstanceInited:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlEmergencyManagerRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlEmergencyManagerRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;

    goto :goto_0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstanceInited:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->init()V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyManagerRef;->sEmergencyManagerInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyManagerInterface;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
