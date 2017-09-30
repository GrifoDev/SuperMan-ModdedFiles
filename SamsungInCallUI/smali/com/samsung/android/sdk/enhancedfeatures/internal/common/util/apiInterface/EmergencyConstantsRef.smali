.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;
.super Ljava/lang/Object;


# static fields
.field public static EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field public static MODE_DISABLED:I

.field public static MODE_ENABLING:I

.field private static final TAG:Ljava/lang/String;

.field private static sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->TAG:Ljava/lang/String;

    const-string v0, "Interface SE-SDL"

    const-string v1, "EmergencyConstants"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/ApiInterface;->isSemAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->initValues()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlEmergencyConstantsRef;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlEmergencyConstantsRef;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initValues()V
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;->getEmergencyStateChanged()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;->getModeEnabling()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_ENABLING:I

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->sEmergencyConstantsInstance:Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;

    invoke-interface {v0}, Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;->getModeDisabled()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_DISABLED:I

    goto :goto_0
.end method
