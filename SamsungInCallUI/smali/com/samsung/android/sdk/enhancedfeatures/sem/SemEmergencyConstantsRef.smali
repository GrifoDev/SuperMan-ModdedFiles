.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/EmergencyConstantsInterface;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.emergencymode.SemEmergencyConstants"

.field public static EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field public static MODE_DISABLED:I

.field public static MODE_ENABLING:I

.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSemEmergencyConstantsRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->isSupported:Z

    :try_start_0
    const-string v0, "com.samsung.android.emergencymode.SemEmergencyConstants"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->initValues()V

    return-void

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->isSupported:Z

    const-string v0, "class not found, use default value : "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->mSemEmergencyConstantsRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->mSemEmergencyConstantsRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->mSemEmergencyConstantsRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;

    return-object v0
.end method

.method private static initValues()V
    .locals 4

    const/4 v3, 0x5

    const/4 v2, 0x2

    const-string v0, "initValues"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->isSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_ENABLING:I

    sput v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_DISABLED:I

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_ENABLING:I

    sput v3, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_DISABLED:I

    goto :goto_0
.end method


# virtual methods
.method public getEmergencyStateChanged()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method public getModeDisabled()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_DISABLED:I

    return v0
.end method

.method public getModeEnabling()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemEmergencyConstantsRef;->MODE_ENABLING:I

    return v0
.end method
