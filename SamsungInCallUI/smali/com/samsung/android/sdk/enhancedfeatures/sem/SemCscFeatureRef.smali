.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/CscFeatureInterface;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.feature.SemCscFeature"

.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSemCscFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

.field private static sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

.field private static sIsCscFreeMessageInited:Z

.field private static sIsCscFreeMessageOn:Z

.field private static sIsCscProfileShareInited:Z

.field private static sIsCscProfileShareSupported:Z

.field private static sIsJpnGalaxyFeature:Z

.field private static sIsJpnGalaxyFeatureInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->mSemCscFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->isSupported:Z

    :try_start_0
    const-string v0, "com.samsung.android.feature.SemCscFeature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageOn:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareSupported:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeatureInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeature:Z

    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->isSupported:Z

    const-string v0, "unsupported"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBoolean: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->isSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_1
    return p2
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->mSemCscFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->mSemCscFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->mSemCscFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->isSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sCscFeatureInstance:Lcom/samsung/android/feature/SemCscFeature;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method


# virtual methods
.method public isCscFreeMessageOn()Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageOn:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "on"

    const-string v1, "CscFeature_Message_ConfigFreeMessage"

    const-string v2, "on"

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageOn:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscFreeMessageOn:Z

    goto :goto_0
.end method

.method public isCscProfileShareSupported()Z
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareSupported:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "CscFeature_Contact_SupportProfileShare"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareSupported:Z

    sput-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsCscProfileShareSupported:Z

    goto :goto_0
.end method

.method public isJpnGalaxyFeature()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeatureInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeature:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    const-string v1, "FALSE"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeature:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeatureInited:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isJpnGalaxyFeature ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemCscFeatureRef;->sIsJpnGalaxyFeature:Z

    goto :goto_0
.end method
