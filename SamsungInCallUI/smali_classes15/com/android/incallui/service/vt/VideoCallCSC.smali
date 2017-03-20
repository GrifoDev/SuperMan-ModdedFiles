.class Lcom/android/incallui/service/vt/VideoCallCSC;
.super Ljava/lang/Object;
.source "VideoCallCSC.java"


# static fields
.field private static sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;


# instance fields
.field protected CALL_STATE_LABEL:Z

.field protected CAPABILITY:Ljava/lang/String;

.field protected CONFERENCE_ADD_USER:Z

.field protected EARLY_MEDIA:Z

.field protected EPDG_CALL:Z

.field protected HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

.field protected IMS_VERSION:Ljava/lang/String;

.field protected PRIVACY_CAPTURE:Z

.field protected SALES_CODE:Ljava/lang/String;

.field protected SUPPORT_CVO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SALES_CODE:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->IMS_VERSION:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallCSC;->load()V

    .line 57
    return-void
.end method

.method private createSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v2, "feature_fake_operator"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSVT createSalesCode set fake sales code  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 78
    :cond_0
    const-string v0, ""

    .line 79
    .local v0, "sales_code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VT_ConfigOpStyleForDependency"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSVT Operator dependendy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    .line 81
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "temp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method protected static forceUpdate()Lcom/android/incallui/service/vt/VideoCallCSC;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "Forecely update VideoCallCSC"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCSC;->load()V

    .line 52
    :goto_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-object v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallCSC;->getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;

    goto :goto_0
.end method

.method protected static getInstance()Lcom/android/incallui/service/vt/VideoCallCSC;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "Create VideoCallCSC"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->csc(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/android/incallui/service/vt/VideoCallCSC;

    invoke-direct {v0}, Lcom/android/incallui/service/vt/VideoCallCSC;-><init>()V

    sput-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/incallui/service/vt/VideoCallCSC;->sInstance:Lcom/android/incallui/service/vt/VideoCallCSC;

    return-object v0
.end method

.method private load()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallCSC;->createSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SALES_CODE:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_FrameworkVersion"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->IMS_VERSION:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupportCvo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->SUPPORT_CVO:Z

    .line 63
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupportGroupCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CONFERENCE_ADD_USER:Z

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigRingbackTone"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EARLY_MEDIA:Z

    .line 65
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigOpStyleForHandoverNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->HANDOVER_NOTIFICATION_TYPE:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigOpStyleForCallStateLabel"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CALL_STATE_LABEL:Z

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_SupprotEpdgCallGuideBanner"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->EPDG_CALL:Z

    .line 68
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->PRIVACY_CAPTURE:Z

    .line 69
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigCapability"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/service/vt/VideoCallCSC;->CAPABILITY:Ljava/lang/String;

    .line 70
    return-void
.end method
